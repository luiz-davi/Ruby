require './conta.rb'

class ContaTaxa < Conta
    def transferir(conta, valor)
        if valor < @saldo
            sacar(valor + TAXA)
            conta.saldo += valor
            puts "Transferência de R$#{valor} reais para conta de #{conta.segnatario} realizada com sucesso!"
        else
            raise puts "Saldo insuficiente! Tente um valor mais baixo!"
        end
    end
end