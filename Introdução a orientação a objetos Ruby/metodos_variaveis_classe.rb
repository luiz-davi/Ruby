# Diferente dos métodos de instância, o métodos e variáveis de classe podem ser chamador apartir do nome da Classe
class Pessoa
    # existem também as variáveis de classe, que podem ser declaradas dessa forma:
    @@numero_pessoas = 0
    # Importante dizer também que os métodos de classe tem acesso a essa variável

    def self.numero_pessoas
        @@numero_pessoas
    end

    def self.incrementar_valor_variavel
        @@numero_pessoas+=1
    end
    # Antes do nome da função, basta colocar um 'self.nome_função'
    def self.gerar
        puts "estou gerando uma nova pessoa..."
        Pessoa.new
        @@numero_pessoas+=1
    end
end

pessoa = Pessoa.gerar
puts pessoa
puts Pessoa.numero_pessoas
Pessoa.incrementar_valor_variavel
puts Pessoa.numero_pessoas
# Vale lembrar que o método é da classe, não fica disponível para as instâncias


