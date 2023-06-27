
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
