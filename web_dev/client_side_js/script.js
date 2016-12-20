var firstHOne = document.getElementsByTagName('h1')[0];
firstHOne.style.color = "green";

function hideText(event) {
  event.target.style.visibility = 'hidden';
}

var paragraph = document.getElementsByTagName('p')[0];
paragraph.addEventListener('click', hideText)

