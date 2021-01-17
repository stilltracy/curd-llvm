package main
import(
  "os"
  "fmt"
  "bufio"
  "log"
  "net/smtp"
)

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

func getBufferedWriterToFile( fname string) (* bufio.Writer, * os.File) {
  file, wErr := os.Create( fname )
  check(wErr)
  writer := bufio.NewWriter(file)
  return writer, file
}


func sendEmail(server string, sender string, password string, recipient string, msg string) {
  // Set up authentication information.
  auth := smtp.PlainAuth("", sender, "password", password)

  // Connect to the server, authenticate, set the sender and recipient,
  // and send the email all in one step.
  to := []string{recipient}
  packet := []byte("To: "+recipient+"\r\n" +
    "Subject: Men Sheng Fa Da Cai!\r\n" +
    "\r\n" + msg +
    "\r\n")
  err := smtp.SendMail(server, auth, sender, to, packet)
  if err != nil {
    log.Fatal(err)
    panic("cannot send email")
  }
  fmt.Print("Notification sent to %s.\n", recipient)
}
