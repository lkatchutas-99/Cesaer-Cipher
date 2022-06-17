#/lib/caesar_cipher

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
  puts "You wrote: #{txt} Your ceasaer cipher number with your inputed shift is: #{cipher_val}"
  cipher_val
end

