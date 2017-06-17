## Arrays and vectors

The difference between arrays and vectors is that vectors are dynamic in size.

Creating an array:

```rust
let aliens: [&str; 4] = ["Bogi", "Fogi", "Logi", "Koki"];
let bogi = ["Bogi"; 3];
let mut empty: [i32; 0] = [];
```

Creating a vector:

```rust
let mut numbers = vec![1, 2, 3, 4, 5]; // vector: Vec<i32>
let mut numbers = vec![0; 10]; // A vector of ten zeroes
let mut numbers: Vec<i32> = vec![0; 2];
let mut numbers = vec![7i32, 1, 2, 40, 50];
let mut numbers: Vec<i32> = Vec::with_capacity(25);
let Vec<u32> = (0..7).collect();
```

Creating a slice:

```rust
let vector = vec![1, 2, 3];
let slice = &vector[..];
let string_slice: &[&str] = &["one", "two", "three"];
```

Accessing elements:

```rust
numbers[0]
numbers[1]

// To access an index one needs to use a usize-type

let numbers = vec![1, 2, 3, 4, 5];
let i: usize = 0;
let j: i32 = 0;

numbers[i] // 1
numbers[j] // Error
```

Adding and removing items:

```rust
numbers.push(1);
numbers.pop();
numbers.remove(index);
```

Iterating:

```rust
for i in array.iter() {
  println!("Item is: {}", i);
}
```
