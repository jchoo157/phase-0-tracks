# require gems
require 'sinatra'
require 'sqlite3'

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

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources
get '/students/ethnicity' do
  # Added an ethnicity column using the SQL query below
  # db.execute("ALTER TABLE students ADD COLUMN ethnicity VARCHAR(255);")
  @students = db.execute("SELECT * FROM students")
  erb :ethnicity
end

post '/students/add_ethnicity' do
  ethnicity = params[:ethnicity]
  name = params[:name]
  db.execute("UPDATE students SET ethnicity=(?) WHERE name=(?)", [ethnicity, name])
  redirect '/'
end

