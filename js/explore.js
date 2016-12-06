var str = "Loop over me!";

// for (var i = 10; i > 0; i--) {
// 	console.log(i);
// }
// str.split("").forEach(function(let) {
//   console.log(let);
// });


// Pseudocode:
// 1. declare a function that takes in a string
// 2. store the string as an array of characters in a variable
// 3. store an empty string to push the reversed letters into
// 4. create a decrementing for loop
// 5. concatinate the empty string with the last index of the letter array
// 6. return the reversed string

function reverseSentence(sentence){
  var letters = sentence.split("");
  var reversed = "";

  for (var i = letters.length - 1; i >= 0; i--) {
    reversed += letters[i];
  }
  return reversed;
}

output = reverseSentence(str)

if (output === "!em revo pooL") {
  console.log(reverseSentence(str));
} else {
  console.log(false);
}
