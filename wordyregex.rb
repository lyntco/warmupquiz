class Words
  def self.process_string
    puts "What is your question?"
    str = gets.chomp
    # matched = str.match(/What is (\d+) plus (\d+)/) #returns array of full string and matches
    x = str[/\d+/].to_i
    y = str.chop[/\d+\z/].to_i
    operator = str[/(plus|minus|multiplied|divided)/]
    calc(x,y,operator)
  end

  def self.calc(x,y,operator)
    result = case operator
    when "plus" then x + y
    when "minus" then x - y
    when "multiplied" then x * y
    when "divided" then x / y
    end
    p result
  end
end

Words.process_string