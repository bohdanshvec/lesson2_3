produkts = { "hleb" => "beliy", "maslo" => "2pachki", "woter" => "3buttels" }

hoz_shop = { shurups: 500, molotok: 1 }

new_spisok = produkts.merge(hoz_shop)

new_spisok.each_pair do |key, value|
  puts "#{key} ---> #{value}"
end

# Ассоциативный массив для продуктового отдела
food = {milk: 2, eggs: 10, butter: 1, banana: 3}

# Ассоциативный массив для хозяйственного отдела
goods = {soap: 2, shampoo: 1, venik: 1}

# А теперь объединим два ассоциативных массива в одни с помощью метода merge
products = food.merge(goods)

# Выводим результат на экран. Обратите внимание, что методу puts в качестве
# параметра можно передать ассоциативный массив.
puts 'Нужно купить:'
puts products