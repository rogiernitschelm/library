## Casting

String to number:

```rust
let string = "31";
let number: u32 = string
  .trim()
  .parse()
  .expect("Please insert a number");
```
