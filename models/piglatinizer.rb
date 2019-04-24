class PigLatinizer
  def piglatinize(phrase)
    words = phrase.split(" ")
    words.collect {|w| to_pig_latin(w)}.join(" ")
  end

  def to_pig_latin(word)
    parts_of_word = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
    start = parts_of_word[1]
    rest = parts_of_word[2] + (parts_of_word[3] || "")
    if start.length>0
      "#{rest}#{start}ay"
    else
      "#{rest}way"
    end
  end
end
