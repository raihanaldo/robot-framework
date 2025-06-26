function sortingDesc(numbers) {
  let evenNumbers = [];
  let oddNumbers = [];
  // let otherResult = [];

  for (let i = 0; i < numbers.length; i++) {
    let number = numbers[i];
    if (number % 2 === 0) {
      evenNumbers.push(number);
    } else {
      oddNumbers.push(number);
    }
  }
  evenNumbers.sort(function (a, b) {
    return b - a;
  });

  oddNumbers.sort(function (a, b) {
    return b - a;
  });

  let result = evenNumbers.concat(oddNumbers);
  // otherResult = `${evenNumbers},${oddNumbers}`
  return result;
}

let input = [3, 2, 5, 1, 8, 9, 6];
let output = sortingDesc(input);
console.log(output);
