## Libraries

### Standard libraries

Importing:

```rust
use std::io;
```

Taking input:

```rust
std::io::stdin.read_line(&mut user_input);
```

Giving error feedback:

```rust
use std::io;

fn main() {
  let mut user_input = String::new();

  io::stdin
    .read_line(&mut user_input)
    .expect("An error message here!");
}
```

### External libraries

Importing external libraries:

```rust
extern crate rand;
use rand::Rng;
```
