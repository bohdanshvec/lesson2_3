require_relative 'lib/product'
require_relative 'lib/films'
require_relative 'lib/books'

# products = []

# products << Books.new(category: "Книга", name: "Zolushka", price: 12, autor: "Ганс Андерсон", year: 1765)

# products << Books.new(category: "Книга", name: "Zolu", price: 100, autor: " Андерсон", year: 1723)

# products << Films.new(category: "Фильм", name: "Dsasv", price: 10, director: "Onnnn", year: 1999)

# products << Films.new(category: "Фильм", name: "Nill", price: 25, director: " Андерсон", year: 2000)


#     puts "Укажите категорию товара:"
#     ategory = gets.chomp.to_i
#     puts "Укажите название товара:"
#     ame = gets.chomp    
#     puts "Укажите цену товара:"
#     rice = gets.chomp.to_i

# products << Films.new(category: ategory , name: ame, price: rice)


# puts 'Вот какие товары у нас есть:'
# puts
# products.each {|f| puts f}

book = Books.new(category: "Книга", name: "Zolu", price: 100, autor: " Андерсон", year: 1723)

film = Films.new(category: "Фильм", name: "Dsasv", price: 10, director: "Onnnn", year: 1999)

book.price = 0000
film.price = 0000

book.update(autor: "ZZZZ", name: "ZZZZZ")
film.update(director: "QQQQQQ", name: "QQQQQQQ")

puts book
puts film


