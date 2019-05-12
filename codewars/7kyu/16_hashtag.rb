# The marketing team is spending way too much time typing in hashtags.
# Let's help them with out own Hashtag Generator!
#
# Here's the deal:
#
# It must start with a hashtag (#).
# All words must have their first letter capitalized.
# If the final result is longer than 140 chars it must return false.
# If the input or the result is an empty string it must return false.

# Examples
# " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
# "    Hello     World   "                  =>  "#HelloWorld"
# ""                                        =>  false



def generateHashtag(string)
  hashtag = string.split.map(&:capitalize).join
  return false if hashtag.size > 139 || hashtag.size == 0
  hashtag.insert(0, "#")
end


p generateHashtag("") == false # "Expected an empty string to return false")
p generateHashtag(" " * 200) == false # "Still an empty string")
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag" # "Expected a Hashtag (#) at the beginning.")
p generateHashtag("Codewars") == "#Codewars" # "Should handle a single word.")
p generateHashtag("Codewars Is Nice") == "#CodewarsIsNice" # "Should remove spaces.")
p generateHashtag("Codewars is nice") == "#CodewarsIsNice" # "Should capitalize first letters of words.")
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false # "Should return false if the final word is longer than 140 chars.")
p generateHashtag("a" * 139) == "#A" + "a" * 138 # "Should work")
p generateHashtag("a" * 140) == false #, "Too long")
