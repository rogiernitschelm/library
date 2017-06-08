## Conditional

if:

```go
if answer != 42 {
  return "Wrong answer"
}

if age == 12 {
  return "Too young"
} else if age == 99 {
  return "Too old"
} else {
  return "You are between 12 and 99 years old"
}
```

Switch:

```go
// Break and fallthrough are possible

switch mins {
	case 0:
		fmt.Println("even")
	case 1:
		fmt.Println("odd")
	}

```
