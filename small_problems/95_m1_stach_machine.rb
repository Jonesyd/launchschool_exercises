def minilang(string)
  stack = []
  register = 0
  
  string.split.each do |input|
    case
    when input.to_i.to_s == input then register = input.to_i
    when input == "PRINT" then puts "#{register}"
    when input == "PUSH"  then stack << register
    when input == "MULT"  then register = stack.pop * register
    when input == "ADD"   then register = stack.pop + register
    when input == "POP"   then register = stack.pop
    when input == "DIV"   then register = register / stack.pop
    when input == "MOD"   then register = register % stack.pop
    when input == "SUB"   then register = register - stack.pop
    else puts "NOT A VALID VALID COMMAND"
    end
  end

  register.to_i
end

p minilang('PRINT') == 0 # 0
p minilang('5') == 5
p minilang('5 PUSH 3 MULT PRINT') == 15 # 15
p minilang('5 PRINT PUSH 3 PRINT ADD PRINT') == 8 # 5 # 3 # 8
p minilang('5 PUSH POP PRINT') == 5 # 5
p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT') == 7
p minilang('3 PUSH PUSH 7 DIV MULT PRINT ') == 6 # 6
p minilang('4 PUSH PUSH 7 MOD MULT PRINT ') == 12 # 12
p minilang('-3 PUSH 5 SUB PRINT') == 8 # 8
p minilang('6 PUSH') == 6 # (nothing printed; no PRINT commands)
