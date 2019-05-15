class PigLatinizer
  attr_reader :phrase

  def initialize
    @phrase = phrase
  end

  def piglatinize(words)
    word_array = words.split(" ")

    if word_array.count > 1
      ind_word = []
      word_array.each do |word|
        if word.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
          ind_word << word + "way"
        else
          letter_array = word.split("")
          con = []
          until letter_array.first.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
            con << letter_array.shift
          end
          ind_word << letter_array.join("") + con.join("") + "ay"
        end
      end
    else
      if words.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
        words + "way"
      else
        letter_array = words.split("")
        con = []
        until letter_array.first.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
          con << letter_array.shift
        end
        letter_array.join("") + con.join("") + "ay"
      end
    end


  end



end
