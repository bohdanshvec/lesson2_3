


if defined?(x)
  puts "yes"
else
  puts "no"
end
b = 2


def defined
  c = 3
  puts "in method"
  puts "$a - #{defined?($a)}"
  puts "b - #{defined?(b)}"
  puts "c - #{defined?(c)}"
  
end
$a = 1
defined
puts
puts "out method"
puts "$a - #{defined?($a)}"
puts "b - #{defined?(b)}"
puts "c - #{defined?(c)}"



