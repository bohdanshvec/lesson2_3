class Book < Product

  attr_accessor :autor
 
  def self.from_file(file)
        lines = File.readlines(file).map { |l| l.chomp }
        
        self.new(category: lines[0], name: lines[1], autor: lines[2], year: lines[3], price: lines[4])
      
  end

  def initialize(params)
    super
    @autor = params[:autor]
  end

  def update(params)
    super
    @autor = params[:autor] if params[:autor]
  end



  # params = {category: book_massive[0], name: book_massive[1], autor: book_massive[2], year: book_massive[3], price: book_massive[4]}

  def to_s
    "Категория: #{category}, название: #{name}, автор: #{autor}, год: #{year}, цена: #{super} $."
  end

end