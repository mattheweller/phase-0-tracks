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

# CRUD Methods:
# create
def create_note(notebook, note)
  notebook.execute("INSERT INTO notes (list_counter, note) VALUES (#{counter(notebook)}, ?)", note)
end

def counter(notebook)
  notebook.execute("SELECT * FROM notes").length + 1
end

# read / print
def print_list(notebook)
  list = notebook.execute("SELECT * FROM notes ORDER BY list_counter")
  list.each do |notes|
    print "Note #{notes['list_counter']}: #{notes['note']} \n"
  end
end

# update
def update(notebook, number, note)
  notebook.execute("UPDATE notes SET note='#{note}' WHERE list_counter=?", number)
end

# delete
def delete_notebook(notebook)
  notebook.execute("DROP TABLE notes")
end

def delete_note(notebook, number)
  notebook.execute("DELETE FROM notes WHERE list_counter = ?", number)
  notebook.execute("UPDATE notes SET list_counter = (list_counter - 1) WHERE list_counter > ?", number)
end

# UI
puts "Welcome to List Maker!"

done = false
until done
  puts ""
  puts "Would you like to create, edit, display, or a delete a note?"
  puts "You can also delete your whole notebook"
  puts "if you're done with this program, just say 'done'"
  action = gets.chomp.downcase

  case
  when action == "create"
    puts "Please enter your note"
    note = gets.chomp
    create_note(notebook, note)
    print_list(notebook)
  when action == "edit"
    puts "Please enter the note number to edit"
    number = gets.chomp.to_i
    puts "Please enter your edits"
    note = gets.chomp.downcase
    update(notebook, number, note)
    print_list(notebook)
  when action == "display"
    puts "Here are your notes:"
    print_list(notebook)
  when action == "delete"
    puts "Please enter the note number to delete"
    number = gets.chomp.to_i
    delete_note(notebook, number)
    print_list(notebook)
  when action == "delete notebook"
    puts "Are you sure you'd like to delete your notebook?"
    answer = gets.chomp.downcase
    delete_notebook(notebook) if answer == "yes"
    puts "Your notebook has been deleted."
  when action == "done"
    done = true
  end
end
