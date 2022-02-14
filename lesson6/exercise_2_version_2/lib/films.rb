class Films < Product

  attr_reader :director

  def initialize(params)
    super
    @director = params[:director]
  end

end