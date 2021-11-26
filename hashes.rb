# Hashes se equiparam a dicionários do python
# Inicialização
hash = {}
hash = Hash.new

# Inicialização de componentes de um hash
hash = {"nome"=> "davi", "idade"=> 21}

# Ou podemos tracar as chaves por símbolos, que fica computacionalmente mais rápido
hash= {:nome => "Davi", :idade => 21}

# Um rearranjo mais elegante dessa estrutura, seria:
hash = {nome: "Davi", idade: 21}

# Acessando valores dentro do hash
p hash.class
p hash[:nome], hash[:idade]
p "<-"*10

# Para alterar o valor dentro de um hash
hash[:nome] = "Rafael"
p hash[:nome]
p "<-"*10

# Métodos úteis para se utilizar com hashes

# Retorna um array com todas as chaves
p hash.keys
# Retorna um array com todos os valores
p hash.values
# Retorna um booleano informando de o hash está vazio
p hash.empty?