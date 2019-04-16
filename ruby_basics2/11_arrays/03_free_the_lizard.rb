pets = ["cat", "dog", "fish", "lizard"]
my_pets = pets[2..3]

my_pets.delete_at(1)  # solution is .pop

puts "I have a pet #{my_pets[0]}"
