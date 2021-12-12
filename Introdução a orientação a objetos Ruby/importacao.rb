# Para conseguir usar recursos de outros arquivos, é preciso fazer um import
# Nesse caso, iremos importar as classes da pasta classe
require "./classes/pessoa.rb"
require "./classes/carro.rb"

pessoa = Pessoa.new("Davi")
carro = Carro.new("Splinter", pessoa.nome)

puts pessoa.nome
puts carro.modelo

# Além de arquivos criados por nós, os requires servem para importar outra bibliotecas
