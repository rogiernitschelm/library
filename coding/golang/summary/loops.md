## Loops

For-loop, regular:

```go
for i := 0; i < 5; i++ {
  fmt.Println(i)
}
```

For-loop, range:

```go
for i, element := range array {
  fmt.Println(array[i])
  fmt.Println(element)
}
```

While-like-loop:

```go
j := 0
isLessThanFive := true {
for isLessThanFive {
  if j >= 5 {
    isLessThanFive = false
  }

  fmt.Println(j)
  j++
}
```

Break:

```go
i := 0
for {
  if i >= 5 {
    break
  }

  fmt.Println(i)
  i++
}
```

Continue:

```go
i := 0
for {
  if i <= 5 {
    i++
    continue
  }

  fmt.Println("Last iteration!")
  break

}
```

Infinite:

```go
for {
  doSomethingForever()
}
```
