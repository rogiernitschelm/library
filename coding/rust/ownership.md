## Ownership

Ownership:

```rust
fn take_ownership(v: Vec<i32>) {
  // ...
}

let v = vec![1, 2, 3];
take_ownership(v);

for i in v {
  // ...
} // Raises an error, because ownership was passed to take_ownership.
```

Borrowing:

```rust
fn some_func(v: &Vec<i32>) {
  // ...
}

let v1 = vec![1, 2, 3];
some_func(&v1);
```

Mutable reference:

```rust
let mut x = 5;
{
  let y = &mut = x;
  *y += 1;
}

println!("{}", x);
```

Lifetime:

```rust
fn some_func<'a, 'b>(line: &'a strm prefix: &'b str) -> &'a str {
  // ...
}
```

Static:

```rust
let x: &'static str = "Hello, world.";
static CONSTANT: i32 = 5;
let x: &'static i32 = &CONSTANT;
```
