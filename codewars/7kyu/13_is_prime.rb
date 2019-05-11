# Is Prime
# Define a function isPrime/is_prime() that takes one integer argument and returns true/True or false/False depending on if the integer is a prime.
#
# Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.
#
# Example
# bool isPrime(5) = return true
# Assumptions
# You can assume you will be given an integer input.
# You can not assume that the integer will be only positive. You may be given negative numbers as well (or 0).

def isPrime(num)
  return false if num <= 1
  (2..num-1).to_a.select { |int| num % int == 0 }.empty?
end
# 1 is not a prime number


p isPrime(2) == true
p isPrime(4) == false
p isPrime(11) == true
p isPrime(0) == false
p isPrime(-11) == false
p isPrime(25) == false
