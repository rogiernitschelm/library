## Tuples

Creating a tuple:

```rust
let thor = ("Thor", true, 3500u32);
let thor: (&str, bool, u32) = ("Thor", true, 3500u32);
```

Pattern matching:

```rust
let (name, alignment, age) = thor;
```

Accessing elements:
```rust
thor.0 // Thor
thor.1 // true
```
