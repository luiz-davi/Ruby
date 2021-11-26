
def palindromo?(palavra)
    palindromo = ""
    palavra.reverse.each_char do |letra|
        palindromo << letra
    end
    puts palavra == palindromo ? "A palavra '#{palavra.capitalize}' é um palíndromo" : "A palavra '#{palavra}' não é um palíndromo"
end

palindromo?(gets.chomp.downcase)
