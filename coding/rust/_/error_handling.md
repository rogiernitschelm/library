## Error handling

```rust
let guess: u32 = match guess
    .trim()
    .parse() {
        Ok(num) => num,
        Err(_) => continue
    };
```
