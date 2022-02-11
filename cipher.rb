require 'digest'
system("clear")
puts "Вы введёте слово, а я его зашифрую. Ваше слово:"
word = STDIN.gets.chomp
puts
puts "Каким шифром шифровать?"
puts "1. MD5"
puts "2. SHA1"
puts
encrypt_method = STDIN.gets.to_i

until encrypt_method.between?(1, 2)
  puts "Выберите 1 или 2"
  encrypt_method = STDIN.gets.to_i
end

puts "Вот что получилось:"
puts

case encrypt_method
  when 1
    puts Digest::MD5.hexdigest(word)
  when 2
    puts Digest::SHA256.hexdigest(word)
  end

  
