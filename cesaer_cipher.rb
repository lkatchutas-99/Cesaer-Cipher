print 'This is Caesar Cipher, enter any text: '
text = gets
print 'Ok, now enter a number: '
shift_by_num = gets
i = 0
until /[0-9]/.match(shift_by_num) || i > 5
  print 'Must enter a number: '
  shift_by_num = gets
  i += 1
  if i == 5
    puts 'You entered invalid values too many times, you\'re invalid for me, goodbye'
    shift_by_num = nil
    break
  end
end

shift_by_num = shift_by_num.to_i

def ceasar_cipher(txt, shift)
  if shift
  cipher = txt.split('').reduce(Array.new()) do |arr, letter|
    for i in (0...shift)
      if letter == 'z'
        letter = 'a'
      elsif letter == 'Z'
        letter = 'A'
      else
        letter = letter.next
      end
    end
    arr.push(letter)
    arr
  end.join
  #puts cipher
  cipher
end
end

ceasar_cipher(text, shift_by_num)
