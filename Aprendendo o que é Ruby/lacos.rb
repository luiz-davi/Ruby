# Laço "while"
valor = 5
while valor > 0
    print "#{valor} "
    valor-=1
end
puts "\n"
puts "<-"*10

# Laço "for"
for valor in [1,2,3,4,5]
    print "#{valor} "
end
puts "\n"
puts "<-"*10

# Existe o laço "until", que assim como o "unless", tem como o valor "false"
# como um parâmetro de passagem. Porém, o "until" se comporta como um while
valor = 5
until valor == 10
    print "#{valor} "
    valor += 1
end
puts "\n"
puts "<-"*10

# Comandos que podem ser usados para interagir de dentro do escopo com o laço
# "break" , Sair do laço
# "return" , Sair do laço e do método onde o laço está contido (pode sair da função retornando algua informação)
# "next" , Vai imediatamente para a próxima iteração
# "redo" , Repete o laço do início (a condição não será reavaliada)

# Exemplos
valor = 0
while valor < 10
    puts "Valor é #{valor}"
    valor += 1
    break if valor == 5
end
puts "<-"*10

# O ruby também possui o range, parecido com o do python
# Podemos salvar isso numa varável também: range = 0..5
for x in 0..5
    puts "Sou #{x}"
end
puts "<-"*10

# Cada elemento que responde ao método "each"(cada), pode facilmente substituir um laço
# Em geral listas respondem a esse método
lista = ["davi", "maria", "jose", "joane"]
lista.each do |nome|
    puts "Me chamo #{nome}"
end
puts "<-"*10

# Estrutura de repetição utilizando hash e ".each"
hash = {nome: "Davi", idade: 21}
hash.each do |chave, valor|
    puts "Minha chave é #{chave} com o valor #{valor}"
end
puts "<-"*10

