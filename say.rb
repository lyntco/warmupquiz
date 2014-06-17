class Say

  def initialize(num)
    @num = num.to_s
  end

  def small_numbers(num)
    %(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[num]
  end

  def tens(num)
    %(twenty thirty forty fifty sixty seventy eighty ninety)[num]
  end

  def num_to_eng
    last_dig = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    last = last_dig[ @num[-1].to_i ]
    first = ""
    if @num.length > 1
      if @num[0].to_i > 1
        first_dig = ["","","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
        first = first_dig[ @num[0].to_i ]
      else
        last_dig = ["ten","eleven","twelve","thirteen","forteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
        last = last_dig[ @num[-1].to_i ]
      end
    end
    return first + "-" + last unless first == "" || last == ""
    return first + " " + last unless first == ""
    last
  end

  def in_english
    word = num_to_eng
    puts word
  end

end

Say.new(1).in_english
Say.new(6).in_english
Say.new(9).in_english
Say.new(10).in_english
Say.new(15).in_english
Say.new(21).in_english
Say.new(30).in_english
Say.new(56).in_english
Say.new(79).in_english


# small numbers 0 - 19
# tens 20 - 90
# one hundreds 100 - 900
# this way is more maintainable
# %(one two three four) # => ["one","two","three","four"]