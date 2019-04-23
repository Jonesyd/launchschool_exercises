def running_total(array)
  array.map.each_with_object([]) do |element , run_total |
    return run_total if array.empty?
    run_total << run_total.fetch(-1, 0) + element
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
