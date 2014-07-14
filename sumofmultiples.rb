class SumMultiples

  def self.find_sum(upto,*x)
    multiples = []
    (1...upto).each do |n|
      x.each do |mult|
        multiples << n if n % mult == 0
      end
    end
    puts multiples.inject {|result, element| result + element}
  end

end

SumMultiples.find_sum(14,3,5)