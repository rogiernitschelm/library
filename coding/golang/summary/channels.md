## Channels

Channels are a typed conduit which you can send and receive values with the
channel operator. <-

```go
func main() {
	c := make(chan int)

	go gimmeBack10(c)

	a := <- c

	fmt.Println(a)
}

func gimmeBack10(c chan int) {
	c <- 10
}
```
