require "date"

def years_to_work(age, retirement_age)
  retirement_age - age
end

def retirement_year(years_to_work)
  Date.today.year + years_to_work
end

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_to_work = years_to_work(age, retirement_age)
retirement_year = retirement_year(years_to_work)
year = Date.today.year

puts "It's #{year}. You will retire in #{retirement_year}"
puts "You have only #{years_to_work} years of work to go!"
