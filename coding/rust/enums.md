## Enums

Creating an enum:

```rust
enum Compass {
  North, South, East, West
}

fn main() {
  let direction = Compass::West;
}
```

Creating an enum with other type/struct:

```rust
type species = &'static str;

enum Monster {
  VenusMonster(species, i32),
  MarsMonster(species, i32)
}

let monster = Monster::MarsMonster("Blefgh", 42);
```

Use:

```rust
// Allows for shorter declaration syntax:

use Monster::MarsMonster;

let monster = MarsMonster("Blasdfas", 32);
```

Result:

```rust
enum Result<T, E> {
  Ok(T),
  Err(E)
}
```

Option:

```rust
enum Option<T> {
  Some(T),
  None
}
```
