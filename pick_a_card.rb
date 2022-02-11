# Програмка на генерацию случайной карты
values = %i[2 3 4 5 6 7 8 9 10 J Q K T]
suits =  %i[Diamonds Hearts Clubs Spades]

20.times do
print "#{values.sample} of #{suits.sample}\r"
sleep 0.1
end


puts "#{values.sample} of #{suits.sample}"
