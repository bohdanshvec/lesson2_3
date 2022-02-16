require_relative 'lib/product'
require_relative 'lib/films'
require_relative 'lib/books'

require_relative 'lib/product_collection'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')
# collection = ProductCollection.from_dir('./data')

collection.sort!(by: :category, order: :asc)


collection.to_a.each do |product|
  puts product
end

# begin
#   Product.from_file('./data/films/01.txt')
# rescue NoMethodError
#   puts 'Метод класса Product.from_file не реализован'
# end

# puts product
