class PigLatinizer
  attr_reader :phrase

  def initialize
    @phrase = phrase
  end

  def piglatinize(word)
    binding.pry
    word.match(/\A(a|e|i|o|u|y)/)
  end

end
