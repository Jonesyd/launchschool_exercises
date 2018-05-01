def egyptian(int_a, int_b) #method 1

  counter = 1
  until Rational(int_a, int_b) == Rational(rational)
    rational = Rational(int_a, int_b)



    counter += 1
  end




  # include one if it is less than the first number
  # if not skip
  # include two if first num + current num < current num
  # create a new fraction each time.
  # i.e. subract one from the current denominator and numerator
  # numerator always equals one
end

egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

=begin
PEDAC
problem
  An Egyptian Fraction is the sum of a series of distinct unit fractions (no two are the same), such as:

  Write two methods:
    one that takes a Rational number as an argument, and
    returns an Array of the denominators that are part of an Egyptian Fraction representation of the number, and

    another that takes an Array of numbers in the same format, and calculates the resulting Rational number.

  You will need to use the Rational class provided by Ruby.

Examples (test cases) above
Data Structure
  input int int
  variables and build array?
  output array

Algorithm
  use Relational#denominator
  use Relational#numerator
  def egyptian(int_a, int_b) #method 1

    counter = x
    until relational(int_a, int_b) == relational(numerator, denominator)

      counter += 1
    end

    # iterate up until .. infinity
    # start at one.
    # include one if it is less than the first number
    # if not skip
    # include two if first num + current num < current num
    # create a new fraction each time.
    # i.e. subract one from the current denominator and numerator


  end




=end
