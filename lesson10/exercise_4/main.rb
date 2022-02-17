require 'json'


file = File.read("#{__dir__}/elements.json", encoding: 'UTF-8')
elements = JSON.parse(file)

# Напишем пользователю, какие элементы у нас есть
puts "Вот все известные химические элементы:"
puts
puts elements.keys.join(', ')
puts

# Спросим пользователя, о каком элементе он хочет узнать
puts 'О каком элементе хотите узнать?'
element = gets.chomp

# Если такой элемент есть в нашем хэше, покажем информацию о нём
# V. 1
# if elements.key?(element)
#    elements[element].each {|k, v| puts "#{k}  :  #{v}"}
# else
#   puts 'Извините, про такой элемент мы еще не знаем.'
# end

# V. 2
if elements.has_key?(element)
  answer = elements[element]
  puts "Номер в таблице        :  #{answer['number']}"
  puts "Название               :  #{answer['name']}"
  puts "Латиницей              :  #{answer['latin']}"
  puts "Период и группа        :  #{answer['period_group']}"
  puts "Атомная масса          :  #{answer['atomic_mass']}"
  puts "Плотность              :  #{answer['density']}"
  puts "Температура плавления  :  #{answer['melt_temp']}"
  puts "Температура замерзания :  #{answer['freeze_temp']}"
  puts "Год открытия           :  #{answer['year']}"
  puts "Первооткрыватель       :  #{answer['discoverer']}"
  puts "Произношение           :  #{answer['pronunciation']}"

else
  puts 'Извините, про такой элемент мы еще не знаем.'
end


