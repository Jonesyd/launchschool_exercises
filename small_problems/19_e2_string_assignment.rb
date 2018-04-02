name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin
on line 1, The String literal Bob is assigned to the variable name.

On line 2, the variable save name is assigned to the same object that the name variable points to
which is the String literal of "Bob", so both name and same_name
point to the same object.

On line 3, the name variable is mutated by calling the
mutating method #upcase!, which change the state of the object,
and changes its value to all upper case letter, without
changing the object ide.
On

On line 4, Kernal#puts method is passed two arguments.
name and same_name. They both print the uppercase BOB,
because they point to the same space in memory.
=end
