# determine if an integer is prime.

# range from 2 to integer
# iterate of the range by turning it into an array
# each
# if integer % num (from iteration) == 0 then return false
# true

def is_prime?(integer)
  return false if integer <= 1
  (2..integer-1).to_a.each do |divisor|
    return false if integer % divisor == 0
  end

  true
end


p is_prime?(3) == true
p is_prime?(4) == false


# write a method that takes an array of numbers and only returns those that are prime
# iterate over the array
# select those that are prime using the is_prime? method

def select_primes(array)
  array.select { |num| is_prime?(num) }
end

p select_primes([1, 2, 3, 4]) == [2, 3]
p select_primes([4, 6, 8, 10]) == []


# write a method that will take an array of numbers, and return the number of primes in the array.

def count_primes(array)
  select_primes(array).count
end

p count_primes([1, 2, 3, 4]) == 2
p count_primes([4, 6, 8, 10]) == 0
