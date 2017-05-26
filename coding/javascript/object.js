// Object.create

const SomeConstructor = function(name) {
  this.name = name;
}

const object = Object.create(SomeConstructor.prototype, {
  name: {
    value: 'Pietje Puk',
    configurable: false,
    writable: false,
    enumerable: true
  }
});

// Object.defineProperty

const object = {};
Object.defineProperties(object, {
  property1: {
    value: 'bonjour',
    writeable: true
  }
});

// Object.assign

const object = { a: 1 };
const cloneOfObject = Object.assign({}, object);

const object2 = { b: 2 };
const object3 = { c: 3 };
const objectMerged = Object.assign({}, object1, object2, object3);

// Spread operator

const object = { a: 1 };
const newObject = { ...object, b: 2 };

/* Object properties

- configurable: Property can be changed/deleted. Defaults to false.
- enumerable: Property shows during enumeration. Defaults to false.
- value: Any value ('Hello', { a: 1 }, true, 123). Defaults to undefined.
- writeable: Value can be changed with assignment operator. Defaults to false.
- get: Getter, defaults to undefined.
- set: Setter, defaults to undefined.

*/

// Comparison

0 === -0 // true (!)
Object.is(0, -0) // false
Object.is("test", "test") // true
