class Animal
    def pular
        puts 'Toing! tóim! bóim! póim'
    end

    def dormir
        puts 'ZzZzzz'
    end
end

class Cachorro < Animal
    def latir
        puts 'au au'
    end
end

cachorro = Cachorro.new

cachorro.dormir
cachorro.pular
cachorro.latir
