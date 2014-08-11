class Array
  def binary_search(search=25)
    array = self
    array.sort!
    steps = 0
    search_index = -1
    while search_index == -1
      half = array.length/2
      if search < array[half]
        array = array[0...half]
      elsif search > array[half]
        array = array[half..-1]
      else
        search_index = array.index array[half]
      end
      steps += 1
    end
    puts "You searched for #{search}"
    puts "It took #{steps} steps to find your number at the index #{search_index}"
    p array
  end
end

(1..50).to_a.binary_search(4)
(1..50).to_a.binary_search(4)

# require 'minitest/autorun'

# class BinarySearch < Minitest::Test

#   def test_takes_an_array
#     assert_equal [], [].binary_search
#   end

# end