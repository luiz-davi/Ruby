# A herenaça serve para que uma classe consiga ter o comportamento de outra classe, e mais
# Em ruby, herança multipla não é permitido
# Exemplo
class Animal
    def andar
        puts '...andando...'
    end
end

# O símbolo '<' representa a herança
class Cachorro < Animal
end

# Perceba que agora uma instância de cachorro consegue acessar os métodos da superclasse 'Animal'
dog = Cachorro.new
dog.andar
puts "<-"*10

# Vale lembrar também que toda classe em ruby que não tenha nenhuma herança especificada, herdará 
# obrigatoriamente da classe 'object' do ruby

# Exemplo mais detalhado
# Sensor comum e genérico
class Sensor
    def instalar
        puts "Estou instalando o sensor..."
    end

    def iniciar
        puts "estou inicializando o sensor..."
    end

    def coletar_metricas
        puts "estou coletando métricas..."
        puts "estou analizando métricas..."
    end
end

# A super classe é uma normal como todas as outras, e pode gerar objetos
sensor = Sensor.new
sensor.instalar
sensor.iniciar
sensor.coletar_metricas
puts "\n"

# Podemos criar extensões dessa classe que sejam mais específicas
class SensorTemepratura < Sensor
    # para sobrescrever um método basta fazer a chamada com o mesmo nome e definir um escopo diferente
    def coletar_metricas
        puts "coletando componentes de temperatura..."
        # Também podemos chamar a função original dentro da sobrtescrita
        super
    end
end
sensorTemperatura = SensorTemepratura.new
sensorTemperatura.instalar
sensorTemperatura.iniciar
sensorTemperatura.coletar_metricas
puts "\n"