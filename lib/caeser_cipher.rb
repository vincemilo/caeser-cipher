def caeser_cipher(string, shift)
    
    #convert string to ascii
    ascii = string.bytes

    shifted = ascii.map do |e|
        #check if alphabetic
        if e.between?(65,90)
            #wrap around for lowercase
            if shift.positive?
                e + shift > 90 ? (e + shift) - 26 : e + shift
            else
                e + shift < 65 ? (e + shift) + 26 : e + shift
            end
        elsif e.between?(97,122)
            #wrap around for uppercase
            if shift.positive?
                e + shift > 122 ? (e + shift) - 26 : e + shift
            else
                e + shift < 97 ? (e + shift) + 26 : e + shift
            end
        else
            e
        end
    end

    rejoin = shifted.map { |e| e.chr }.join
    p rejoin
end

print "Enter the message you would like to encode: "
string = gets.chomp

print "Enter shift factor: "
shift = gets.chomp.to_i

caeser_cipher(string, shift)