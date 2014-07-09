def binary(num)
  base_ten ||= 0
  counter ||= 0
  num.split("").reverse.each do |digit| # reverse starts from the last digit
    base_ten += 2 ** counter if digit == "1"
    puts "Digit:#{digit}, Base Ten:#{base_ten}"
    counter += 1
  end
  puts "Binary:#{num}, Base Ten:#{base_ten}"
end

loop do
  binary(gets.chomp)
end