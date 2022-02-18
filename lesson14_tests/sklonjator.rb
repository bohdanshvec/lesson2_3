class Sklonjator

  def self.sklonenie(skolko, krokodil, krokodila, krokodilov)

    if (11..14).include?(skolko) || (skolko % 100).between?(11,14)
      return krokodilov
    
    end
    
    ostatok = skolko % 10
    
    if (ostatok == 1)
      return krokodil
    end
    
    if (ostatok >= 2 && ostatok <= 4)
      return krokodila
    end
    
    if (ostatok >= 5 && ostatok <= 9 || ostatok == 0)
      return krokodilov
    end
    
  end

end
  
  # skolko = ARGV[0].to_i
  
  
  # puts "#{skolko} #{sklonenie(skolko, "негритёнок", "негритёнка", "негритят")}
  #  #{sklonenie(skolko, "пошёл", "пошли", "пошли")} купаться в море."