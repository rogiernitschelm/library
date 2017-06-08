## Functions

Main:

```rust
fn main() {
  println!("Hello, world!");
}
```

Passing arguments:

```rust
fn main() {
  print_number(5);
}

fn print_number(x: i32) {
  println!("x is: {}", x);
}
```

Returning a value:

```rust
fn add_one(x: i32) -> i32 {
  x + 1
}
```

Early returns:

```rust
fn foo(x: i32) -> i32 {
  return x;
}
```

Diverging functions (functions that return nothing):

```rust
fn diverges() -> ! {
  panic!("This function does not return!")
}
```
