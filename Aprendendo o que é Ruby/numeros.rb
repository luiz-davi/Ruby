# Separadores de números
# O underline não será identificado dentro dos caracteres numéricos
puts 150_300
puts "<-"*8

# Soma de número inteiro com numero flutuante, resulta em flutuante
puts 42.class
puts 42.42.class
puts (42+42.42).class
puts "<-"*8

# Sendo o ruby uma linguagem orietanda a objeto, todo elemento da linguagem é um objeto
# Por exemplo, é possível passar função para interagir com um elemento numério
puts 5.send("+", 3)
puts "<-"*8

# Dito isso, é possível sobrescrever as operações padrões do ruby
# Por exemplo, sobrescrever o método de soma
class Integer
    def +(valor)
        self - valor
    end
end
# Perceba que agora em vez de somar, irá subtrair
p 10 + 5
puts "<-"*8

# Saber se uym número é par ou impar, respectivamnete
p 10.even?
p 10.odd?
puts "<-"*8