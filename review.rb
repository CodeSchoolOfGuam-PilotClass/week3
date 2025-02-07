# class Person
#   # attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def intro
#     "Hi my name is #{@name} and I'm #{@age} years old."
#   end
# end

# person = Person.new("Alanna", 23)
# puts person.intro





class Rectangle
  attr_accessor :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    length * width
  end

  def perimiter
    2 * (length + width)
  end
end

# shape = Rectangle.new(5, 3)
# puts shape.length
# puts shape.width
# puts shape.area
# puts shape.perimiter


# Task: Add one more method to your book class and write RSpec tests for it
# Instructions:
# Add one more method of your choice to your book class.
# Test it to make sure it works
# Write RSpec tests for all methods you have in your book class (should be at least 3 in total)



