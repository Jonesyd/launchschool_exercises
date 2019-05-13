# write a method that takes two numbers. I thsould print out all primes between the two numbers.

def prime?(integer)  #3
  (2..(integer-1)).to_a.each do |divisor|
    return false if integer % divisor == 0
  end
  true
end

def find_primes(first, last)
  (first..last).to_a.select do |num|
    puts num if prime?(num)
  end
  nil
end

p find_primes(3, 10) #=> 3, 5, 7
