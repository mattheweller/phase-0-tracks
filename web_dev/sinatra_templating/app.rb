# require gems
require 'sinatra'
require 'sqlite3'

# add static resources
set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/campuses' do
  # @attendees = db.execute("SELECT * FROM students WHERE campus=?", params[:campus])
  # @attendees = db.execute("SELECT * FROM students") #WHERE campus=?", params[:campus])
  erb :campuses
end

# create new students via
# a form
post '/students' do
  # p @students
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# post '/campuses' do
#   p params
#   <button type="submit">View</button>
#   "<h1>Hello World!</h1>"
#   # @attendees = db.execute("SELECT * FROM students WHERE campus=?", params[:campus])
#   # response = ""
#   # @attendees.each do |student|
#   #   response << "ID: #{student['id']}<br>"
#   #   response << "Name: #{student['name']}<br>"
#   #   response << "Age: #{student['age']}<br>"
#   #   response << "Campus: #{student['campus']}<br><br>"
#   # end
#   # response
#   # redirect '/campuses'
# end
