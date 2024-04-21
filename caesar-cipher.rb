

def caesar_cipher(string, shift_factor)
#array of english alphabets from a-z
alphabets = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  string_letters = string.split("")

  string_letters.map! do |letter|
    if alphabets.include?(letter.downcase)
      if letter == letter.upcase
        letter = alphabets[(alphabets.find_index(letter.downcase)+shift_factor)%26].upcase
      else
        letter = alphabets[(alphabets.find_index(letter)+shift_factor)%26]
      end
    else
      letter
    end
  end
  string_letters.join
end

puts caesar_cipher("cat1",3)
