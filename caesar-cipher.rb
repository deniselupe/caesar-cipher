def ceasar_cipher(string, shift)
  # Support shift values that are less than -26 and greater than 26
  if shift.abs > 26
    if shift < 0
      shift = shift.abs % 26
      shift = shift * -1
    else
      shift = shift.abs % 26
    end
  end
  
  new_string = string.split('')
  new_string = new_string.map { |letter| letter.ord }
  
  new_string = new_string.map do |char_number|
    shift_number = 26 - shift.abs
    
    # .ord values for 'A' to 'Z' is 65-90, and 'a' to 'z' is 97-122
    # Return values as-is that are not letters in the alphabet
    (a, z) = case char_number
      when 65..90 then [65, 90]
      when 97..122 then [97, 122]
      else next char_number
    end
    
    # Conditional logic that wraps alphabetical letters from Z to A
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

ceasar_cipher('Cat123xYZ!', -55)
