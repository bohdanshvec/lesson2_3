require 'json'
require 'date'


file = File.read("#{__dir__}/signs.json")
signs = JSON.parse(file)

puts "Когда вы родились, укажите дату ыв формате ДД.ММ, например, 08.02"
user_date_string = STDIN.gets.chomp

user_date = Date.parse(user_date_string + '.2000')

user_sign = nil

signs.each do |_, sign|
  dates = sign['dates'].split('..').map do |date_string|
    Date.parse("#{date_string}.2000")
  end

    user_sign = sign if dates.first <= user_date && user_date <= dates.last

    #  v.2 user_sign = [_, sign] if dates.first <= user_date && user_date <= dates.last
    #  v.3 user_sign = { _ => sign} if dates.first <= user_date && user_date <= dates.last

end

  # v.2
  # puts user_sign[0]
  # puts user_sign[1]['dates']
  # puts user_sign[1]['text']

  puts user_sign['dates']
  puts user_sign['text']

  # v.3
  # puts user_sign.inspect
  # puts user_sign['aquarius']['dates']
  # puts user_sign['aquarius']['text']

