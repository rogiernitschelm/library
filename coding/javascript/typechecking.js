// Constructor (fastest)

const array = [1, 2, 3];
array.constructor === Array; // Returns true

// Typeof

typeof 'abc' // Returns string

// Instanceof

[1, 2, 3] instanceof Array // Returns true

// IsArray

Array.isArray([1, 2, 3]) // Returns true

// IsNaN

isNaN(1) // Returns false
isNaN("a") // Returns true
