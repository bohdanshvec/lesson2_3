# Програмка на генерацию случайной карты
values = %i[2 3 4 5 6 7 8 9 10 J Q K T]
suits =  %i[♦ ♠ ♥ ♣]

20.times do
  
  print "#{values.sample}#{suits.sample}"
  sleep 0.1
  system("clear")
end


puts "#{values.sample}#{suits.sample}"
