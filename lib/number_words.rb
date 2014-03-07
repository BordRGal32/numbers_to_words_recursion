def number_words(number, index=0)
  one_nineteen = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",  6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
  tens = {2 => "twenty ", 3 => "thirty ", 4 => "forty ", 5 => "fifty ", 6 => "sixty ", 7 => "seventy ", 8 => "eighty ", 9 => "ninety "}
  big_numbers = {0 => "", 1 => " thousand ", 2 => " million ", 3 => " billion ", 4 => " trillion ", 5 => " quadrillion ", 6 => " quintillion "}

  results = ""

  if number > 999
    results = (number_words((number / 1000), index + 1))

    number = number % 1000
  end

  if number > 99
    results += one_nineteen[number / 100] + " hundred " + number_words(number%100)
  end
  if number < 100 && number > 19
    results += tens[number/10] + number_words(number%10)
  end
  if number < 20 && number > 0
    results += one_nineteen[number]
  end

 results += "#{big_numbers[index]}"

end

print number_words(45615324534987)
