def int_to_roman(int, result = [])

  roman_mapping = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  roman_mapping.keys.each do |number|
    if int - number >= 0
      int -= number # => 1017
      result << roman_mapping[number] # => M
      int_to_roman(int, result)
      break
    end
  end
  
  result.join
end

puts int_to_roman(2017) # => "MMXVII"
puts int_to_roman(964) # => "CMLXIV"