variable = 1

class MyClass
  
  def initialize
    @variable = 2
  end

  def check_variables
    puts "in method"
    # puts variable
    puts @variable
    puts "variable - #{defined?(variable)}"
    puts "@variable - #{defined?(@variable)}"
  end

end

MyClass.new.check_variables

puts
puts "out method"
puts variable
puts @variable
puts "variable - #{defined?(variable)}"
puts "@variable - #{defined?(@variable)}"