package main
import(
  "os/exec"
  "os"
  "fmt"
  "path/filepath"
  "path"
  "bytes"
  "bufio"
  "regexp"
  "flag"
  "strings"
 // "io"
  //"io/ioutil"
)

func getWalkFunc( makefileName string, results *[]string ) filepath.WalkFunc {
  return func(p string, info os.FileInfo, e error) error{
    if info!= nil && !info.IsDir() && info.Name() == makefileName {
      *results =  append(*results, path.Dir(p))
    }
    return e
  }
}
/*
func check(e error){
  if e!= nil{
    panic(e)
  }
}

func checkArgsNum(n int){
  if len(os.Args) != n {
    fmt.Printf("Wrong number of arguments: expected %v, provided %v\n", n, len(os.Args))
  }
}
*/
func main(){
  //checkArgsNum(4)
  var cmdStr string
  var makefileName string
  var ignorePattern string
  var concurrency int
  flag.StringVar( &cmdStr, "c","make", "cmd to build each subfolder")
  flag.StringVar( &makefileName, "f","Makefile", "name of the build file (e.g. makefile)")
  flag.StringVar( &ignorePattern, "i", "", "regexp specifying what directories should be ignored")
  flag.IntVar( &concurrency, "p", 1, "maximum number of parallel building tasks")
  flag.Parse()
  rootPath := flag.Arg(0)

  fmt.Printf(" executing : %v in each sub-folder of %v containing %v;\n ignoring all folders matching %v, concurrent building %v\n", 
            cmdStr, rootPath, makefileName, ignorePattern, concurrency)
  fmt.Print(" rootPath: |"+ rootPath+"| \n")

  targetDirs :=make([]string, 0)
  walkFunc := getWalkFunc(makefileName, &targetDirs)
  filepath.Walk(rootPath, walkFunc)
  for i:= 0; i < len(targetDirs); i++{
    fmt.Print( targetDirs[i] + "\n")
  }
  filteredTargets := make([]string, 0)
  var IGNORE_REGEX * regexp.Regexp = nil
  if ignorePattern != "" {
    IGNORE_REGEX = regexp.MustCompile(ignorePattern)
  }
  for _, t := range targetDirs {
    if IGNORE_REGEX == nil || !IGNORE_REGEX.MatchString(t) {
      filteredTargets = append(filteredTargets, t)
    }
  }
  targetDirs = filteredTargets
  fmt.Printf("%v targets found.\n", len(targetDirs))

  failListFile, err := os.Create("buildList.fail")
  check(err)
  failsWriter:= bufio.NewWriter(failListFile)
  defer failListFile.Close()
  WARNING_REGEX := regexp.MustCompile(`.*WARNING.*`)
  warningsWriter, warningsFile  := getBufferedWriterToFile("buildList.warn")
  logWriter, logFile       := getBufferedWriterToFile("buildList.log")
  defer warningsFile.Close()
  defer logFile.Close()

  roundsNum := 1 + (len(targetDirs) - 1)/ concurrency
  for round :=0; round < roundsNum; round++{
    fmt.Printf(" round %v (out of %v):\n", round, roundsNum)
    jobs := map[*exec.Cmd]*bytes.Buffer{}
    i:= round * concurrency
    for t := 0; i< len(targetDirs) && t < concurrency; t++{
      cmd := exec.Command("bash", "-c", "cd "+targetDirs[i] +" && "+ cmdStr)
      outputBuffer := &bytes.Buffer{}
      jobs[cmd] = outputBuffer
      cmd.Stdout = outputBuffer
      cmd.Stderr = outputBuffer
      err := cmd.Start()
      check(err)
      i++
    }
    failedTasks := map[*exec.Cmd]error{}
    succeededTasks := make([]*exec.Cmd, 0)
    for c,b := range jobs{
      exitError := c.Wait()
      if exitError != nil{
        //fmt.Print("Error in %v: returns %s\n", c, exitError.Error())
        failedTasks[c] = exitError
        failsWriter.Write(b.Bytes())
      }else{
        succeededTasks = append(succeededTasks, c)
        if WARNING_REGEX.Match(b.Bytes()) {
          warningsWriter.Write(b.Bytes())
        }
        fmt.Print(string(b.Bytes()))
      }
      logWriter.WriteString(strings.Join(c.Args,",")+"\n");
    }

    warningsWriter.Flush()
    failsWriter.Flush()
    logWriter.Flush()
    fmt.Printf("Ran %v jobs, %v errors.\n", len(jobs), len(failedTasks))
    for task, taskError := range failedTasks {
      fmt.Printf("---> Error of %v: %s \n", task.Args, taskError.Error())
    }
    fmt.Print("---> Succeeded tasks:\n")
    for i := 0; i < len(succeededTasks); i++{
      fmt.Printf("%v\n",succeededTasks[i].Args);
    }
  }

}
