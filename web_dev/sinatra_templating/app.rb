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
  erb :campuses
end

# create new students via
# a form
post '/students' do
  # p @students
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/campuses' do
  @attendees = db.execute("SELECT * FROM students WHERE campus=?", params[:campus])
  response = ""
  @attendees.each do |student|
    response << "&#8226; #{student['name']}, "
    response << "#{student['campus']}, "
    response << "#{student['age']}<br>"
  end
  response
end
