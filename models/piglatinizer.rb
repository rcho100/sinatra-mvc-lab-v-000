class PigLatinizer
  attr_reader :phrase

  def initialize
    @phrase = phrase
  end

  def piglatinize(word)
    binding.pry
    if word.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
      word + "way"
    else
      word_array = word.split("")
      con = []
      unless word_array.first.match(/\A(a|e|i|o|u|y)/)

        con << word_array.shift
      end
      word_array.join("") + con.join("") + "ay"
    end
  end

end
