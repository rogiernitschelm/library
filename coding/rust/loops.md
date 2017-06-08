## Loops

Loop:

```rust
// Used for infinite loops

loop {
  println!("Loop forever!");
}
```

While:

```rust
// Used when not sure how many times we need to loop.

let mut x = 0;
let mut done = false;

while !done {
  x += 1

  println!("{}", x)

  if x == 5 {
    done = true;
  }
}

// Returning early

let mut a = 0;
loop {
  a += 1;

  if a == 5 { break; }
}

// Continue

for x in 0..10 {
  if x % 2 == 0 {
    continue;
  }

  println!("{}", x);
}
```

For:

```rust
for x in 0..10 {
  println!("{}", x);
}

for (index, value) in (5..10).enumerate() {
  println!("index = {} and value = {}", index, value);
}

let lines = "hello\nworld\nhow\nare\nyou?".lines();

for (number, line) in lines.enumerate() {
    println!("{}: {}", number, line);
}
```

Loop labels:

```rust
'outer: for x in 0..10 {
    'inner: for y in 0..10 {
        if x % 2 == 0 { continue 'outer }
        if y % 2 == 0 { continue 'inner }

        println!("x {}, y: {}", x, y);
    }
}
```
