# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  # "<h1>Hello World!</h1>"
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

write a GET route that retrieves
all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  # student.to_s
  result = ""
  result << "ID: #{student['id']}<br>"
  result << "Name: #{student['name']}<br>"
  result << "Age: #{student['age']}<br>"
  result << "Campus: #{student['campus']}<br><br>"
  result
end

get '/contact' do
  "<p>400 Baker St. Apt. 104<br>
   San Francisco, CA 94117</p>"
end

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

get '/:number_1/math/:number2' do
  "#{params[:number_1]} plus #{params[:number2]} eqauls
  #{(params[:number_1]).to_i + (params[:number_1]).to_i}"
end
