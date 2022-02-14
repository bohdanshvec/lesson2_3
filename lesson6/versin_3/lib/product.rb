

class Product


  attr_accessor :name, :price, :category, :year#, :autor, :director

  def initialize(params)
    @name = params[:name]
    @price = params[:price]
    @category = params[:category]
    @year = params[:year]
    # @director = params[:director]
    # @autor = params[:autor]
  end


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

  end

end