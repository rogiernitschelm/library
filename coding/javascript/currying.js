const addNumbers = a => b => b === undefined ? a : addNumbers(a + b);

const sum = addNumbers(1)(2)(3)(4)(5) // 15
