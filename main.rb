def decode_char(char)
  morse_code_dic = {
    '.-' => 'a', '-...' => 'b',
    '-.-.' => 'c', '-..' => 'd',
    '.' => 'e', '..-.' => 'f',
    '--.' => 'g', '....' => 'h',
    '..' => 'i', '.---' => 'j',
    '-.-' => 'k', '.-..' => 'l',
    '--' => 'm', '-.' => 'n',
    '---' => 'o', '.--.' => 'p',
    '--.-' => 'q', '.-.' => 'r',
    '...' => 's', '-' => 't',
    '..-' => 'u', '...-' => 'v',
    '.--' => 'w', '-..-' => 'x',
    '-.--' => 'y', '--..' => 'z',
    ' ' => ' '
  }
  return unless morse_code_dic.key?(char)

  morse_code_dic[char].upcase
end

def decode_word(word)
  convert = ''
  word.split.each do |letter|
    convert += decode_char(letter).to_s
  end
  convert
end

def decode_text(text)
  msg = ''
  text.split('   ').each do |word|
    msg += "#{decode_word(word)} "
  end
  msg
end
