// accumulate

const accumulator = array => {
  return array.reduce((acc, next) => {
    if (Array.isArray(next)) {
      return acc + accumulator(next);
    } else {
      return acc + next;
    }
  }, 0)
}
