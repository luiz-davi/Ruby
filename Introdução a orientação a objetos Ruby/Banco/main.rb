require "./conta.rb"
require "./conta_com_taxa.rb"

pessoa1 = ContaTaxa.new("Davi", 100)
pessoa2 = Conta.new("Amanda", 100)

puts pessoa1.saldo
puts pessoa2.saldo

pessoa1.transferir(pessoa2, 30)
puts pessoa1.saldo
puts pessoa2.saldo

pessoa1.transferir(pessoa2, 75)
puts pessoa1.saldo
puts pessoa2.saldo