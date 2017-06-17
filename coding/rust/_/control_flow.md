## Control flow

### Conditionals

If-else:

```rust
if number == 5 {
  println!("x is five!");
} else if number == 6 {
  println!("x is six !");
} else {
  println!("x is neither 5 nor 6!");
}
```

Match:

```rust
let area_code = 4101;
let area = match area_code {
  4101 => "Culemborg",
  5223 => "Den Bosch",
  1000...1099 => "Amsterdam",
  _ => "Somewhere else"
};
```

### Loops

Loop:

```rust
loop {
  println!("Loop forever!");
}
```

While:

```rust
while !done {
  x += 1

  println!("{}", x)

  if x == 5 {
    done = true;
  }
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

Break:

```rust
let mut a = 0;
loop {
  a += 1;

  if a == 5 { break; }
}
```

Continue:

```rust
for x in 0..10 {
  if x % 2 == 0 {
    continue;
  }

  println!("{}", x);
}
```
