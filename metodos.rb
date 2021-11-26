# Métodos são declarados com a palavra reservada "def" e tem a seguinte estrutura
# def nome_funcao
#   escopo_funcao
# end

# Métodos com parâmetros
def teste_def(nome1, nome2)
    puts "Você escreveu #{nome1} e #{nome2}"
end

teste_def(gets.chomp(), gets.chomp())
puts "<-"*10

# Retorno de dados em funções
def soma(num1, num2)
    return num1 + num2
end
puts soma(1,3)

# Pode ser feito dessa outra forma
def somaS(num1, num2)
    num1 + num2
    # O ruby reconhece a última linha como o dado a ser retornado
end
puts somaS(3,2)
puts "<-"*10

# Da forma com que ta sendo feita, os parâmetros tem que ser passados de forma sequencial
# Existe essa forma, onde os parâmetros são nomeados, e podem ser passados referenciando as chaves
def soma_nomeada(valor1:, valor2:)
    somaS(valor1, valor2)
end
puts soma_nomeada(valor2: 10, valor1: 5)
puts "<-"*10