def lights_on(integer)
  array = []
  array.fill(false, 0, integer)
  interval = 1

  while interval <= array.count
    array.each_with_index do |bool, index|
      if (index + 1) % interval == 0
        array[index] = !bool
      end
    end
    interval += 1
  end

  new_array = []
  array.each_with_index do |bool, index|
    new_array << index if bool
  end

  new_array.map { |num| num + 1 }
end

p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]
