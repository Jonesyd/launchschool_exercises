def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >=2
      return
    end
  end
end

p count_sheep

# 0
# 1
# 2
# nil - because there is no argument to return (return returns nil if there is no arguement)
