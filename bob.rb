loop do
  puts "Talk to Bob."
  response = gets.chomp.capitalize
  if response.split.first == "Bro,"
    response.slice!("Bro, ")
    response.gsub!(/[aeio]/, 'a' => '4', 'e' => '3', 'i' =>'1', 'o' => '0')
    response.split.each do |word|
      # word[0].downcase! unless word[0] == [/[^aeiou]/]
      word.split.inject do |prev,current|
        if prev == [/[^aeiou]/]
          letter.downcase!
        else
            if prev == prev.downcase
              letter.upcase!
            else
              letter.downcase!
            end
        end
      end
    end


    puts response
  elsif response == response.upcase
  puts "WOAH CHILL OUT!"
  elsif response[-1] == "?"
  puts "Sure."
  else
  puts "Whatever."
  end
end