def prompt(msg)
  puts "=> #{msg}"
end

def shouting?(name)
  name[-1] == "!"
end

def shout(name)
  name.slice(0..-1).upcase
end

prompt "What is your name?"
name = gets.chomp

if shouting?(name)
  prompt "HELLO #{shout(name)} WHY ARE WE SCREAMING?"
else
  prompt "Hello #{name.capitalize}"
end
