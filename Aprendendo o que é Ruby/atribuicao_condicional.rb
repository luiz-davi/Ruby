# Existe várias formas de fazer uma atribuição condicional
# Exemplo 1
nome = "Davi" if nome.nil?
puts nome
puts "<-"*10

# Exemplo 2
nome = nil
nome = "Davi" if !nome
puts nome
# Uma form mais elegante é usando o unless
nome = nil
nome = "Victor" unless nome
puts nome
puts "<-"*10

# Essas são formas manuais de fazer atribuição condicional
# Existe essa forma mais simplificada de fazer atribuição condicional
nome = nil
nome ||= "Jack"
puts nome
puts "<-"*10

# É possível criar as variáveis dinamicamente
nome_teste ||= "Luciana"
puts nome_teste