moskow_kiev = {
  "sits_1" => {name: "Anna Koch", posadka: "Moskow", end: "Kiev", password_number: "ZZ-000000"},
  "sits_2" => {name: "Nikolay Rogov", posadka: "Moskow", end: "Obuhov", password_number: "QQ-111111"},
  "sits_3" => {name: "Dan King", posadka: "Tula", end: "Kiev", password_number: "AA-333333"},
}

number = 1

moskow_kiev.each do
  puts
  puts "------------- SITS #{number} ---------------"
  puts "Punkt posadki: #{moskow_kiev["sits_#{number}"][:posadka]}"
  puts "Punkt konechn: #{moskow_kiev["sits_#{number}"][:end]}"
  puts "Passendger:    #{moskow_kiev["sits_#{number}"][:name]}"
  puts "№ password:    #{moskow_kiev["sits_#{number}"][:password_number]}"
  number += 1
end
