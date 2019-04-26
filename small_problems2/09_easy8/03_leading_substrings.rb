def substrings_at_start(string)
  counter, array = 0, []
  while counter < string.length
    array << string[0..counter]
    counter += 1
  end
  array
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
