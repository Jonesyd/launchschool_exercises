array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2


=begin

line 1, creates an array using the shorthand notation, which can
be helpful for data entry because inverted commas and commas
do not have to be entered. The array is assigned to the variable
name 'array1'

line 2, an empty array is assigned to variable name 'array2'

line 3, array1 is iterated over with the array each method.
The each method takes a block as argument. blocks can access
outer scope variables from their inner scope, so the block has access
to the empty array assigned to array2. Each array item in array1
is concatenated into array 2. The result is that array1 and
array2 are different objects, but each element in array2 points
to the same object in array2

line 4, array1 is iterated over again using the each method.
If the array element starts with a "C" or "S" then the mutating method
upcase! is called. The result is that even though both arrays have
different object numbers, the elements within the arrays point to the same
objects, and thus when the elements in Array1 were mutated, that is
new objects were not created, but the existing objects were modified.


line 5, prints out array 2. The words that start with c and s
are in uppercase.
=end
