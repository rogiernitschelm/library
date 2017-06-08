## Conditionals

If-statement:

```rust
let x = 5;

if x == 5 {
  println!("x is five!");
} else if x == 6{
  println!("x is six !");
} else {
  println!("x is neither 5 nor 6!");
}

let x = 5;

let y = if x == 5 {
  10
} else {
  15
};

// Short-hand conditional expression

let y = if x == 5 { 10 } else { 15 };
```
