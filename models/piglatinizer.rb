class PigLatinizer


def piglatinize(input_str)
  x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
  puts x
  x
end


  def piglatinize_word(word)
 if word[0].match(/[aAeEiIoOuU]/)
   word << "way"
   word.join("")
end


def piglatinize_sentence(sentence)
  sentence.split.collect{|word| piglatinize_word(word)}.join(" ")
end


end
