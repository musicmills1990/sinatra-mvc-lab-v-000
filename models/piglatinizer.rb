class PigLatinizer


def piglatinize(input_str)
  input_str.downcase
  input = input_str.split(",")
  if input[0] == /[aeiou]/
    input.push('way')
  else
    until input[0] == /[aeiou]/
      input << input[0]
      input.shift
    end
      input.push('ay')
  end
    input.join("")
end



end
