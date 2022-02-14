class Film < Product

  attr_accessor :director

  def self.from_file(file)
    lines = File.readlines(file).map {|eyess| eyess.chomp}

    self.new(category: lines[0], name: lines[1], director: lines[2], year: lines[3], price: lines[4])
  end

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