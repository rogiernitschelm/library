## Printing

Interpolation:

```rust
let x = 15;
println!("The value of x is: {}", x);
```

Debugging:

```rust
let vector: Vec<i32> = vec![1, 2, 3, 4, 5];
println!("Hello I am a string and I am {} years old", 10);
println!("Hello I am a vector with the following content: {:?}", vector)

#[derive(Debug)]
struct Building {
  age: i32,
  str: &'static str
}

let building = Building { age: 32, str: "Empire State Building" };
println!("Building: {:?}", building); // Now it works
```
