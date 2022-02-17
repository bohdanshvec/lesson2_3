require 'json'

file = File.read('colors.json')

colors = JSON.parse(file)

puts colors
puts colors['red'] = '12'
p colors['red']
puts colors
new_file = JSON.generate(file)
puts new_file
new_file = File.new("colors_1.json", "w")
new_file.close