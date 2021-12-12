class Conta
    TAXA = 5
    attr_accessor :saldo
    attr_accessor :segnatario
    # inicializador
    def initialize(segnatario, valor)
        @segnatario = segnatario
        @saldo = valor
    end

    def sacar(valor)
        if possivel_debitar(valor)
            @saldo-= valor
            puts "Saque no valor de R$#{valor} reais realizado com sucesso!"
        else
            puts "Saldo insuficiente! Tente um valor mais baixo!"
        end
    end

    def depositar(valor)
        if possivel_depositarar(valor)
            @saldo += valor
            puts "Depósito no valor de R$#{valor} reais realizado com sucesso!"
        else
            puts "Insira um valor maior que zero!"
        end
    end

    def transferir(conta, valor)
        if valor < @saldo
            sacar(valor + TAXA)
            conta.saldo += valor
            puts "Transferência de R$#{valor} reais para conta de #{conta.segnatario} realizada com sucesso!"
        else
            raise puts "Saldo insuficiente! Tente um valor mais baixo!"
        end
    end

    # Métodos privados para manutenção da classe
    private

    def possivel_debitar(valor)
        if valor > @saldo
            return false
        end

        true
    end

    def possivel_depositarar(valor)
        if valor > 0
            return true
        end

        false
    end
end