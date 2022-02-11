passenger = {
  name: "Юрий",
  last_name: "Рогов",
  ticket_number: "PM 12345 67890",
  city_start: "Moskow",
  city_end: "Kyev",
  passport_number: "NN-098765"
}
puts
puts "Рейс: #{passenger[:ticket_number]}"
puts "      #{passenger[:city_start]} - #{passenger[:city_end]}"
puts "---------------------------------------------------------"
puts "Зарегистрированный пассажир: #{passenger[:last_name]} - #{passenger[:name]}"
puts "                 № паспорта: #{passenger[:passport_number]}"
puts
