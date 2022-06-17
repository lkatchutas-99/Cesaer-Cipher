#/lib/caesar_cipher

print 'This is Caesar Cipher, enter any text: '
text = gets

print 'Ok, now enter a number, negative numbers will shift the letter up the alphabet. Input '

shift_by_num = nil

until shift_by_num || /[0-9]/.match(shift_by_num)
  print ' Must be number: '
  shift_by_num = gets.to_i
end

def analyze_letter (letter)
  if letter.eql?('z')
    'a'
  elsif letter == 'Z'
    'A'
  else
    letter.next
  end
end

def ceasar_cipher(txt, shift)
  return if shift.nil?
  
  shift = shift.to_i
  cipher_val = txt.split('').reduce(Array.new) do |arr, letter|
    unless /[^a-zA-Z0-9]/.match(letter)
      (0...(shift < 0 ? 26+shift : shift)).each do
        letter = analyze_letter(letter)
      end
    end
    arr.push(letter)
  end.join
  puts "You wrote: #{origin_val} Your ceasaer cipher number with your inputed shift is: #{cipher_val}"
  cipher_val
end

ceasar_cipher(text, shift_by_num)
