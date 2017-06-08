## Strings

Difference between strings and string slices:

A string is mutable and has heap memory allocated to it. A string slice has a
fixed size.

### String methods

Creating a string slice (string literal):

```rust
let dog = "hachiko";
let hachi = &dog[0..5];
```

Creating an empty string:

```rust
let mut string1 = String::new();
let mut string2 = String::with_capacity(25);
```

Converting a string slice to a string:

```rust
let magician1 = "Merlin";
let magician2: &'static str = "Gandalf";

let mut string3 = magician1.to_string(); // mut s: String
let slice = &string3;
```

Converting a slice into a vector:

```rust
let magician = "Merlin";
let mut chars: Vec<char> = magician.chars().collect();
```

Adding to a string:

```rust
let mut string = String::new();
string.push_str("Hello I am a string");
string.push_str(", how are you?"); // Hello I am a string, how are you?
string.push('!'); // Hello I am a string, how are you?!

let hello = "Hello ".to_string();
let world = "world!";
let hello_world = hello + world;

// Concatenating two strings:

let hello = "Hello ".to_string();
let world = "world!".to_string();
let hello_world = hello + &world;
```

Getting the characters of a string:

```rust
for c in string.chars() {
  print!("{}", c);
}
```

Looping over a splitted string:

```rust
for word in string.split(" ") {
  print!("{}", word);
}
```

Replacing a substring:

```rust
let string2 = string1.replace("abc", "def");
```

Passing a string slice as an argument:

```rust
fn how_long(s: &str) -> usize { s.len() }
```
