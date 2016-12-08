// RELEASE 0:

// function that takes an array of words or phrases and
// returns the longest word or phrase in the array.
// Hint: "some string".length will do what you expect in JS.

// Add driver code that tests your function on a few arrays.

// PSEUDOCODE:
// 1. Declare a function that takes an array of strings
// 2. Inside the function, declare a variable to store the longest word
// 3. Assign the longest word variable the value of the 0th index of the array.
// 4. Create a loop to iterate through the length of the array
// 5. Compare the lengths of the element at the current index to the length of longest word
// 6. If the element at the current index is longer than the length of longest word, reassign longest word to the element at the current index
// 7. Complete the loop and, reassigning as many times as necessary, and return the longest word.

function longestWord(array) {
  var longest = array[0]

  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest.length) {
      longest = array[i]
    }
  }
  return longest;
}

var dinner = ["spaghetti","meat balls","pepperoni pizza"];
var phrases = ["what would you like for dinner?","I'm not sure I'm that hungry yet","Check please!"];

console.log("The longest word is" + " '" + longestWord(dinner) + "' " + "with a length of " + longestWord(dinner).length + " letters!");
console.log("The longest word is" + " '" + longestWord(phrases) + "' " + "with a length of " + longestWord(phrases).length + " letters!");

// RELEASE 1:
// function takes two objects
// check to see if the objects share at least one key-value pair.
// If called with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, return true
// If no pairs match, return false.
// Hint: String ('age') or an identifier name (age) can be considered equivalent.

// Add some driver code that tests both outcomes of your function.

// PSEUDOCODE:

// 1. Declare a function that takes two objects.
// 2. Created a nested loop to check each property for equivalency.
  // i. Test for equivalency: Compare the key of one object against a given key of the other object,
  //    AND compaer the value of that key against the value of the other object.
// 3. If an equivalency is found, return true,
// 4. Continue looping until a match is found, otherwise, after the loops complete, return false.
// 4. Create test data, and use the function to call the function.

function pairMatch(obj1, obj2) {
  for (var i = 0; i < Object.keys(obj1).length; i++) {
    for (var j = 0; j < Object.keys(obj2).length; j++) {
      if (Object.keys(obj1)[i] === Object.keys(obj2)[j] && Object.values(obj1)[i] === Object.values(obj2)[j]) {
        return true;
      }
    }
  }
  return false
}

// Cleaner solution:

function pairMatch(obj1, obj2) {
  for (var prop1 in obj1) {
    for (var prop2 in obj2) {
      if ((obj1[prop1] === obj2[prop2]) && (prop1 === prop2)) {
        return true;
      }
    }
  }
  return false;
}
  
var obj1 = {name: "Steven", age: 54}
var obj2 = {name: "Tamir", age: 54}
var horses = {
  "Fred"        : "red",
  "Dibbs"       : "green",
  "One Piece"   : "blue",
  "Square Deal" : "yellow",
  "Hoof Hearted": "brown"
}

console.log(pairMatch(obj1, obj2)); //=> true
console.log(pairMatch(obj1, horses)); //=> false
console.log(pairMatch(horses, horses)); //=> true
