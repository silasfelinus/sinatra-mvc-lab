class PigLatinizer

  def piglatinize(text)
    @words = text.split(" ")
    translation = ""
    @words.each {|word| translation = translation + make_it_latin(word) + " "}
    translation[0...-1]
  end

  def make_it_latin(word)
    if starts_with_vowel?(word)
      word + "way"
    else
      word = word.chars.rotate.join until starts_with_vowel?(word) == true
      word + "ay"
    end
  end

  def starts_with_vowel?(word)
    word.scan(/^[aeiou]/i).size > 0
  end

end