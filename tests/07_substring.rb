# write a method that will return a substring based on specific indices

def substring(string, start_num, end_num=nil)
  end_num = start_num if end_num.nil?
  string.slice(start_num..end_num)
end


# p substring("honey", 0, 2) == "hon"
# p substring("honey", 1, 2) == "on"
# p substring("honey", 3, 9) == "ey"
# p substring("honey", 2)    == "n"


# write a method that finds all substrings in a string. No. 1 letter words

# counters, etc.
# start at 0 until string.lenth
# counter += 1


def substrings(string)
  start_counter = 0
  array = []

  until start_counter == string.size

    end_counter = start_counter + 1

    until end_counter == string.size
      array << substring(string, start_counter, end_counter)
      end_counter += 1
    end

    start_counter += 1
  end
  array
end


# p substrings("band") == ["ba", "ban", "band", "an", "and", "nd"]
# p substrings("world") == ["wo", "wor", "worl", "world", "or", "orl", "orld", "rl", "rld", "ld"]
# p substrings("ppop") == ["pp", "ppo", "ppop", "po", "pop", "op"]


# write a method that will return all palindromes with a string

# get an array by calling substrings
# iterate over the array and check against reverse

def palindromes(string)
  array = substrings(string)
  array.select { |sub| sub == sub.reverse }
end


# p palindromes("ppop") == ["pp", "pop"]


# write a method that finds the largest string that is a palindrome within a string

def largest_palindrome(string)
  palindromes(string).max {|a, b| a.size <=> b.size }
end

p largest_palindrome("ppop") == "pop"
