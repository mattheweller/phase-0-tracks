var firstHOne = document.getElementsByTagName('h1')[0];
firstHOne.style.color = "green";

var paragraph = document.getElementsByTagName('p')[0];
paragraph.onclick = function() {
  paragraph.style.visibility = 'hidden';
}

