def age(name="Teddy")
  age = rand(20..200)
  puts "#{name} is #{age} years old"
end

puts age
puts age("Jonesy")
