class Year
  attr_accessor :year
  def initialize(year)
    @year = year
    @@earth = true
  end

  def leap?
    # if @year % 4 == 0 && @year % 100 != 0 && @year % 400 != 0
    #   puts "The year #{ @year } is a leap year."
    # else
    #   puts "The year #{ @year } is not a leap year."
    # end
    return false if @year % 4 != 0
    return false if @year % 100 == 0
    return false if @year % 400 == 0
    true
  end

end

Year.new(1997).leap?
Year.new(1996).leap?
Year.new(1900).leap?
Year.new(1996).leap?