require './lib/caesar_cipher'

describe '#analyze_letter' do
  it 'Returns next lower case letter' do
    expect(analyze_letter('r')).to eql('s')
  end
  xit 'Returns next upper case letter' do
    expect(analyze_letter('O')).to eql('P')
  end
  xit "Returns 'a' if lowercase letter is 'z'" do
    expect(analyze_letter('z')).to eql('a')
  end
  xit "Returns A if uppercase letter is 'Z'" do
    expect(analyze_letter('Z')).to eql('A')
  end
end 

describe '#caesar_cipher' do
  xit "Returns 'khoor' if 'hello' is shifted 3 times to the right" do
    expect(caesar_cipher('hello', 3)).to eql('khoor')
  end
  
  xit "Returns 'hello' if 'khoor' is shifted 3 times to the left" do
    expect(caesar_cipher('khoor', -3)).to eql('hello')
  end

  xit "Returns 'defg' if 'wxyz' is shifted 7 times to the right" do
    expect(caesar_cipher('wxyz', 7)).to eql('defg')
  end

  xit "Returns 'wxyz' if 'defg' is shifted 7 times to the left" do
    expect(caesar_cipher('defg', -7)).to eql('wxyz')
  end
end