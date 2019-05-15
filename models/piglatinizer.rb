class PigLatinizer
  attr_reader :phrase

  def initialize
    @phrase = phrase
  end

  def piglatinize(word)
    if word.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
      word + "way"
    else
      word_array = word.split("")
      con = []
      unless word_array.first.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
        binding.pry

        con << word_array.shift
      end
      word_array.join("") + con.join("") + "ay"
    end
  end

end
