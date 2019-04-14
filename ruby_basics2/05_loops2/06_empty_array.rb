names = ["Sally", "Joe", "Lisa", "Henry"]

until names.size == 0 do
  puts names[0]
  names.delete_at(0)
end
