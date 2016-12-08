// RELEASE 1:
// function takes two objects
// check to see if the objects share at least one key-value pair.
// If called with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, return true
// If no pairs match, return false.
// Hint: String ('age') or an identifier name (age) can be considered equivalent.

// Add some driver code that tests both outcomes of your function.

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
