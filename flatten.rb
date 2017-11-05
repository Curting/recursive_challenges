def flatten(ary, result = [])
  ary.each do |e|
    if e.class == Array
      flatten(e, result)
    else
      result << e
    end
  end

  result
end

puts flatten([[1, [8, 9]], [3, 4]]).inspect # => [1, 8, 9, 3, 4]