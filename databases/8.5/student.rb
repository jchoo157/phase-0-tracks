# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 Database
db = SQLite3::Database.new("students.db")

# create students table using SQL
create_students_table = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    full_name VARCHAR(255),
    age INT,
    major_id INT,
    FOREIGN KEY (major_id) REFERENCES majors(id)
  )
SQL

db.execute(create_students_table)

# add student to students table
def add_student(db, full_name, age, major_id)
  db.execute("INSERT INTO students (full_name, age, major_id) VALUES (?, ?, ?)", [full_name, age, major_id])
end

# create majors table using SQL
create_majors_table = <<-SQL
  CREATE TABLE IF NOT EXISTS majors(
  	id INTEGER PRIMARY KEY,
  	major VARCHAR(255)
  )
SQL

db.execute(create_majors_table)

# add major to majors table
def add_major(db, major)
  db.execute("INSERT INTO majors (major) VALUES (?)", [major])
end

# ARRAY of majors
majors = ["Graphic Design", "Computer Science", "Biology", "Math", "Journalism", "Engineering", "Accounting", "English"]

# LOOP to store majors in the majors table if it's empty
if db.execute("SELECT * FROM majors;") == []
  majors.each do |major|
    add_major(db, major)
  end
end

# LOOP to store students in the students table if it's empty
if db.execute("SELECT * FROM students;") == []
  50.times do 
    random_age = (18..100).to_a.sample
    add_student(db, Faker::Name.name, random_age, majors.index(majors.sample))
  end
end

# joins the students and majors table together
def join_tables(db)
  db.execute("SELECT * FROM students JOIN majors ON students.major_id = majors.id")
end

p "--------------------------------------------"
puts "Joined tables:"
p join_tables(db)

# selects a row from students table
def select_student_row(db, id)
  db.execute("SELECT * FROM students WHERE id = (?)", [id])
end

p "--------------------------------------------"
puts "Student row with id of 3:"
p select_student_row(db, 3)

# select a row from majors table
def select_majors_row(db, id)
  db.execute("SELECT * FROM majors WHERE id = (?)", [id])
end

p "--------------------------------------------"
puts "Majors row with id of 1:"
p select_majors_row(db, 1)

# select students by major
def select_students_by_major(db, major)
  db.execute("SELECT students.full_name FROM students JOIN majors ON students.major_id = majors.id WHERE major = (?)", [major])
end

p "--------------------------------------------"
puts "Students with Graphic Design major:"
p select_students_by_major(db, "Graphic Design")

# select student row by name
def select_student_by_name(db, full_name)
  db.execute("SELECT * FROM students WHERE students.full_name = (?)", [full_name])
end

p "--------------------------------------------"
puts "Student row with the name Burnice Doyle:"
p select_student_by_name(db, "Burnice Doyle")

# select students below certain age
def select_students_below_age(db, age)
  db.execute("SELECT students.full_name, students.age, majors.major FROM students LEFT JOIN majors ON majors.id = students.major_id WHERE students.age < (?)", [age])
end

p "--------------------------------------------"
puts "Students below the age of 30:"
p select_students_below_age(db, 30)

# select students above a certain age
def select_students_above_age(db, age)
  db.execute("SELECT students.full_name, students.age, majors.major FROM students LEFT JOIN majors ON majors.id = students.major_id WHERE students.age > (?)", [age])
end

p "--------------------------------------------"
puts "Students above the age of 60:"
p select_students_above_age(db, 60)


