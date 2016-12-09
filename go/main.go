package main

import (
	"fmt"
	"net"
	"net/http"
	"net/http/fcgi"
)

// Default Request Handler
func defaultHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "<h1>Hello %s!</h1>", r.URL.Path[1:])
}

func main() {
	l, err := net.Listen("tcp", ":9000")
	if err != nil {
		return
	}

	http.HandleFunc("/", defaultHandler)

	fcgi.Serve(l, nil)
}
