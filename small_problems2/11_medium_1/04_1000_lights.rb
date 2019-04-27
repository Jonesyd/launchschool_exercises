def lights_on(integer)
  counter = 1
  array = Array.new(integer) { false }

  until counter > integer
    array.map!.with_index { |toggle, index| (index + 1) % counter == 0 ? !toggle : toggle }
    counter += 1
  end

  array.map!.with_index {|toggle, index| index + 1 if toggle }
  array.delete_if {|switch| switch.nil? }
end

p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]
