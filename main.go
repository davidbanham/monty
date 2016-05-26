package main

import (
	"fmt"
	"github.com/davidbanham/required_env"
	"log"
	"net/http"
	"os"
)

func main() {
	required_env.Ensure(map[string]string{"FILES_DIR": "", "PORT": "3000"})

	fs := http.FileServer(http.Dir(os.Getenv("FILES_DIR")))
	http.Handle("/", fs)

	log.Println("Listening...", os.Getenv("PORT"))
	http.ListenAndServe(fmt.Sprintf(":%v", os.Getenv("PORT")), nil)
}
