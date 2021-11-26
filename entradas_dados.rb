# Captura de dados do usuário
# Para capturar uyma informação de forma simples, basta usar o comando "gets"
nome = gets
# Vale lembrar também que o gets captura o "\n" do usuário
# Para resolver esse problema, basta usaro comando ".chomp()", que remove o último caracter *ESPECIAL*
nome.chomp()
# Esse método retorna uma nova String, não modifica a ja existente

# Há um solução mais elegante, que é colocar o ".chomp" após o gets
nome = gets.chomp()

# Exemplo
puts "Digite seu nome: "
nome = nome = gets.chomp()
puts "Seu nome é: #{nome}"