class Product

  attr_accessor :name, :price, :category

  # attr_reader :name, :price, :category

  # def initialize
  #   @name = name
  #   @price = price
  #   @category = category
  # end

  def ask
    puts "Укажите категорию товара:"
    @category = gets.chomp.to_i
    puts "Укажите название товара:"
    @name = gets.chomp    
    puts "Укажите цену товара:"
    @price = gets.chomp.to_i
  end

  def show
    if category == 1
      category = "Фильм"
    elsif
      category == 2
      category = "Книга"
    else
      category = "---"
    end
    puts "Категория: #{category}, название: #{name}, цена: #{price} $."
  end

  def start
    ask
    show
  end

end