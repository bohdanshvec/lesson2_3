class Game

	def initialize(slovo)
		@letters = get_slovo(slovo)
		@errors = 0
		@bukva_yes = []
		@bukva_no = []
		@status = 0
	end

	def get_slovo(slovo)
		if slovo == nil || slovo == ""
			raise 'Вы не ввели слово!'
		end
		slovo.split('')
	end

	def status
		@status
	end
	
	def errors
		@errors
	end

	def letters
		@letters
	end

	def bukva_yes
		@bukva_yes
	end

	def bukva_no
		@bukva_no
	end

	def proverit(bukva)
		
		if @status == 1 || @status == -1
			return
		end

		if bukva_yes.include?(bukva) || bukva_no.include?(bukva)
			puts "!!! Уважаемый, вы уже вводили такю букву. !!!"
			return @status = 0
		end

		if @letters.include?(bukva)
				p bukva_yes << bukva
			if letters.uniq.size == bukva_yes.uniq.size
				return @status = 1
			else
				return @status = 0
			end
		else
			p bukva_no << bukva
			@errors += 1
			p @errors
			
			if @errors >= 7
				@status = -1
			end
		end
	end	

	def ask_next_letter

		bukva = ''
		while bukva == ''
			bukva = STDIN.gets.strip.chomp
		end

		if bukva == "ё"
			puts "Считаем ё = е"
			bukva = "е"
		elsif 
			bukva == "й"
			puts "Считаем й = и"
			bukva = "и"
		end
		proverit(bukva)

	end

end