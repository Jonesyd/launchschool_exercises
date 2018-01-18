a = 0
result = while a < 10
  p a                 #=> 0
  a += 1
  if a <= 10
    break
  end
end
p a                   #=> 1
p result              #=> nil

p "-------------------------"

b = 0
result_b = while b < 10
  p b                 #=> 0
  b += 1
  break b if b <= 10
end
p b                   #=> 1
p result_b            #=> 1

p "-------------------------"

c = 0
result_c = while c < 10
  p c                 #=> 0
  c += 1
  if c <=10
    break c
  end
end
p c                   #=> 1
p result_c            #=> 1

p "-------------------------"

d = 0
result_d = while d < 10
  p d                 #=> 0
  d += 1
  if d <=10
    break "any old string"
  end
end
p d                   #=> 1
p result_d            #=> "any old string"
