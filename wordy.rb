class Words
  def self.process_string
    str = gets.chomp
    str = str.split
    x = str[2].to_i
    y = str[-1].to_i
    operator = str[3]
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