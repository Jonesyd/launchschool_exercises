def fizzbuzz(num1, num2)
  array = []
  num1.upto(num2) do |int|
    case
    when int % 5 == 0 && int % 3 == 0
      array << "FizzBuzz"
    when int % 5 == 0
      array << "Buzz"
    when int % 3 == 0
      array << "Fizz"
    else
      array << int
    end
  end
  puts array.join(", ")
end

fizzbuzz(1, 15)
