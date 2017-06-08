## Structs

Declaring a struct:

```rust
// Struct with named fields

struct Player {
  name: &'static str,
  health: i32,
  level: u8
}

let mut player = Player{ name: "Kees", health: 33, level: 2 };

// Struct with unnamed fields

struct Player(i32, u8);
```

Destructuring a struct:

```rust
struct Player {
  name: &'static str,
  health: i32,
  level: u8
}

let mut player = Player{ name: "Kees", health: 33, level: 2 };
let Player{health: h, name: n } = player;

struct Score(i32, u8);

let score = Score(73, 2);
let Score(a, b) = score;
```

Accessing and setting elements:

```rust
let mut player = Player{ name: "Kees", health: 33, level: 2 };
player.name; // "Kees"
player.level; // 2

player.name = "Hermien";
player.level = 1;
```
