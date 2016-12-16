# List Maker

# // Move this to a README.md:
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
# notebook.execute("INSERT INTO notes (list_counter, note) VALUES (2, 'A second test note.')")
# notebook.execute("SELECT * FROM notes").length
# notebook.execute("INSERT INTO notes (list_counter, note) VALUES (#{counter(notebook)}, 'This is a test note.')")

# CRUD Methods:
# create
def create_note(notebook, note)
  notebook.execute("INSERT INTO notes (list_counter, note) VALUES (#{counter(notebook)}, ?)",[note])
end

def counter(notebook)
  notebook.execute("SELECT * FROM notes").length + 1
end

# read / print
def print_list(notebook)
  list = notebook.execute("SELECT * FROM notes")
  list.each do |notes|
    print "Note #{notes['list_counter']}: #{notes['note']} \n"
  end
end

# update
def update(notebook, number, note)
  notebook.execute("UPDATE notes SET note='#{note}' WHERE list_counter=?", [number])
end

# delete



# UI

# puts "Welcome to List Maker!"
# puts "What would you like to do?"
# action = gets.chomp

# Tests


# create_note(notebook, "Another test note.")
# counter(notebook)
print_list(notebook)
# update(notebook, 3, "Updated test note.")
