# encapsulation
# bundle data and methods that operate on that data within one class

# abstraction
# hide complex implementation/logic details and only show what is necessary

# name = "Leon"
# puts name.class
# number = 10
# puts number.class

# class Car
#   # methods and logic
# end

# my_car = Car.new
# puts my_car.class
# puts my_car


# class Person
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# # person1 = Person.new("Leon", 25)
# person1 = Person.new
# person1.name = "Leon"
# person1.age = 25
# puts person1.name
# puts person1.age




# attr_reader :name creates a getter method for @name.
# attr_writer :name creates a setter method for @name.
# attr_accessor :name creates both getter and setter methods.


# class Person
#   # attr_reader :name, :age
#   # attr_writer :name, :age
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end


# person = Person.new("Noah", 25)
# # person = Person.new
# # person.name = "Noah"
# # person.age = 25
# puts person.name
# puts person.age






















# class Person
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# person = Person.new("Alanna", 23)
# puts person.name
# puts person.age


class Book
  attr_accessor :title, :author, :pages_read

  def initialize(title, author)
    @title = title
    @pages_read = 0
    @author = author
  end

  def read(pages)
    @pages_read += pages
    puts "You have read #{pages} pages of '#{title}'."
  end
end

books = [Book.new("Harry Potter", "JK Rowling"), Book.new("Bible", "God")]

loop do
  puts "\nBook Manager"
  puts "1. Add a new book"
  puts "2. List all books"
  puts "3. Read pages"
  puts "4. Exit"
  print "Enter your choice: "
  choice = gets.chomp

  case choice
  when "1"
    print "Enter the title of the book: "
    title = "Harry Potter"
    print "Enter the author of the book: "
    author = "JK Rowling"
    books << Book.new(title, author)
    puts "Book added!"
  when "2"
    puts "\nBooks in your collection:"
    books.each_with_index do |book, index|
      puts "#{index + 1}. #{book.title} by #{book.author} (Pages read: #{book.pages_read})"
    end
  when "3"
    if books.empty?
      puts "No books available. Please add a book first."
    else
      puts "\nSelect a book to read:"
      books.each_with_index do |book, index|
        puts "#{index + 1}. #{book.title}"
      end
      print "Enter the number of the book: "
      book_number = gets.chomp.to_i
      if book_number.between?(1, books.length)
        print "How many pages did you read? "
        pages = gets.chomp.to_i
        books[book_number - 1].read(pages)
      else
        puts "Invalid book number."
      end
    end
  when "4"
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end
