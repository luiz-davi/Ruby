# Símbolos são objetos especiais no ruby
# São criados com idietificadores( : )
# Identificadores podem sem um testo pouro ou uma string
# Símbolos são imutáveis e unicos globalmente
# Ao identificar um símbolo no ruby, esse símbolo é alocado na memória
# Toda vez que o texto referente aquele símbolo for chamado, sempre será usada aquela mesma instância
# São ótimos substitutos para string, quando a finalidade for usá-los como labels

# Por exemplo, uma string, toda vez que instanciada, aloca mais uma posição de memória
puts "davi".object_id
puts "davi".object_id
puts "davi".object_id
puts "davi".object_id
puts "<-"*8

# Já os símbolos, são alocados, mas de forma única e imutável
:nome
puts :nome.object_id
puts :nome.object_id
puts :nome.object_id
puts :nome.object_id
puts "<-"*8

# aplicação com Hashes( análogos a dicionários )
dicionario = {}
dicionario[:nome] = "1"
puts dicionario[:nome].object_id
puts dicionario[:nome].object_id
puts dicionario[:nome].object_id



puts "<-"*8
