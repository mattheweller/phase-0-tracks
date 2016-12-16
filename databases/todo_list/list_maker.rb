# List Maker

# Life is complicated and full of opportunities for things to slip through
# the cracks.  That’s why there’s List Maker!
# A terminal based to do list for your fairly inconvenient convenience!
# #listmaker #fairlyinconvenientconvenience
# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

notebook = SQLite3::Database.new("notes.db")
notebook.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS notes(
    id INTEGER PRIMARY KEY,
    list_counter INT,
    note BLOB
  )
SQL

notebook.execute(create_table_cmd)

# test notes
notebook.execute("INSERT INTO notes (list_counter, note) VALUES (1, 'This is a test note.')")
notebook.execute("INSERT INTO notes (list_counter, note) VALUES (2, 'A second test note.')")
notebook.execute("INSERT INTO notes (list_counter, note) VALUES (3, 'Another test note.')")
notebook.execute("INSERT INTO notes (list_counter, note) VALUES (4, 'And another.')")
notebook.execute("INSERT INTO notes (list_counter, note) VALUES (5, 'A fifth test note.')")

# CRUD Methods:

# create
def create_note(notebook, list_counter, note)
  notebook.execute("INSERT INTO notes (list_counter, note) VALUES (?, ?)",[list_counter, note])
end

# read

# update

# delete



# UI

# puts "Welcome to List Maker!"
# puts "What would you like to do?"
# action = gets.chomp
