class PigLatinizer


def piglatinize(input_str)

end

  def piglatinize_word(word)
  if word[0].match(/[aAeEiIoOuU]/)
    word << "way"
  else
    until word[0].match(/[aAeEiIoOuU]/)
      word << word[0]
      word.shift
    end
      word << "ay"
  end
    word.join("")
end

def piglatinize_sentence(sentence)
  sentence.split.collect{|word| piglatinize_word(word)}.join(" ")
end


end
