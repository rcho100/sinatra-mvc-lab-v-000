class PigLatinizer
  attr_reader :phrase

  def initialize
    @phrase = phrase
  end

  def piglatinize(word)
    if word.match(/\A(a|e|i|o|u|y)/)
      return word + "yay"
    else
      word_array = word.split("")
      con = []
      unless word_array.first.match(/\A(a|e|i|o|u|y)/)

        con << word_array.shift
      end
      word_array.join("") + con.join("")
    end
  end

end
