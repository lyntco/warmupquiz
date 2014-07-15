class LargestProduct

  def self.produce(digits,consec)
    how_many = digits.length - (consec - 1)
    start_index = 0
    compare = {}
    how_many.times do
      section = digits.slice(start_index,consec).split("")
      p = section.inject do |result,current|
        result.to_i * current.to_i
      end
      compare[p] = section
      start_index += 1
    end
    largest = compare.max_by{|k,v| k }
    puts "The largest product is #{largest[0]} from the numbers #{largest[1].join(",")}."
  end

end

LargestProduct.produce('75438',3)