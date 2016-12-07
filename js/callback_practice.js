var letterArray = ["one","two","three","four","five"];
var numArray = [1, 2, 3, 4, 5];

function myEach(array, cb) {
  var results = []
  for (var i = 0; i < array.length; i++) {
    results.push(cb(array[i]));
  }
  return results;
}

console.log(myEach(letterArray, function(ele) {
  return ele.toUpperCase();
}));



function myMap(array, cb) {
  var results = [];
  for (var i = 0; i < array.length; i++) {
    results.push(cb(array[i]));
  }
  return results;
}

myMap(numArray, function(ele) {
  return (ele * 2);
});

function mySelect(array, cb) {
  var results = [];

  for (var i = 0; i < array.length; i++) {
    if (cb(array[i])) {
      results.push(cb(array[i]));
    }
  }
  return results;
}

// Select the schools with names that have an 'r' in them:
var schools = ["Berkeley", "Notre Dame", "Chicago", "Stanford", "Tulane"];

console.log(mySelect(schools, function(ele) {
  if (ele.split("").indexOf("r") > -1) {
    return ele;
  }
}));

// Select the multiples of 5:
var numbers = [4,10,39,105,73,20,15];

console.log(mySelect(numbers, function(ele) {
  if (ele % 5 === 0) {
    return ele;
  }
}));

// Select the sub-arrays that contain less than 3 elements
var grid = [ [0,1,0,0],
             [1,0,1],
             [1,1,0,0,1],
             [0,1],
             [1,0,0,0] ];

console.log(mySelect(grid, function(ele) {
  if (ele.length <= 3) {
    return ele;
  }
}));
