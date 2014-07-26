class FindAlphabeticalWords

  def self.find( compare )
    aplha_words = []
    compare.each do |word|
      aplha_words << word if word.split(//) == word.split(//).sort
    end
    p aplha_words
  end

end

dictionary_words = []
File.foreach("2of4brif.txt") { |line| dictionary_words << line.chomp }

FindAlphabeticalWords.find( dictionary_words )

