
massive = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

massive.shuffle

new_massive = massive.shuffle.pop(4)

#p new_massive

system("clear")

otvet_massive = []

# блок сверки двух массивов
while new_massive != otvet_massive
	
otvet = gets.chomp

otvet = otvet.delete(" ")
otvet_massive = otvet.chars



# блок проверки колличества совпадений
index = 0
sovpadenii = 0

while index < 4

	if new_massive.include?(otvet_massive[index])
		sovpadenii +=1
	end
	index += 1
end

puts "       Всего совпадений : #{sovpadenii}"

# Блок сверки на соотвецтвие позиции
index_two = 0
na_mestah = 0

while index_two < 4
	if new_massive[index_two] == otvet_massive[index_two]
		na_mestah +=1
	end
	index_two +=1
end

puts "       На своих местах : #{na_mestah} \n"

end

puts "      \n\n Viktori !!!"

