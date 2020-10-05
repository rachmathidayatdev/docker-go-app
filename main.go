package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	// // load .env file
	// err := godotenv.Load(".env")

	// if err != nil {
	// 	log.Fatalf("Error loading .env file")
	// }

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "docker go app "+os.Getenv("NAME"))
	})

	http.ListenAndServe(":8082", nil)
}
