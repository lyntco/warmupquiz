var bubbleSort, input, input2, output;

unsorted = [53, 12, 99, -100, 58, 6.66, 88];

unsorted2 = [];
for (var i = 0; i < 1000; i++){
  unsorted2[i] = Math.floor( Math.random()  * 10000 );
}

bubbleSort = function(inputArray) {
  var sorted = inputArray;

  for (var i = 0; i < sorted.length; i++) {
    var counter = 0;

    while (counter <= sorted.length) {
      var currentIndex = counter;
      var compareIndex = (counter + 1);
      var oldCurrent = sorted[currentIndex];
      var oldCompare = sorted[compareIndex];

      if (oldCurrent > oldCompare) {
         sorted[currentIndex] = oldCompare;
         sorted[compareIndex] = oldCurrent;
      } // end if
      counter++;
      }; // end while

  }; // end for
  return sorted;
};

output = bubbleSort(unsorted);

console.log(unsorted);