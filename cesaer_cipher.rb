print 'This is Caesar Cipher, enter any text: '
text = gets

print 'Ok, now enter a number, negative numbers will shift the letter up the alphabet: '
shift_by_num = gets

i = 0

until /[0-9]/.match(shift_by_num) || i == 5
  print "Must enter a number, #{5-i} until we kick you out: "
  shift_by_num = gets
  i += 1
  if i == 5
    puts 'You entered invalid values too many times, you\'re invalid for me, goodbye'
    shift_by_num = nil
  end
end

shift_by_num = shift_by_num.to_i

def analyze_letter (letter)
  if letter == 'z'
    letter = 'a'
  elsif letter == 'Z'
    letter = 'A'
  else
    letter = letter.next
  end
end

def ceasar_cipher(txt, shift)
  unless shift == nil

    cipher = txt.split('').reduce(Array.new()) do |arr, letter|
      unless /[^a-zA-Z0-9]/.match(letter)
        if shift < 0
          for i in (0...(26+shift))
            analyze_letter letter
          end
        else
          for i in (0...shift)
            analyze_letter letter
          end
        end
      end
      unless /[^a-zA_Z0-9]/.match(letter)
        arr.push(letter)
      end
      arr
    end.join
    puts cipher
    cipher
  end
end

ceasar_cipher(text, shift_by_num)
