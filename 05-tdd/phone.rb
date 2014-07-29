class Phone
  def initialize(number)
    @number = number
  end

  def number
    num = @number.gsub(/\D+/,"")
    if num[0] == '1' && num.length == 11
      num = num.split('').last(10).join # remember to save num into a variable
    elsif num.length != 10
      return "0000000000"
    end
    num
  end

  def area_code
    @number.split('').first(3).join
  end

  def to_s
    @number.insert(0, "(").insert(4, ") ").insert(9, "-")
  end

end