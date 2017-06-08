## Types

. bool
. char
. numeric
. array
. slice
. str
. tuple

Bool:

```rust
let x = true;
let y: bool = false;
```

Char:

```rust
let character = 'a';
let character: char = 'b';
```

Numeric:

```rust
let signed_integer = 42; // default type i32
let signed_integer: i32 = 10;

let unsigned_integer = -42;
let unsigned_integer: u32 = -3;

let float = 1.0; // default type f64
let float: f32 = 12.0;
```

Array:

```rust
let array = [1, 2, 3, 4]; // array: [i32; 3]
let mut array = [1, 2, 3];
array[0] // 1

let array_with_20 = [0; 20]; // array with 20 entries of 0;
array_with_20.len() // 20
```

Slice:

```rust
let array = [0, 1, 2, 3, 4];
let complete = &array[..]; // all elements
let middle = &array[1..4]; // 1, 2, 3
```

Tuple:

```rust
let x = (1, "hello");
let x: (i32, &str) = (1, "hello");
let mut x = (1, 2);
let y = (2, 3);

x = y;

// Destructuring a tuple

let (x, y, z) = (1, 2, 3);

(0,); // A single-element tuple
(0); // A zero in parentheses

let tuple = (1, 2, 3);
let x = tuple.0;
let y = tuple.1;
let z = tuple.2;
```
