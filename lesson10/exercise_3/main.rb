require 'json'

# V. 1
# file = File.read("#{__dir__}/table.json")
# p element = JSON.parse(file)

# puts "Вот какие элименты я знаю:"

# number = 1
# number_hash = {}

# element.each do |k, v|
#   puts "#{number}. --- #{k}"
#   number_hash["#{number}"] = v 
#   number +=1
# end

# puts "Теперь выбери элемент и я скажу, кто его открыл:"
# puts
# user_number = STDIN.gets.chomp.to_i
# puts
# puts "#{number_hash["#{user_number}"]}" 



# V. 2
file = File.read("#{__dir__}/table.json", encoding: 'UTF-8')
elements = JSON.parse(file)

# Напишем пользователю, какие элементы у нас есть
puts "У нас всего элементов: #{elements.keys.size}"
puts elements.keys.join(', ')

# Спросим пользователя, о каком элементе он хочет узнать
puts 'О каком элементе хотите узнать?'
element = gets.chomp

# Если такой элемент есть в нашем хэше, покажем информацию о нём
if elements.key?(element)
  puts "Первооткрывателем этого элемента считается: #{elements[element]}"
else
  puts 'Извините, про такой элемент мы еще не знаем.'
end