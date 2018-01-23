
def string_input
  question = ">> Enter SOMETHING for us to repeat (hit enter when done!):"
  answer = ""
  until answer.empty? == false
    puts question
    answer = gets.chomp.to_s
  end
  answer
end

def integer_input
  question = ">> Enter an number greater than zero"
  answer = 0
  until answer > 0
    puts question
    answer = gets.chomp.to_i
    puts ""
  end
  answer
end

def repeater(string, integer)
  integer.times {|n| puts string}
end

string  = string_input
integer = integer_input
repeater(string, integer)


####### NOTES ##########

#improvement: input was given!!! Use that. Spend more time upfront!

#problem
  #write a method with two arguments
  #input a. string, b. integer
  #output = print the string integer times.
#Example / Test cases
  #happy paths
  #edge cases
    #focus on inputs
    #emptiness
    #boundaries
    #repitition
    #uppercase / lowercase
    #different data types
  #input / outputs
  #failures e.g. not a string or not an integer

      # "hello", 3 =>  Hello
      #                Hello
      #                Hello

      # 3, 3 => 3  3  3

      # 3, "hello" => "last number must be an integer that is greater than zero"

      # "", 3 => "please enter something to be repeated"

      # ["a", "b"], 2 => ["a", "b"]
      #                  ["a", "b"]

      # {:a => "aaa"}, 2 => {:a=>"aaa"}
      #                     {:a=>"aaa"}

  #Data Type
    #first argument = String
    #second argument = Integer (greater than zero)
  #Algorithm
    #ask for input for first argument
    #first argument to_s (within a loop to test not an empty string)
    #second argument to_i (within a loop to test integer greater than zero)
    #puts first_argument * second_argument
  #Abstraction
    # could I write a method for loops?
    # write a two methods to get practice writing methods.
    # method_one ask for input and test of string
    # method_two ask for integer and test of integer

  #Code
