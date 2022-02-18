class ResultPrinter

  def initialize

    @massive_image = []
    counter = 0

    while counter <= 7
    
    if File.exist?("./image/#{counter}.txt")
      file = File.new("./image/#{counter}.txt")
      @massive_image << file.read
      
    else
      @massive_image << "\n\n    IMAGE NO"
    end
    counter += 1
    end
  end

	def enter(game)
		
		cls
		
		 print_viselitsa(game.errors)
		 
	    puts "\n\n#{procherki(game.letters, game.bukva_yes)}"
		puts "\nОшибок (#{game.errors}), буквы, которых нету: #{game.bukva_no}"
		ostalos = 7 - game.errors
		puts "\nУ Вас осталось #{ostalos} #{popit(ostalos)}."
		if game.status == -1
		 	puts "\n\n Вы проиграли((( \n "
      puts "Загаданное слово   #{game.letters.join}\n\n"
		 	return
		 elsif 
		 	game.status == 1
		 	puts "\n\n Вы выиграли !!! Ура !!! \n "
		 	return
		 end
	end

	def popit(ostalos)
		vozwr = ""
		if ostalos == 1
			vozwr = "попытка"
		elsif
			(2..4).include?(ostalos)
			vozwr = "попытки"
		else
			vozwr = "попыток"
		end
	end

	def procherki(letters, bukva_yes)
		prin = ""
		letters.each do |x|
			if bukva_yes.include?(x)
			   prin += " " + x
			else 
				prin += " __ "
	        end
	    end
	    prin
	end

	def cls
	  system("clear")
	end

def print_viselitsa(errors)
    puts @massive_image[errors]
  end


end