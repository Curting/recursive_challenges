def palindrome(str)
  if str.length <= 1
    true
  else
    if str[0] == str[-1]
      palindrome(str[1..-2])
    else
      false
    end
  end
end

puts palindrome("jekkej") # => true
puts palindrome("hej") # => false