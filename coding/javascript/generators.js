function* someGenerator() {
  console.log(yield)
  console.log(yield)
  console.log(yield)
}

const gen = someGenerator();

gen.next();
gen.next('1') // 1
gen.next('2') // 2
gen.next('3') // 3

function* someGenerator2(i) {
  yield i + 1;
  yield i + 2;
  yield i + 3;
}

const gen2 = someGenerator2(10)

console.log(gen2.next().value) // 10
console.log(gen2.next().value) // 11
console.log(gen2.next().value) // 12 
