def multisum(integer)
  array = 1.upto(integer).select do |num|
    num % 3 == 0 || num % 5 == 0
  end
  array.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

=begin
PEDAC
problem
  Write a method that searches for all multiples of 3 or 5
  that lie between 1 and some other number,
  and then computes the sum of those multiples.
  For instance, if the supplied number is 20,
  the result should be 98
  (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

  You may assume that the number passed in is an integer
  greater than 1.
Examples
  see above
Data Structure
  input integer
  rules? array?
  output integer
Algorithm
  def m input number
  array = 1 upto number select do |num|
    num % 3 == 0 || num % 5 == 0
  end
  array.reduce(:+)
=end