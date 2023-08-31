class MorseDecoder
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
        decode_characters.join
    end
