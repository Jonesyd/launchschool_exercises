hash = {first: nil, second: nil}

hash.each do |key, value|
  puts "Enter the #{key} number:"
  hash[key] = gets.chomp.to_i
end

results_hash = {
"+"  => hash[:first] + hash[:second],
"-"  => hash[:first] - hash[:second],
"*"  => hash[:first] * hash[:second],
"/"  => hash[:first] / hash[:second],
"%"  => hash[:first] % hash[:second],
"**" => hash[:first] ** hash[:second]
}

results_hash.each do |operation, result|
  puts "#{hash[:first]} #{operation} #{hash[:second]} = #{result}"
end
