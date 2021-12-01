#Assuming that the argument for parameter is either a positive or negative integer
#Assuming that string argument contains only letters in the alphabet and no special characters or numbers

def ceasar_cipher(string, shift)
  if shift.abs > 26
    if shift < 0
      shift = shift.abs % 26
      shift = shift * -1
    else
      shift = shift.abs % 26
    end
  end
  
  new_string = string.split('')
  
  new_string = new_string.map do |letter|
    letter.ord
  end
  
  new_string = new_string.map do |char_number|
    shift_number = 26 - shift.abs
    
    a, z = if char_number.between?(65, 90)
      [65, 90]
    elsif char_number.between?(97, 122)
      [97, 122]
    end
    
    if (char_number + shift) > z
      char_number -= shift_number
    elsif (char_number + shift) < a
      char_number += shift_number
    else
      char_number += shift
    end
  end
  
  new_string = new_string.map { |char| char.chr }
  new_string = new_string.join('')
  puts new_string
end

ceasar_cipher('cat', -55)
