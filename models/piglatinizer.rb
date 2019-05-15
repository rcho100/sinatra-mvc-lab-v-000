# class PigLatinizer
#   def piglatinize(words)
#     word_array = words.split(" ")
#
#     if word_array.count > 1
#       ind_word = []
#       word_array.each do |word|
#         if word.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
#           ind_word << word + "way"
#         else
#           letter_array = word.split("")
#           con = []
#           until letter_array.first.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
#             con << letter_array.shift
#           end
#           ind_word << letter_array.join("") + con.join("") + "ay"
#         end
#       end
#       ind_word.join(" ")
#     else
#       if words.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
#         words + "way"
#       else
#         letter_array = words.split("")
#         con = []
#         until letter_array.first.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
#           con << letter_array.shift
#         end
#         letter_array.join("") + con.join("") + "ay"
#       end
#     end
#   end
# end



class PigLatinizer
  def piglatinize_word(word)
    if word.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
      word = word + "w"
    else
      letter_array = word.split("")
      con = []
      until letter_array.first.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
        con << letter_array.shift
      end
      word = letter_array.join("") + con.join("")
    end
    word << "ay"
  end

  def piglatinize_sentence(sentence)
    word_array = sentence.split(" ")
    individual_word = []
    word_array.each do |word|
      if word.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
        individual_word << word + "way"
      else
        letter_array = word.split("")
        con = []
        until letter_array.first.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
          con << letter_array.shift
        end
        individual_word << letter_array.join("") + con.join("") + "ay"
      end
    end
    individual_word.join(" ")
  end

  def piglatinize(input_string)
    word_array = input_string.split(" ")
    if word_array.count > 1
      # ind_word = []
      # word_array.each do |word|
      #   if word.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
      #     ind_word << word + "way"
      #   else
      #     letter_array = word.split("")
      #     con = []
      #     until letter_array.first.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
      #       con << letter_array.shift
      #     end
      #     ind_word << letter_array.join("") + con.join("") + "ay"
      #   end
      # end
      # ind_word.join(" ")
    else
      piglatinize_word(input_string)
    end
  end
end
