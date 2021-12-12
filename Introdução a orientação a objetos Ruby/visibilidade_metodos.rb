# Visibilidades no ruby: public, private e protected
# public: Podem ser acessados por qualquer método em qualquer objeto
# private: Só podem ser chamados dentro de sua própria instância. Não é possível acessar  Métodos Privados  de outras Instâncias
# protected: Podem ser chamados por qualquer instância se for da mesma Classe/SuperClasse

# Exemplo
class Exemplo1
    # quando não há especificação, esse método é 'public por default'
    def metodo1
        puts "Metodo 1"
    end

    def metodo2
        puts "Metodo 2"
    end

    def metodo3
        puts "Metodo 3"
    end
end

# Perceba que é possível chamar todos os três métodos

obj = Exemplo1.new
obj.metodo1
obj.metodo2
obj.metodo3
puts "<-"*20

# Exemplo 2
class Exemplo2
    def metodo1
        puts "Metodo 1"
        metodo2
        metodo3
        metodo4
    end
    
     # Para tornar um método específico privado basta colocar a palavra reservada 'private' antes do def
     private def metodo2
        puts "Metodo 2"
    end

    # outro método mais simples de tornar todos os métodos privados, é colocar a palavra 'private', e todo os
    # métodos a baixo serão privados
    private

    def metodo3
        puts "Metodo 3"
    end

    def metodo4
        puts "Metodo 4"
    end

    protected
    def metodo7
        puts "Metodo 7"
    end
end

obj2 = Exemplo2.new
# Perceba que não é possível uma instância resgatar o método privado
begin
    obj2.metodo2
rescue => exception
    puts exception
end
obj2.metodo1
puts "<-"*20

# No contexto de herança e visibilidade, as visibilidades 'private' e 'protected' exigem alguns detalhes
class Exemplo3 < Exemplo2

    def metodo5
        metodo3
        puts "Metodo 5"
    end
    # Também é importante frizar a questão dos contexto e escopos entre métoso e visibilidades: apesar da herança,
    # não é possível que instâncias acessem os métodos privados da super classe, ou até mesmo da classe
    def metodo6
        exemplo = Exemplo3.new
        exemplo.metodo2
    end

    # O que difere de métodos com visibilidade 'protected'
    def metodo8
        metodo7
    end

end

obj3 = Exemplo3.new
obj3.metodo5
# Perceba que eu posso chamar um método privado da superclasse. A visibilidade 'private' permite isso
begin
    obj3.metodo6
rescue => exception
    puts exception
end
# Métodos 'protected' da superclasse podem ser acessados pela classe 
obj3.metodo8
# Mas não podem ser chamados pela instância
obj3.metodo7