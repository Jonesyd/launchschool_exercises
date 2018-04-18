def substrings_at_start(string)
  array = []
  1.upto(string.size) { |num| array << string.slice(0,num) }
  array
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
