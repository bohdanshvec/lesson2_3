require 'json'

file = File.read("#{__dir__}/vizitka.json")
lines = JSON.parse(file)

# v.1
# lines.each {|k, v| puts v}

puts lines['name']
puts lines['address']
puts lines['title']
