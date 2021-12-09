# Exemplo de uma classe com um método métodos
class Exemplo
    def imprimir_ola( nome )
        puts "Olá #{nome}"
    end
end

classe = Exemplo.new
classe.imprimir_ola("Davi")
puts "<-"*10
# Perceba que o 'nome' está presenta apenas dentro do método, ou seja, essa variável estará restrita ao escopo do método

# Para tenhamos uma varíavel que pertença ao escopo da classe, é preciso colocar um '@' antes da variável
class Exemplo2
    def imprimir_ola( nome )
        @nome = nome
        puts "Olá #{@nome}"
    end

    def meu_nome
        puts "Eu me chamo #{@nome}"
    end
end
nova_classe = Exemplo2.new
nova_classe.imprimir_ola("Davi")
# Essa variável fica disponível apenas para o controle interno dos métodos, não fica disponível para instâncias
nova_classe.meu_nome
puts "<-"*10

# Perceba que nesse xemplo, a inicialização do atrbuto não faz muito sentido, uma vez que função tem a finalidade de dar um 'olá'
# Pra isso, se tem o conceito de inicialização (initialize)
class Exemplo3
    def initialize (nome)
        @nome = nome
    end

    def imprimir_ola
        puts "Olá #{@nome}"
    end

    # get
    def meu_nome
       @nome
    end

    # Set
    def nome=(novo_nome)
        @nome = novo_nome
    end
end

exemplo3 = Exemplo3.new("Davi")
exemplo3.imprimir_ola
exemplo3.nome=("Mendes")
puts exemplo3.meu_nome
puts "<-"*10

# Esses são exemplos de geters e seters criados de forma manual, mas no Ruby, a sintzaxe permite criar esses métodos de forma mais fácil
class Pessoa
    attr_accessor :nome # getter e setter
    # attr_reader :nome, apenas getter
    # attr_writter :nome, apenas setter

    def initialize (nome)
        @nome = nome
    end

    def imprimir_ola
        puts "Olá #{@nome}"
    end
end

pessoa = Pessoa.new("Davi")
pessoa.imprimir_ola
puts pessoa.nome
puts "<-"*10
# Podemos perceber que nesse caso, o comportamento é o mesmo que o Exemplo3, apesar da escrita diferente
