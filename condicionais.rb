# Operadores Relacionais
# == , Comparação de igualdade
# != , Compração de diferença
# > , Comparação de "maior que"
# < , Comparação de "menor que"
# >= , Comparação de "maior ou igual a"
# <= , Comparação de "menor ou igual a"

# Exemplos
valor = 20
if valor > 50
    puts "Eu sou maior que 50"
else
    puts "Eu sou menor que 50"
end
puts "<-"*10

# Operadores lógicos
# ! , Negação
# && , And(e)
# || , Or(ou)
# Exemplo
valor = 65
if valor >= 50 && valor <= 100
    puts "Estou entre 50 e 100"
end
puts "<-"*10

# Quando haver mais de uma condição, será usado um "elsif"
valor = 20
if valor > 50
    puts "Eu sou maior que 50"
elsif valor == 50
    puts "Eu sou 50"
else
    puts "Eu sou menor que 50"
end
puts "<-"*10

# Apenas as palavras reservadas "nil" e "false" conseguem conseder um cenário negativo

# Se for apenas uma condição simples, poderá ser feito da seguinte forma
puts "Eu sou menor que 50" if valor < 50
puts "<-"*10

# Também há uma estrutura inversa ao If(ele reconhece o false como parâmetro de passagem)]
unless valor > 50
    puts "#{valor} não é menor que 50"
end
puts "<-"*10

# Uma simplificação para a estruturas condicionais mais básicas é o operador ternário
valor = 50
puts valor > 50 ?  "Valor não é maior que 50" : "Eu sou menor ou igual a 50"
puts "<-"*10

# Switch cases
linguagem = "Ruby"
case linguagem.capitalize
    when "Java"
        puts "Bem vindo ao curso de Java"
    when "Ruby"
        puts "Bem vindo ao curso de Ruby"
    when "Golang"
        puts "Curso não disponível"
    else
        puts "Não conheço essa linguagem"
    end
puts "<-"*10

# String.to_i, transforma uma string em inteiro



