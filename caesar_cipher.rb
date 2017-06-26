puts "Enter text to be encrypted:"
input = gets.chomp
puts "How many positions should the characters be shifted?"
positions = gets.chomp.to_i
alphabet = ("a".."z").to_a

characters = input.split("")
translation = []
characters.each {|character|
  if alphabet.include?(character.downcase)
    if (alphabet.index(character.downcase)) + positions <= 25
      newchar = alphabet[(alphabet.index(character.downcase)) + positions]
    else
      newchar = alphabet[alphabet.index(character.downcase) - alphabet.length + positions]
    end
  else
    newchar = character
  end
  if character != character.downcase
    translation.push(newchar.upcase)
  else
    translation.push(newchar)
  end
}
puts "Your translated text is: #{translation.join()}"
