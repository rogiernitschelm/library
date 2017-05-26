// flatten an array

const flattener = array => {
  return array.reduce((acc, next) => {
    if (Array.isArray(next)) {
      return [...acc, ...flattener(next)];
    } else {
      return [...acc, next]
    }
  }, [])
}
