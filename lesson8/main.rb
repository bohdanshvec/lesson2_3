require_relative 'notebook'

# notebook = Notebook.from_file('./data/*.txt')

m = []
Dir.chdir("./data") do
  Dir.glob("*.txt").each do |file_name|
    m << file_name
  end
end

p m
notebook = []
m.map do |f|
notebook << Notebook.from_file(f)
end
s = 0
notebook.each do |f| 
  # f.start
  
  if f.month == "январь"
    puts f.price
    s += f.price.to_i
  end
 
end

puts "SUMM for februari #{s}"
