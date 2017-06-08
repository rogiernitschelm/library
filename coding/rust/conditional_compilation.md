## Conditional compilation

- windows;
- macos;
- android;
- freebsd;
- bitrig;
- openbsd;

```rust
#[cfg(target_os = "windows")]
fn on_windows() {
  // ...
}
```
