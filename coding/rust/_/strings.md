## Strings

A string (String) is mutable and has heap memory allocated to it. A string
slice (&str) has a fixed size.

Methods:

```rust
"abcd".as_ptr() -> 0x55aaf7a...
"abcd".len() -> 4
"".is_empty() -> true
"abcd".split_at(3) -> ("abc", "d")
"abcd".to_bytes() -> [97, 98, 99, 100]
"abcd".chars() -> 4
"abcd".char_indices().count() -> 4
"a b c d".split_whitespace() -> ["a", "b", "c", "d"]
"abcd".contains("a") -> true
"abcd".starts_with("a") -> true
"abcd".ends_with("d") -> true
"abcd".find("d") -> Some(3) // Returns None when not found
let v: Vec<&str> = "a bcd".split(' ').collect() -> ["a", "bcd"]
```

## Characters

```rust
.is_digit('1') -> true
.is_alphabetic('a') -> true
.is_alphanumeric('1') -> true
.is_numeric('1') -> true
.is_lowercase('a') -> true
.is_uppercase('A') -> true
.is_whitespace(' ') -> true

'A'.to_lowercase() -> 'a'
'a'.to_uppercase() -> 'A'
```
