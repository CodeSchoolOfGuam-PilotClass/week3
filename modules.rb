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

module Animals
  module Mammals
    class Animal
      def speak
        "I am a mammal."
      end
    end
  end

  module Birds
    class Animal
      def speak
        "I am a bird."
      end
    end
  end
end

mammal = Animals::Mammals::Animal.new
bird = Animals::Birds::Animal.new

puts mammal.speak
puts bird.speak