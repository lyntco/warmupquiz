class Anagram

  def self.find( word, compare )
    compare.each do |compare_word|
      puts compare_word if word.split(//).sort == compare_word.split(//).sort
    end
  end

end

Anagram.find("listen", %w(enlists google inlets banana))