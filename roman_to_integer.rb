def roman_to_int(roman, result = 0)

  roman_mapping = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  roman_mapping.keys.each do |letter|
    if roman.start_with?(letter) # M
      roman.sub!(letter, "") # MXVII
      result += roman_mapping[letter] # 1000
      result = roman_to_int(roman, result) # MXVII, 1000
      break
    end
  end

  result
end

puts roman_to_int("MMXVII") # => 2017
puts roman_to_int("CMLXIV") # => 964