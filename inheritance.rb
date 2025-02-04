# class Vehicle
#   def initialize(make, model)
#     @make = make
#     @model = model
#   end

#   def info
#     "Vehicle Make: #{@make}, Model: #{@model}"
#   end
# end

# class Motocycle < Vehicle
#   def number_of_wheels
#     2
#   end
# end

# class Car < Vehicle
#   def number_of_wheels
#     4
#   end
# end

# car = Car.new("Toyota", "Tacoma")
# motorcycle = Motocycle.new("Harley", "Sportster")

# puts car.info
# puts "Car Wheels: #{car.number_of_wheels}"

# puts motorcycle.info
# puts "Motorcycle Wheels: #{motorcycle.number_of_wheels}"




# Task: Create a Person superclass and Student and Teacher subclasses.
# Instructions:
# Create a new Ruby file named inheritance.rb.
# Define a Person class with attributes name and age, and a method introduce.
# Create Student and Teacher classes that inherit from Person.
# Add a grade attribute to Student and a subject attribute to Teacher.
# Instantiate objects from both subclasses and call their methods.

# super 

# class Person
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def introduce
#     "Hi, my name is #{@name} and I am #{@age} years old."
#   end
# end

# class Student < Person
#   def initialize(name, age, grade)
#     super(name, age)
#     @grade = grade
#   end

#   def introduce
#     super + " I'm in grade #{@grade}."
#   end
# end

# class Teacher < Person
#   def initialize(name, age, subject)
#     super(name, age)
#     @subject = subject
#   end

#   def introduce
#     "#{super} I teach #{@subject}."
#   end
# end

# student = Student.new("Leon", 25, "12")
# puts student.introduce

# teacher = Teacher.new("Charles", 26, "Computer Science")
# puts teacher.introduce


