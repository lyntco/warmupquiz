require 'minitest/autorun'
require 'minitest/pride'
require_relative './som.rb'


class TestSumOfMultiple < MiniTest::Test

  def test_multiples_of_three
    som = SumOfMultiple.new
    result = som.calc(3)
    assert_equal(18, result)
  end

  def test_multiples_of_five
    som = SumOfMultiple.new
    result = som.calc(5)
    assert_equal(15, result)
  end

  def test_multiples_of_three_and_five
    som = SumOfMultiple.new
    result = som.calc(3,5)
    assert_equal(33, result)
  end


end