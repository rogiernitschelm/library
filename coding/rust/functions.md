## Functions

Returning a value:

```rust
fn add_one(x: i32) -> i32 {
  x + 1
}

add_one(10);
```

Diverging functions (functions that return nothing):

```rust
fn diverges() -> ! {
  panic!("This function does not return!")
}
```

Pipes:

```rust
let add_one = |number: i32| number + 1;
add_one(10) // 11

let minus_one = |x| {
    x - 1
};
minus_one(10) // 9
```
