def caesar_cipher(message, shift = 0)
    store = message.split("")
    base_upper = 65
    base_lower = 97
    encrypt = store.map do |letter|
        shifted = letter.ord + shift.to_i
        if letter.ord.between?(65,90)
            ((shifted - base_upper) % 26 + base_upper).chr 
        elsif letter.ord.between?(97,122)
            ((shifted - base_lower) % 26 + base_lower).chr
        else 
            letter
        end
    end
    encrypt.join("")
end 

puts caesar_cipher("What a string!", 5)