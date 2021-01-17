package main

import(
  "regexp"
  "bufio"
  "os"
  "flag"
  "fmt"
  "strconv"
)

func main(){
  flag.Parse()
  filename_in := flag.Arg(0)
  //fmt.Print(filename_in)
  file_in, err := os.Open(filename_in)
  check(err)
  defer file_in.Close()
  file_out, err2 := os.Create(filename_in+".out")
  check(err2)
  defer file_out.Close()
  writer := bufio.NewWriter(file_out)
  TIME_REGEX := regexp.MustCompile(`([0-9]+:){0,1}([0-9]+):([0-9]+)(\.[0-9]+){0,1}`)
  scanner := bufio.NewScanner(file_in)
  for scanner.Scan(){
    line := scanner.Text()
    newLine := line
    results :=TIME_REGEX.FindStringSubmatch(line)
    if results != nil {
      hoursStr := results[1]
      minutesStr := results[2]
      secondsStr := results[3]
      if len(results) == 5 {
        secondsStr += results[4]
      }
      var hours int = 0
      var minutes int = 0
      var seconds float64 = 0.0
      if hoursStr !="" {
        _, err = fmt.Sscanf(hoursStr, "%d:", &hours)
        check(err)
      }
      minutes, err = strconv.Atoi(minutesStr)
      check(err)
      seconds, err = strconv.ParseFloat(secondsStr, 32)
      check(err)
      seconds += float64(hours * 3600 + minutes * 60)
      secondsStr = strconv.FormatFloat(seconds, 'f', 2, 64)
      newLine = TIME_REGEX.ReplaceAllString(line, secondsStr)
    }
    writer.WriteString(newLine+"\n")
    fmt.Println(newLine)
    fmt.Println("")
  }
  writer.Flush()
}
