
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
