def caesar_cipher(str, num) 
    alphabet = ("a".."z").to_a
    ciphered = ""
    str.each_char do |letter|
        if alphabet.index(letter.downcase) == nil
            ciphered += letter
        else
            idx = alphabet.index(letter.downcase)
            new_idx = (idx + num) % 26
            if letter == letter.downcase
                ciphered += alphabet[new_idx]
            else
                ciphered += alphabet[new_idx].upcase
            end
        end
    end

    ciphered
end

p caesar_cipher("hello", 5)
p caesar_cipher("What a string!", 5)