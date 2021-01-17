package main
import(
  "os"
  "os/exec"
  "bytes"
  "strconv"
  "regexp"
  "fmt"
  "bufio"
  "io/ioutil"
  "flag"
  //"golang.org/x/crypto/ssh/terminal"
)
func checkFlagArgsNum(expected int) {
  if expected != flag.NArg() {
    fmt.Printf("wrong argument number: expected %v, actual %v\n", expected, flag.NArg())
    panic("R.I.P.")
  }
}
func main(){
  //checkArgsNum(4)

  /* taskList, test harness, outputDir*/
  var harnessCmd string
  var outputDir string
  var repetitions int
  var taskListFileName string
  var needsEmail bool
  var emailAddress string
  flag.StringVar(&harnessCmd, "c","/usr/bin/time -f '%U, %S, %E, %x'", "the harness command to run every test")
  flag.StringVar(&outputDir, "o", "last_test_output", "directory to save the test results")
  flag.IntVar(&repetitions, "r", 1, "how many times each test will be repeated")
  flag.StringVar(&taskListFileName, "t", "task1.list", "name of the file containing directories to be tested")
  flag.BoolVar(&needsEmail, "e", false, "whether to send an email notification after completion")
  flag.StringVar(&emailAddress, "a", "mensheng@fa.dacai", "email address for notification")
  flag.Parse()
  //checkFlagArgsNum(1)
  //taskListFileName := flag.Arg(0)
  fmt.Printf(" Test configuration: to run %v on all binaries specified in %v, repeat each test %v times; save results to %v; send notification to %v.\n",
              harnessCmd, taskListFileName, repetitions, outputDir, emailAddress)
  os.Mkdir(outputDir, 0770)
  for r := 0; r < repetitions; r++{
    fmt.Printf("Iterator %v (out of %v)\n", r, repetitions)
    curOutputDir :=outputDir+"/"+ strconv.Itoa(r)
    os.Mkdir(curOutputDir, 0770)
    failOutputDir := curOutputDir+"/fail"
    successOutputDir := curOutputDir+"/success"
    os.Mkdir(failOutputDir , 0770)
    os.Mkdir(successOutputDir , 0770)
    taskListFile, taskListFileErr := os.Open(taskListFileName)
    check(taskListFileErr)
    defer taskListFile.Close()
    scanner := bufio.NewScanner(taskListFile)
    failedListFile, flErr := os.Create(curOutputDir+"/failedList.txt")
    check(flErr)
    defer failedListFile.Close()
    failedListWriter := bufio.NewWriter(failedListFile)


    tasks:= make([]*exec.Cmd, 0)
    for scanner.Scan(){
	line := scanner.Text()
	re := regexp.MustCompile( "#.*" )
	if re.MatchString( line )  {
		fmt.Printf("Ignored : %v\n", line )
		continue
	}
	fmt.Printf("Probing: %v\n", line)
	re = regexp.MustCompile( ",,")
        argc := 4
	s := re.Split( line, argc )
	if len(s ) != argc{
		fmt.Printf("len(s):%v\n", len(s))	
		break
	}
	dirName := s[0]
	execName := s[1]
	args := s[2]
	environ := s[3]
	/* the owner must be able to run the file*/
	fmt.Printf("Executable found: %v %v %v %v %v|\n", dirName, execName, args, environ, harnessCmd)
	cmd := exec.Command("bash","-c", "cd "+ dirName + "; export " + environ + ";" + harnessCmd + " "+ execName + " " + args)
	outputBuffer := &bytes.Buffer{}
	stderrBuffer := &bytes.Buffer{}
	cmd.Stdout = outputBuffer
	cmd.Stderr = stderrBuffer
	cmdErr := cmd.Start()
	check(cmdErr)
	exitError := cmd.Wait()
	dir := successOutputDir
	if exitError != nil {
		dir = failOutputDir
		/* NB: there may be multiple lines for a directory, if
		  multiple executables were found*/
		failedListWriter.WriteString(execName + "\n")
	}
	expId := dir+"/"+execName +strconv.Itoa(r)
	logErr := ioutil.WriteFile(expId + ".stdout", outputBuffer.Bytes(), 0644)
	check(logErr)
	record := append([]byte(execName+","), stderrBuffer.Bytes()...)
	record = append( []byte("#"+harnessCmd+"\n"), record...)
	logErr = ioutil.WriteFile(expId + ".stderr", record, 0644)
	check(logErr)
	//fmt.Println(string(outputBuffer.Bytes()))
	tasks = append(tasks, cmd)
    }
    failedListWriter.Flush()
    tasksNum := len(tasks)
    fmt.Printf("Executed %v tasks:\n", tasksNum)
    for i:=0; i < tasksNum; i++{
      fmt.Printf("\t%v\n", tasks[i].Args)
    }

  }
}
