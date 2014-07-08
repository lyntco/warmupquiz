require 'pry'

class Magnitude

  def self.say(num)
    magnitudes = ["trillion","billion","million","thousand"]
    num = num.to_s
    said = ""
    cut_at = -(magnitudes.length * 3.2).to_i
    magnitudes.each do |mag|
      section = num[0..cut_at]
      section.gsub!(/\A0?0?0/, "")
      said += "#{section} #{mag} " unless section == ""
      num.slice! section
      cut_at += 3
    end
    num.gsub!(/\A0?0?0/, "")
    said += num
    puts said
  end

end

Magnitude.say(5599002067890)

# class Magnitude

#   def self.say(num)
#     num = num.to_s
#     said = ""
#     if num.length <= 12 # 999 billion
#       if num.length >= 10 # 1 billion
#         said += "#{num[0..-10]} billion " unless num[0..-10] == "000"
#         num.slice! num[0..-10]
#       end
#       if num.length >= 7 # 1 million
#         said += "#{num[0..-7]} million " unless num[0..-7] == "000"
#         num.slice! num[0..-7]
#       end
#       if num.length >= 4 # 1 thousand
#         said += "#{num[0..-4]} thousand " unless num[0..-4] == "000"
#         num.slice! num[0..-4]
#       end
#       said += num
#     end
#     puts said
#   end

# end

# Magnitude.say(1010567890)

# class Magnitude

#   def self.say(num)
#     said = ""
#     if num <= 999999999999 # 999 billion
#       if num >= 1000000000
#         num = num.to_s
#         said += num[0..-10]
#         said += " billion "
#         num.slice! num[0..-10]
#         said += num[0..-7] + " million "
#         num.slice! num[0..-7]
#         said += num[0..-4] + " thousand "
#         num.slice! num[0..-4]
#         said += num
#       elsif num >= 1000000 # 1 million
#         num = num.to_s
#         said += num[0..-7] + " million "
#         num.slice! num[0..-7]
#         said += num[0..-4] + " thousand "
#         num.slice! num[0..-4]
#         said += num
#       elsif num >= 1000 # 1 thousand
#         num = num.to_s
#         said += num[0..-4] + " thousand "
#         num.slice! num[0..-4]
#         said += num
#       else
#         said += num.to_s
#       end
#     end
#     puts said
#   end

# end

# Magnitude.say(4567890)