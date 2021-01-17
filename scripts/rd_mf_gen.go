package main
import(
  "bufio"
  "fmt"
  "os"
  "regexp"
  "path/filepath"
  "strconv"
  "strings"
)
func check(e error){
  if e!=nil{
    panic(e)
  }
}

func transformLine(line string) string {
  var NVCC_REGEX = regexp.MustCompile(`(NVCC\s*:{0,1}=).*(nvcc\s*.*)`)
  //var CC_REGEX = regexp.MustCompile(`(CC\s*=).*(\s+.*)`)
  var NVCCFLAGS_REGEX  = regexp.MustCompile(`(NVCCFLAGS\s*:=.*)`)
  var SMS_REGEX = regexp.MustCompile(`SMS\s\?=.*`)
  var SM_REGEX = regexp.MustCompile(`SM\s*\:=.*`)
  var REGCOUNT_REGEX = regexp.MustCompile(`REG_COUNT\s*\:=.*`)
  var GENCODE_REGEX = regexp.MustCompile(`GENCODE`)
  var INCLUDES_REGEX = regexp.MustCompile(`(INCLUDES\s*:=.*)`)
  var LDFLAGS_REGEX = regexp.MustCompile(`(LDFLAGS\s*:=.*)`)
  //var LIBRARIES_REGEX = regexp.MustCompile(`(LIBRARIES\s*:=.*)`)
  var DEBUG_MODE_REGEX = regexp.MustCompile(`(.*)\s-G(.*)`)
  var MSFDC_REGEX = regexp.MustCompile(`CURD_DIR\s*:=.*`)
  var HOSTCOMPILER_REGEX = regexp.MustCompile(`(HOST_COMPILER\s*:=).*`)
  rules := map[*regexp.Regexp]string{NVCC_REGEX : `$1 CICC_LIBPATH=$(LIBNVCC_DIR) CICC_MODIFY_UNOPT_MODULE=1 LD_PRELOAD=$(LIBNVCC_DIR)/libnvcc.so nvcc `,
            NVCCFLAGS_REGEX :`$1 -g -lineinfo -v -keep  -maxrregcount=32`,
//            CC_REGEX :`$1 /usr/bin/gcc-4.9`,
            SMS_REGEX : `SMS ?= 35`,
            SM_REGEX : `SM := 35`,
            REGCOUNT_REGEX: `REG_COUNT := 32`,
            GENCODE_REGEX: `GEN_CODE`,
            INCLUDES_REGEX : `$1 -I$(COFFEE_MOCHA_DIR) -I/usr/local/cuda-7.5/include`,
            LDFLAGS_REGEX : `$1 -L/usr/local/cuda-7.5/lib64`,
            HOSTCOMPILER_REGEX : `$1 /usr/bin/g++-4.9`,
//            LIBRARIES_REGEX : `$1 $(COFFEE_MOCHA_DIR)/race_detection.o`,
            MSFDC_REGEX : `CURD_DIR ?= ../../../`,
            DEBUG_MODE_REGEX : `$1 $2`}
  var newLine =strings.Replace(line, "race_detection", "curd_lib", -1)
  newLine = strings.Replace(newLine, "-dr ", " ", -1 )
  newLine = strings.Replace( newLine, "$(P4ROOT)/sw/gpgpu/samples/","/usr/local/cuda/samples/",-1)
  for k,v := range rules {
    if k.MatchString(line) {
      newLine = k.ReplaceAllString(line, v)
      fmt.Print(line + "   ->   " + newLine + "\n")
      break
    }
  }
  return newLine
}

func generateMakefile(in_file_path string, out_file_path string){
  fmt.Print("processing: "+in_file_path+"\n")
  file,err := os.Open(in_file_path)
  check(err)
  defer file.Close()

  output_file, err2:= os.Create(out_file_path)
  check(err2)
  defer output_file.Close()

  writer := bufio.NewWriter(output_file)
  scanner := bufio.NewScanner(file)

  HEADER := "COFFEE_MOCHA_DIR := ../../..\n"
  HEADER = HEADER + "LIBNVCC_DIR ?= /home/acg/nvcc-llvm-ir\n"
  writer.WriteString(HEADER)
  for scanner.Scan(){
    line :=scanner.Text()
    _, err = writer.WriteString(transformLine(line) +"\n")
  }

  writer.Flush()
  err =scanner.Err()
  check(err)
}

func processFile(path string, info os.FileInfo, err error) error{
  if !info.IsDir() && info.Name() == "Makefile"{
    generateMakefile(path, path+".rd.llvm")
  }
  return nil
}
func main(){
  argsNum := len(os.Args)
  fmt.Print( strconv.Itoa(argsNum) + " args\n")
  dirName := "."
  if argsNum > 1 {
    dirName = os.Args[1]
  }
  filepath.Walk(dirName, processFile)
  //generateMakefile("Makefile", "Makefile.rd")
}
