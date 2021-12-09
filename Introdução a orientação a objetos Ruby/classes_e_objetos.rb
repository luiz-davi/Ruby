# Por convenção do Ruby, atributos tem seus subnomes separados por '_'
# No caso das classes, os nomes são em CamelCase
# Declarando uma classe
class NomeClasse
end

# Criando um objeto
objeto = NomeClasse.new

# Vale ressaltar que em Ruby, objetos e variáveis, como em Java, são coisas distintas.
# O objeto existe de verdade na memória física, as variáveis são como posteiros, que apontam para um objeto
# Isso pode ser demonstrado no seguinto exemplo
puts objeto.object_id

# Aqui, criamos outra variável quer vai apontar para o mesmo objeto
novo_objeto = objeto
puts novo_objeto.object_id
# Ambos apontam para o mesmo ID na memória

# Um exemplo mais expressivo
nome = "davi"
puts "#{nome}  #{nome.object_id}"

novo_nome = nome

puts "#{novo_nome}  #{novo_nome.object_id}"
# Os dois apostam para o mesmo objeto String
nome.upcase!
puts "#{novo_nome}  #{novo_nome.object_id}"
# Perceba que o objeto é modificado por uma variável, e essa mudança pode ser enxergada por
# outra variável que referencia o mesmo objeto.
