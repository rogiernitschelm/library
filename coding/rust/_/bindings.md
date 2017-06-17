## Bindings

Declaration:

```rust
let number = 5;
let n: i32 = 123;

// These stay in memory the entire application
static MAX_HEALTH: i32 = 100;
static GAME_NAME: &'static str = "Monster Attack";

// Declaring a constant
const PI: f32 = 3.14;
```

Mutable bindings:

```rust
let n = 5;
n = 6; // Throws an error

let mut number = 5;
number = 6;
```

Patterns:

```rust
let (number1, number2) = (1, 2);
```

Binding to a function:

```rust
let function: fn(i32) -> i32;
fn plus_one(i: i32) -> i32 {
  i + 1
}

function = plus_one;
let two = function(1);
```
