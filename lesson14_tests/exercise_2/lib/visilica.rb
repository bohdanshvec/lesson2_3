require "./game.rb"
require "./result_printer.rb"
require "./word_rider.rb"

printer = ResultPrinter.new

reader = WordRider.new

slovo = reader.read_file_words('./data/words.txt')

game = Game.new(slovo)

while game.status == 0

	printer.enter(game)

	game.ask_next_letter
	
end

printer.enter(game)
