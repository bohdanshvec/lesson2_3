class Films < Product

  attr_accessor :director

  def initialize(params)
    super
    @director = params[:director]
  end

  def update(params)
    super
    @director = params[:director] if params[:director]
  end

  def to_s
    "Категория: #{category}, название: #{name}, режисер: #{director}, год: #{year}, цена: #{super} $."
  end

end