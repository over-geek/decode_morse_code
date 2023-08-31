MORSE_CODE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
}

def decode_char(morse_code)
    MORSE_CODE[morse_code]
end

def decode_word(morse_code_word)
    morse_characters = morse_code_word.split
    decoded_characters = morse_characters.map do |morse_character|
        decode_char(morse_character)
    end
    decoded_characters.join
end

def decode_sentence(morse_code_sentence)
    sentences = morse_code_sentence.split(' ')
    sentences.map { |sentence| decode_word(sentence) }.join(' ')
end

message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...";
decoded_message = decode_sentence(message)
puts decoded_message