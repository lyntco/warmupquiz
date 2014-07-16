def roman(n)
  thousands = { n.divmod(1000).first => "M" }
  hundreds = { n.divmod(1000).last.divmod(100).first => [thousands.values.first, "D", "C"] }
  tens = { n.divmod(1000).last.divmod(100).last.divmod(10).first => [hundreds.values.first[-1], "L", "X"] }
  ones = { n.divmod(1000).last.divmod(100).last.divmod(10).last => [tens.values.first[-1], "V", "I"] }
  str = ""

  str += thousands.values.first * thousands.keys.first

  [hundreds, tens, ones].each do |unit|
    digit = unit.keys.first
    next if digit == 0
    letters = unit[digit]
    mod_result = digit % 5
    str += letters[1] if (5...9).include? digit
    case digit
    when 4 then str += letters[-1] + letters[1]
    when 9 then str += letters[-1] + letters[0]
    else str += letters[-1] * mod_result
    end
  end

  return str
end

require "minitest"
require "minitest/spec"
require "minitest/autorun"

describe "roman" do
  [
    [1,"I"],
    [2,"II"],
    [3,"III"],
    [4,"IV"],
    [5,"V"],
    [6,"VI"],
    [7,"VII"],
    [9,"IX"],
    [10,"X"],
    [14,"XIV"],
    [19,"XIX"],
    [22,"XXII"],
    [36,"XXXVI"],
    [51,"LI"],
    [49,"XLIX"],
    [50,"L"],
    [78, "LXXVIII"],
    [90, "XC"],
    [100,"C"],
    [671,"DCLXXI"],
    [1000,"M"],
    [5000,"MMMMM"],
    [5803,"MMMMMDCCCIII"],
    [10000,"MMMMMMMMMM"],
    [2008,'MMVIII']
  ].each do |input,out|

    it "converts the number #{input} to the string #{out}" do
      roman(input).must_equal "#{out}"
    end

  end
end