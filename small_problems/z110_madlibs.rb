require "pry"
require "pry-byebug"

definitions = {
  1 => { noun: "A word that identifies a person, place, thing, or idea (e.g. hat)." },
  2 => { adjective: "a word naming an attribute of a noun., such as red." },
  3 => { verb: "A word that describes an action, state, or occurrence (e.g. ran)." },
  4 => { adverb: "A word that modifies a verb (e.g. quickly)" },
  5 => { ignore: "It's okay to change your mind! - 'ignore' will take you to the next word" }
}

word_collection = {
  noun: [["hat", "dog", "castle"],[]],
  adjective: [["red", "yellow", "spicy"],[]],
  verb: [["runs", "jumps", "kicks"],[]],
  adverb: [["quickly", "slowly", "hungrily"],[]]
}

def prompt(msg)
  puts "=> #{msg}"
end

sentences_array = File.readlines("z110_sentences.txt")

counter = 0

while counter < sentences_array.count
  prompt "Let's change this line!"
  prompt "#{sentences_array[0]}"

  sentences_array.each do |sentence|
    #binding.pry
    working_sentence = sentence.split #.map { |word| word.gsub(/\b#{word}\b/) }.join(" ")

    working_sentence.each do |word|

      answer = nil
      loop do
        prompt "Do you want to change word: '#{word.to_s}'? ('y' or 'n')"
        answer = gets.chomp.downcase
        break if ["y", "n"].include?(answer)
        prompt "Just a 'y' or 'n' thanks"
      end

      next if answer == "n"

      prompt "Select word types are:"

      definitions.each do |num, def_hash|
        def_hash.each do |type, definition|
          prompt "#{num} for '#{type}' [defintion: '#{definition}'] "
        end
      end

      puts ""

      word_type = nil
      loop do
        prompt "What type of word is '#{word}'? (select a number)"
        word_type = gets.chomp.to_i
        break if (definitions.keys).include?(word_type.to_i)
        prompt "Just select a number that corresponds to the word type, thanks"
      end


      next if definitions[word_type].key?(:ignore) ==  true

      # binding.pry
      # word_collection[definitions[word_type]][1] << word
      # word_collection[:adjective][1]

      new_word = word_collection[definitions[word_type]][0].sample

      new_sentence = sentence.gsub(/\b#{word}\b/, new_word)

      prompt new_sentence

    end # word
  end # sentence
  counter += 1
end # while
