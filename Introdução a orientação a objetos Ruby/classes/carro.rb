class Carro
    attr_accessor :modelo
    attr_accessor :dono

    def initialize (modelo, dono)
        @modelo = modelo
        @dono = dono
    end
end