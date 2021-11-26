# Arrays de listas de valores separados por vírgula
# Formas de declaração
lista = []
lista = Array.new
# Podem guardar todo tipo de dado
lista = [1, "a", true]
p lista
puts "<-" * 10

# Itens da lista podem ser acessados através de índices
p lista[2]
puts "<-" * 10

#  Há dois tipos diferentes de adicionar itens a lista
lista.append("davi")
lista << false
p lista
puts "<-" * 10

# Métodos úteis ao trabalhar com arrays
# Retorna o tamanho
puts lista.length
# Retorna um booleando dizendo se o array está vazio ou não
puts lista.empty?
# Primeiro item da lista
puts lista.first
# último item da lista
puts lista.last
puts "<-" * 10

# Junção de listas
lista_1 = [1,2,3]
lista_2 = [4,5,6]
resultado = lista_1+lista_2
p resultado
puts "<-" * 10


