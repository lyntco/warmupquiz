class SumOfMultiple
  # attr_reader :multiple

  def initialize(lowest = 1, highest = 10)
    @lowest = lowest
    @highest = highest
  end

  def calc(*multiples)
    sum = 0
    (@lowest..@highest).each do |num|
      multiples.each do |multiple|
        sum += num if num % multiple == 0
      end
    end
    sum
  end
end