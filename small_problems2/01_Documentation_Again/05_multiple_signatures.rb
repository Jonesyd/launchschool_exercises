a = %w(a b c d e)

puts a.fetch(7)                 # throws an Index error.
puts a.fetch(7, "beats me")     # "beats me"
puts a.fetch(7) { |index| index ** 2 }  # 49 block is applied
