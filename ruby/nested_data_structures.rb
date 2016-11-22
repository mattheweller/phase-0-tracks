student_body = [
  {name: "Matt",
  email: "mattcjeller@gmail.com",
  grades: [{test_1: 89}, {test_2: 99}, {test_3: 100}]
  },
  {name: "Bob",
  email: "bob@gmail.com",
  grades: [{test: 78}, {test: 100}, {test: 98}]
  }]
  
p student_body[1][:name]
num = student_body[1][:grades].length
test_total = 0
(num - 1).times do |i| 
  test_total += student_body[1][:grades][i][:test]
end

p test_total