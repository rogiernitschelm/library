## Structs and enumerations

### Structs

```rust
struct Building {
    age: i32,
    location: &'static str,
    length: i32
}

let skyscraper: Building = Building {
  age: 11,
  location: "New York",
  length: 100  
};
```

Generic struct:

```rust
struct GenericStruct<T>(T)
let generic_variable: GenericStruct<char> = GenericStruct('a');
```

Tuple struct:

```rust
struct TupleStruct(i32, i32);
let tuple_struct = Pair(1, 2);
let Pair(a, b) = pair;
```

### Enums

```rust
enum Languages {
  Rust,
  C,
  Javascript
}

let language = Languages::Rust;
```
