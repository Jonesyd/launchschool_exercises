def short_long_short(first, second)
  ary = [first, second].sort_by { |obj| obj.size }
  ary[0] + ary[1] + ary[0]
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# other solution (pass in size as a method)

# def short_long_short(first, second)
#   ary = [first, second].sort_by(&:size)
#   ary[0] + ary[1] + ary[0]
# end
