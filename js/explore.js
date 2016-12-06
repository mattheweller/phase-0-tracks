var str = "Loop over me!";

// for (var i = 10; i > 0; i--) {
// 	console.log(i);
// }
// str.split("").forEach(function(let) {
//   console.log(let);
// });

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
