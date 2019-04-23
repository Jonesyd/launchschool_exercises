def integer_to_string(integer)
  return "0" if integer == 0
  array = []
  array = recursion_excursion(integer, array)
  convert_to_string(array)
end

def recursion_excursion(integer, array)
  number, remainder = integer.divmod(10)
  array.unshift(remainder)
  return if number == 0
  recursion_excursion(number, array)
  array
end

def convert_to_string(array)
  array.map { |int| rules_hash[int] }.join
end

def rules_hash
  {0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4",
  5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9"}
end

p integer_to_string(4321) == '4321'
p integer_to_string(5000) == '5000'
p integer_to_string(0) == '0'
p integer_to_string(50132753200) == '50132753200'
