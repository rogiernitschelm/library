## Net/http

Http-methods:

```go
resp, err := http.Get("http://example.com")
resp, err := http.Post("http://example.com/upload", "image/jpeg", &buf)
resp, err := http.PostForm("http://example.com/form",
  url.Values{"key": {"value"}, "id": {"123"}})

defer resp.Body.Close()
```

Serving content:

```go
package main

import (
	"fmt"
	"net/http"
	"time"
)

const (
	Port = ":8080"
)

func serveDynamic(w http.ResponseWriter, r *http.Request) {
	response := "The time is now " + time.Now().String()
	fmt.Fprintln(w, response)
}

func serveStatic(w http.ResponseWriter, r *http.Request) {
	http.ServeFile(w, r, "static.html")
}

func main() {
	http.HandleFunc("/static", serveStatic)
	http.HandleFunc("/", serveDynamic)
	http.ListenAndServe(Port, nil)
}
```

Creating a simple server:

```go
func main() {
	http.HandleFunc("/static", serveStatic)
	http.HandleFunc("/", serveDynamic)
	http.ListenAndServe(Port, http.FileServer(http.Dir("/var/www")))
}
```
