class Notebook

  attr_accessor :month, :text, :price

  def self.from_file(file)
    # mass.each do |file|
    #   p file
    lines = File.readlines("./data/#{file}").map {|p| p.chomp}

    self.new(month: lines[0], text: lines[1], price: lines[2])
    # puts self
    # end
  end

  def initialize(params)
    @month = params[:month]
    @text = params[:text]
    @price = params[:price]
  end

  # def start
  #   case month 
  #     when "январь"
  #     puts price.to_i
  #   end
  # end


  # def to_s
  #   puts "#{month}, #{text}, "
  # end
end

