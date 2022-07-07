def caesar_cipher (string, key)

    string_array = string.split("")

    string_to_numbers = []

    string_array.each do |letter|
        string_to_numbers.push(letter.ord)
    end

    p string_to_numbers

    cypher_numbers = []

    string_to_numbers.each do |number| 
        if number < 65 || (number > 90 && number < 97) || number > 122
        # check if the corresponding character isn't a letter and push it to the new array
            cypher_numbers.push(number) 
        elsif number > 64 && number < 91
        # check if the corresponding character is a capital letter and push it to the new array
            cypher_numbers.push(
                if number + key > 90
                   number + key -26 
                else 
                    number + key 
                end) # wrap to the start of the alhpabet if needed
        elsif number > 96 && number < 123
        # check if the corresponding character is a lower case letter and push it to the new array
            cypher_numbers.push(
                if number + key > 122
                    number + key -26 
                else 
                    number + key 
                end) # wrap to the start of the alphabet
        end
    end

    p cypher_numbers

    final_cipher = []

    cypher_numbers.each do |number|
        final_cipher.push(number.chr)
    end

    p final_cipher.join

end

caesar_cipher("What a string!", 5)
