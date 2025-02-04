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




# Task: Modify the introduce method in Student and Teacher to include more details, ensuring the use of super.
# Instructions:
# In your Student class, add an attribute school and include it in the introduce method using super.
# In your Teacher class, add an attribute years_of_experience and include it in the introduce method using super.
# Test your code by creating new instances and calling introduce.

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{@name} and I am #{@age} years old."
  end
end

class Student < Person
  def initialize(name, age, grade, school)
    super(name, age)
    @grade = grade
    @school = school
  end

  def introduce
    super + " I'm in grade #{@grade} and I go to #{@school}."
  end
end

class Teacher < Person
  def initialize(name, age, subject, years_of_experience)
    super(name, age)
    @subject = subject
    @years_of_experience = years_of_experience
  end

  def introduce
    "#{super} I teach #{@subject}. And I've been teaching for #{@years_of_experience} years."
  end
end

student = Student.new("Leon", 25, "12", "FD")
puts student.introduce

teacher = Teacher.new("Charles", 26, "Computer Science", 50)
puts teacher.introduce




# class Shape
#   def draw
#     "Drawing a shape..."
#   end
# end

# class Circle < Shape
#   def draw
#     "Drawing a circle!"
#   end
# end

# class Square < Shape
#   def draw
#     "Drawing a square!"
#   end
# end

# shapes = [Circle.new, Square.new, Shape.new]

# shapes.each do |shape|
#   puts shape.draw
# end


