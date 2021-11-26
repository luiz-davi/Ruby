# Caracteres de escape quandoi se utiliza apas duplas("")
#   \n = quebra de linhas
#   \t = Tab
#   \" = Aspas, aspas aparecerão no texto
nome = "Davi"

# Interpolação com aspas duplas
mensagem = "Bem vindo, #{nome}"
puts mensagem

# Para definir strings muito grandes, utilizar o [Heredoc]
mensagem = <<~TXT
    Olá #{nome}
    
    Bem vindo(a) ao meu programa

    Obrigado(a)
TXT
puts mensagem

#Strings com aspas simples 
#Aspas Simples não possuem todas as propriedades das aspas suplas("")
nome = 'Davi'

# Tudo que estiver dentro dos parênteses serão transformados em string
nome = %q(123)
puts nome.class

# Métodos da classe String
# Exibindo todos os métodos
puts  nome.public_methods
