def decode_char(char)
  morse_code_dic = {
    '.-' => 'a',
    '-...' => 'b',
    '-.-.' => 'c',
    '-..' => 'd',
    '.' => 'e',
    '..-.' => 'f',
    '--.' => 'g',
    '....' => 'h',
    '..' => 'i',
    '.---' => 'j',
    '-.-' => 'k',
    '.-..' => 'l',
    '--' => 'm',
    '-.' => 'n',
    '---' => 'o',
    '.--.' => 'p',
    '--.-' => 'q',
    '.-.' => 'r',
    '...' => 's',
    '-' => 't',
    '..-' => 'u',
    '...-' => 'v',
    '.--' => 'w',
    '-..-' => 'x',
    '-.--' => 'y',
    '--..' => 'z',
    ' ' => ' '
  }
  unless !morse_code_dic.has_key?(char)
    return morse_code_dic[char].upcase
  end
end


