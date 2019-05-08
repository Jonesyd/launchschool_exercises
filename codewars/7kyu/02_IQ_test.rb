# Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.
#
# ! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

##############
# split the sting into an array .split(" ")
# create hash of odd and even count
# iterate over the array to build the hash
# work out which on is the lowest, and use that key
# then do an is odd test.
# if true find the index and add 1
# return index (plus 1)


def iq_test(string)
  array = string.split(" ").map(&:to_i)
  hash = { even: 0, odd: 0 }

  array.each { |num| num.even? ? hash[:even] += 1 : hash[:odd] += 1 }

  odd_one_out = nil
  if hash[:even] > hash[:odd]
    array.each { |int| odd_one_out = int if int.odd? }
  else
    array.each { |int| odd_one_out = int if int.even?  }
  end
  array.index(odd_one_out) + 1

end


p iq_test("2 4 7 8 10") #== 3  # Third number is odd, while the rest of the numbers are even
p iq_test("1 2 1 1") #== 2     # Second number is even, while the rest of the numbers are odd
