
def reorder_array(x, y):
    arr = []
    for i in range(len(x)):
        arr.insert(y[i], x[i])
    return arr

# Example usage:
x = [1, 2, 3, 4, 5]
y = [0, 1, 2, 2, 1]
result = reorder_array(x, y)
print(result)



function reorderArray(x, y) {
  const arr = [];
  for (let i = 0; i < x.length; i++) {
    arr.splice(y[i], 0, x[i]);
  }
  return arr;
}



function maxPairSum(cards) {
  // Sort the cards in ascending order
  cards.sort((a, b) => a - b);

  let sum = 0;
  const n = cards.length / 2;
  for (let i = 0; i < n; i++) {
    // Pair the largest card with the smallest card
    const pairSum = cards[i] + cards[cards.length - 1 - i];
    sum += pairSum;
  }

  return sum;
}

// Test the function
const cards = [1, 4, 3, 2];
console.log(maxPairSum(cards)); // Output: 4



function maximumPairSum(cards) {
  // Step 1: Sort the array in ascending order
  cards.sort((a, b) => a - b);

  let sum = 0;
  // Step 2: Pair up adjacent elements and sum up the smaller value in each pair
  for (let i = 0; i < cards.length; i += 2) {
    sum += cards[i];
  }

  // Step 3: Return the maximum possible sum
  return sum;
}

// Example usage:
const cards = [1, 4, 3, 2];
console.log(maximumPairSum(cards)); // Output: 4

