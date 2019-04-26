def fizzbuzz(start_int, end_int)
  array = (start_int..end_int).to_a.map do |int|
    case
    when int % 3 == 0 && int % 5 == 0 then "FizzBuzz"
    when int % 3 == 0 then "Fizz"
    when int % 5 == 0 then "Buzz"
    else int
    end
  end
  puts array.join(", ")
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
