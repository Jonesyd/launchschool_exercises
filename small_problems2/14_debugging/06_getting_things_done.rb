require "pry-byebug"

def move(n, from_array, to_array)
  counter = n
  to_array << from_array.shift
  counter -= 1
  return if counter == 0
  move(n -1, from_array, to_array)
end

todo = ["study", "walk the dog", "coffee with Tom"]
done = ["apply sunscreen", "go to the beach"]

move(2, todo, done)

p todo
p done
