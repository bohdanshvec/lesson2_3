class WordRider

	def initialize
		@words = []
	end

	def read_file_words(file_name)
		if File.exist?(file_name)
			File.open(file_name) do |word|
				
				@words = word.readlines
				end
				return @words.sample.chomp
		else
			return nil
		end
	end

end