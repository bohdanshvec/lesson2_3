require_relative 'parent'
require_relative 'child'

papa = Parent.new('Василий Аллибабаевич')

masha = Child.new('Маша')
koliy = Child.new('Коля')

puts "#{papa.name} послушный?: #{papa.obedient}"
puts "#{masha.name} послушный?: #{masha.obedient}"
puts "#{koliy.name} послушный?: #{koliy.obedient}"
