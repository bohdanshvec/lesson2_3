

class Product

  # attr_accessor :name, :price, :category

  attr_accessor :name, :price, :category, :year#, :autor, :director

  def initialize(params)
    @name = params[:name]
    @price = params[:price]
    @category = params[:category]
    @year = params[:year]
    # @director = params[:director]
    # @autor = params[:autor]
  end

  # def ask
  #   puts "Укажите категорию товара:"
  #   @category = gets.chomp.to_i
  #   puts "Укажите название товара:"
  #   @name = gets.chomp    
  #   puts "Укажите цену товара:"
  #   @price = gets.chomp.to_i
  # end

  # def show
  #   if category == 1
  #     category = "Фильм"
  #     puts "Категория: #{category}, название: #{name}, режисёр: #{director}, год: #{year}, цена: #{price} $."
  #   elsif 
  #     @category == 2
  #     category = "Книга"
  #     puts "Категория: #{category}, название: #{name}, автор: #{autor}, год: #{year}, цена: #{price} $."
  #   end
  #  end

  # def start
  #   show
  # end

  def to_s
    price
  end

  def update(params)
    @name = params[:name] if params[:name]
    @price = params[:price] if params[:price]
    @category = params[:category] if params[:category]
    @year = params[:year] if params[:year]
  end

  def from_file(file)
        raise NoMethodError
  end

end