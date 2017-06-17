## Options

Creating optionals:
```rust
let number = Some(7);
let other_number: Option<i32> = None;

if let Some(i) = number {
  ...
}
```
