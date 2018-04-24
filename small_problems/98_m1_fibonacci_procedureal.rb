def fibonacci(integer)
  array = []
  array.fill(0..integer) do |index|
    case index
    when 0 then array[0] = 0
    when 1 then array[1] = 1
    else array[index] = array[index-2] + array[index-1]
    end
  end
  array[integer]
end

p fibonacci(5) == 5
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
