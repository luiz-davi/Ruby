# Retorna um array de chars com as letras da string
puts "Davi".chars
puts "<-" * 10

# Retorna um conjunto específico de char da string
puts "Davi"[0,2]

# Multiplica strings X vezes
puts "<-" * 10

# Remover espaços em branco de uma string
puts "      Davi       ".strip
puts "<-" * 10

# Maiúsculo e minpusculo
puts "Davi".upcase
puts "Davi".downcase
puts "<-" * 10

# Colocar apenas a primeira letra em Maiúsculo
puts "dAVI".capitalize
puts "<-" * 10

# Divide a string de acordo com um caracter especial especificado(o padrão é um espaço)
puts "Davi testa ruby_Rails".split
puts "Davi-testa-ruby_Rails".split("-")
puts "<-" * 10

# Retornar uma substring dentro da string
p "Davi estudando ruby"[0,5]
puts "<-" * 10

# Formatando numeros
numero = 21
puts "o numero é %d50" % numero

# Upcase e Upcase!
nome = "Davi"

# Será gerada uma nova variável, ou seja, a variável nome permanecerá igual
puts nome.upcase

# Reeescreve o valor da variável pela mesma string, porém com os caracteres maiúsculos
puts nome.upcase!

# Gsub, fazer substituições na string
mensagem = "hello Wolrd, nome"

# O gsub recebe dois parâmetros, o primeiro é aquele que será substituido, e o segundo é a nova string
puts mensagem.gsub("nome", "Davi")
