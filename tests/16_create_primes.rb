# find all the prime numbers between one and an integer provided

# integer input
# array output

# edge cases - 1 is not a prime, zero and less than zero are not primes

# prime cannot be divided by any other number.

# to create a prime range
# 2..integer -1 range to array
# iterate through range.
# return false if the remander of dividing the integer by the array element is zero
# otherwise true

def is_prime?(integer)

  (2..(integer -1)).to_a.each do |num|
    return false if integer % num == 0
  end

  true
end

def primes_up_to(integer)
  (2..integer).to_a.select { |num| is_prime?(num) }
end


p primes_up_to(10)
p primes_up_to(1000)
