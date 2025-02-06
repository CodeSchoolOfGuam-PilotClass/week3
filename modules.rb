# modules

# namespacing 
# prevent name collisions by organizing code into separate spaces

# mixins
# adds shared functionality to classes without using inheritance

# module MathConstants
#   PI = 3.14159
#   E  = 2.71828
# end

# puts MathConstants::PI


# module PDFTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} as a PDF."
#     end
#   end
# end

# module NetworkTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} over the network."
#     end
#   end
# end

# pdf_printer = PDFTools::Printer.new
# network_printer = NetworkTools::Printer.new

# pdf_printer.print_file("document.txt")
# network_printer.print_file("document.txt")




# Task: Create modules to namespace classes.
# Instructions:
# Create a new Ruby file named modules.rb.
# Define two modules: Animals::Mammals and Animals::Birds.
# In each module, create a class named Animal with a method speak.
# Instantiate objects from each class and call speak

# module Animals
#   module Mammals
#     class Animal
#       def speak
#         "I am a mammal."
#       end
#     end
#   end

#   module Birds
#     class Animal
#       def speak
#         "I am a bird."
#       end
#     end
#   end
# end

# mammal = Animals::Mammals::Animal.new
# bird = Animals::Birds::Animal.new

# puts mammal.speak
# puts bird.speak

# --------------------
# module Greetable
#   def greet
#     "Hello"
#   end
# end

# class Person
#   include Greetable
# end

# person = Person.new
# puts person.greet



# --------------------
# module Loggable
#   def log(message)
#     puts "Log: #{Time.now} - #{message}"
#   end
# end

# class Person
#   include Loggable

#   def initialize(name)
#     @name = name
#     log("New Person created with name - #{@name}")
#   end

#   def test2
#     "FROM THE SUPERCLASS"
#   end
# end

# class Student < Person
#   def initialize(name)
#     super(name)
#     log("TESTING in the Student class")
#   end

#   def test
#     "Success"
#   end
# end

# class Homework < Student
#   def initialize(subject)
#     @subject = subject
#     log("IN THE HOMEWORK CLASS - #{self.class}")
#   end
# end

# person = Person.new("Jess")
# student = Student.new("Leon")
# homework = Homework.new("Math")
# puts homework.test
# puts homework.test2






# Task: Create a module and include it in multiple classes.
# Instructions:
# Define a module Walkable with a method walk that outputs a walking message.
# Create two classes, Person and Dog.
# Include Walkable in both classes.
# Instantiate objects from each class and call walk.


# module Walkable
#   def walk(message)
#     puts "On a walk with #{message}"
#   end
# end

# class Person
#   include Walkable

# #   def initialize(name)
# #     @name = name
# #     walk("#{@name}")
# #   end
# end

# class Dog
#   include Walkable

#   # def initialize(name)
#   #   @name = name
#   #   walk("#{@name}")
#   # end
# end

# person = Person.new
# person.walk("Snoop Dog")
# dog = Dog.new
# dog.walk("Dog")



# Task: Create a module with multiple methods and include it in a class.
# Instructions:
# Define a module MathOperations with methods add, subtract, multiply, divide.
# Create a class Calculator.
# Include MathOperations in Calculator.
# Instantiate Calculator and perform calculations.


# # How to call a module method directly:
# module MathOperations
#   def self.add(a, b)
#     a + b
#   end
# end

# puts MathOperations.add(1, 2)  # => 3

# # OR 

# module MathOperations
#   # `module_function` makes the following instance methods available
#   # as *module methods* (so you can call MathOperations.add).
#   module_function 

#   def add(a, b)
#     a + b
#   end
# end
 
# # Now you can call:
# puts MathOperations.add(1, 2)  # => 3






# use inheritance for an is-a relationship
# use mixins for shared behavior


