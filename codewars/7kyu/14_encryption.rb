# For building the encrypted string:
# Take every 2nd char from the string, then the other chars, that are not every 2nd char, and concat them as new String.
# Do this n times!
#
# Examples:
#
# "This is a test!", 1 -> "hsi  etTi sats!"
# "This is a test!", 2 -> "hsi  etTi sats!" -> "s eT ashi tist!"
# Write two methods:
#
# def encrypt(text, n)
# def decrypt(encrypted_text, n)
# For both methods:
# If the input-string is null or empty return exactly this value!
# If n is <= 0 then return the input text.

def encrypt(text, n)
  return text if n <= 0
  front, back = text.chars.partition.with_index { |_, index| index.odd? }
  new_text = (front + back).join
  counter = n - 1
  encrypt(new_text, counter)
end

def decrypt(encrypted_text, n)
  return encrypted_text if n <= 0
  half = encrypted_text.size / 2
  front, back = encrypted_text[0..half-1], encrypted_text[half..-1]
  built_text = back.chars.zip(front.chars).join
  counter = n - 1
  decrypt(built_text, counter)
end

p encrypt("This is a test!", 0) == "This is a test!"
p encrypt("This is a test!", 1) == "hsi  etTi sats!"
p encrypt("This is a test!", 2) == "s eT ashi tist!"
p encrypt("This is a test!", 3) == " Tah itse sits!"
p encrypt("This is a test!", 4) == "This is a test!"
p encrypt("This is a test!", -1) == "This is a test!"
p encrypt("This kata is very interesting!", 1) ==  "hskt svr neetn!Ti aai eyitrsig"
p decrypt("This is a test!", 0) ==  "This is a test!"
p decrypt("hsi  etTi sats!", 1) == "This is a test!"
p decrypt("s eT ashi tist!", 2) == "This is a test!"
p decrypt(" Tah itse sits!", 3) == "This is a test!"
p decrypt("This is a test!", 4) == "This is a test!"
p decrypt("This is a test!", -1) == "This is a test!"
p decrypt("hskt svr neetn!Ti aai eyitrsig", 1) ==  "This kata is very interesting!"
p encrypt("", 0) ==  ""
p decrypt("", 0) ==  ""
