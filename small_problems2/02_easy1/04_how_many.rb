def count_occurrences(fleet)
  fleet_hash = {}
  fleet.each do |auto|
    key = auto.to_sym
    if fleet_hash.key?(key)
      fleet_hash[key] = fleet_hash[key] + 1
    else
      fleet_hash[key] = 1
    end
  end
  fleet_hash
end


vehicles = [
  "car", "car", "truck", "car", "SUV", "truck",
  "motorcycle", "motorcycle", "car", "truck"
]

result_hash = { car: 4, truck: 3, SUV: 1, motorcycle: 2 }

puts count_occurrences(vehicles) == result_hash
p count_occurrences(vehicles)
