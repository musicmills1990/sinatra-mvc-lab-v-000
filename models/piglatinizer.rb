class PigLatinizer


def piglatinize(input_str)
  x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
  puts x
  x
end


  def piglatinize_word(word)
 if word[0].match(/[aAeEiIoOuU]/)
   word << "way"
   binding.pry
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
