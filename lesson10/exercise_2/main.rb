require 'json'


file = File.read("#{__dir__}/languages.json")
p languages = JSON.parse(file)

p languages_inverted = languages.invert

p languages_sorted = languages_inverted.sort.reverse

most_popular = languages_sorted.first

puts "Самый популярный язык: #{most_popular.last} (#{most_popular.first})"
puts

languages_sorted.each_with_index do |language, index|
  puts "#{index + 1}: #{language.first} (#{language.last})"
end
 