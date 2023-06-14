class MorseCodeDecoder
  @@morse_code_dict = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  def self.decode_char(morse_char)
    @@morse_code_dict[morse_char] || ''
  end

  def self.decode_word(morse_word)
    morse_chars = morse_word.split(' ')
    decoded_word = ''
    morse_chars.each do |morse_char|
      decoded_char = decode_char(morse_char)
      decoded_word += decoded_char
    end
    decoded_word
  end
end
