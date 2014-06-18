class Granny

  def self.talk
    puts "Talk to Granny. You havent spent time with her in ages."
    count = 0
    until count == 3
      response = gets.chomp
      if response == "BYE"
        count += 1
        puts "What's that, honey, I didn't hear you.." unless count == 3
      elsif response != response.upcase
        puts "HUH?! SPEAK UP, SONNY!"
        count = 0
      else
        year = (1930..1950).to_a.sample
        puts "NO, NOT SINCE #{year}!"
        count = 0
      end
    end
    puts "You left your Grandma like the heartless grandchild you are."
  end

end

Granny.talk