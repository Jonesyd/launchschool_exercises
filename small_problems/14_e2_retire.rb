def prompt(text)
  puts ">>  #{text}"
end

def this_year
  Time.now.year
end

def years_to_go(age, retire_age)
  retire_age - age
end

def retirement_year(age, retire_age)
  this_year + years_to_go(age, retire_age)
end

prompt "What is your age?"
age = gets.chomp.to_i

prompt "At what age would you like to retire?"
retire_age = gets.chomp.to_i

retire_year = retirement_year(age, retire_age)
work_years = years_to_go(age, retire_age)

prompt "It's #{this_year}. You will retire in #{retire_year}."
prompt "You have #{work_years} years of glorious work to enjoy!"
