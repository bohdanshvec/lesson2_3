class Books < Product

  attr_reader :autor
 
  def initialize(params)
    super
    @autor = params[:autor]
  end

  # def to_s
  #   puts "Автор: #{@autor} #{super}"
  # end
end