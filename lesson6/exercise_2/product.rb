class Product

  attr_reader :name, :price, :category

  def initialize(category, name, price)
    @name = name
    @price = price
    @category = category
  end

  def show
    if category == 1
      category = "Фильм"
    elsif
      category == 2
      category = "Книга"
    end
    puts "Категория: #{category}, название: #{name}, цена: #{price} $."
  end

end