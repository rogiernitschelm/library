## Testing

Declaring a test function:

```rust
#[test]
fn tester() {
  assert_eq!(6, 2 + 3) // Fails
}
```

Running tests:

```rust
rustc --test program.rs
cargo test
```
