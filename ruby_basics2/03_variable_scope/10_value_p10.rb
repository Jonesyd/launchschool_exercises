a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# 13 Even thought the method was not passed a as an arguement, a block is used in the method and that block can reach outer scopes. Therefore the method modifiees outer scope varialbe a
# incorrect. The block's scope is still contained to the method. And method definitions are self contained with respect to variables.
