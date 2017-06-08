// Constructor

function SomeConstructor(name) {
  this.name = name;
}

// Intantiating an object

const instance = new SomeConstructor('Roggers');
instance.name // Roggers

// Adding methods to a prototype

SomeConstructor.prototype.someMethod = function() {
  console.log(`Hello, my name is ${this.name}`);
}

SomeConstructor.prototype = Object.create(SomeConstructor.prototype);
