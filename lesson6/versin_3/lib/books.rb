class Books < Product

  attr_accessor :autor
 
  def initialize(params)
    super
    @autor = params[:autor]
  end

  def update(params)
    super
    @autor = params[:autor] if params[:autor]
  end

  def to_s
    "Категория: #{category}, название: #{name}, автор: #{autor}, год: #{year}, цена: #{super} $."
  end

end