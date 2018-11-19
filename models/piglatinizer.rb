class PigLatinizer


def piglatinize(input_str)
  x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
  puts x
  x
end


  def piglatinize_word(word)
  word_array = word.split("")
 if word_array[0].match(/[aAeEiIoOuU]/)
   word_array << "way"
 else
   until word_array[0].match(/[aAeEiIoOuU]/)
     word_array << word_array[0]
     word_array.shift
   end
   word_array << "ay"
 end
  word_array.join("")
  binding.pry
end


def piglatinize_sentence(sentence)
  sentence.split.collect{|word| piglatinize_word(word)}.join(" ")
end


end
