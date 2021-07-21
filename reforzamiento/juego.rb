require_relative 'generador_palabras'

class Juego

    attr_reader :palabra_secreta
    attr_reader :vidas

    def initialize
        # relación de asosiación / dependencia
        @palabra_secreta = GeneradorPalabras.generar
        @vidas = 5
    end

    def comenzar
        puts "Bienvenido al ahorcado ☠, adivina la palabra..."

        guiones = cambiar_letras_a_guiones_1
        puts guiones
        
        while guiones.gsub(" ", "") != @palabra_secreta and @vidas > 0
            
            puts "vidas: #{@vidas}"

            letra = gets.chomp
            letra_encontrada = false

            for posicion_letra in 0..@palabra_secreta.length-1
                if @palabra_secreta[posicion_letra] == letra
                    # palabra_secreta => hola
                    #                    0123
                    # guiones         => _ _ _ _ 
                    #                    01234567
                    guiones[posicion_letra * 2] = letra
                    letra_encontrada = true
                end
            end

            if letra_encontrada == false
                @vidas -= 1
            end

            puts guiones
        end

        he_ganado?
    end

    private # métodos privados 👇

    def cambiar_letras_a_guiones_1
        return "_ " * @palabra_secreta.length
    end

    def he_ganado?
        if @vidas > 0
            puts "GANASTE ^_^ 🧑"
        else
            puts "AHORCADO!! 💀"
        end
        puts "La palabra era #{@palabra_secreta}"
    end

    # def cambiar_letras_a_guiones_2
    #     for i in 0..@palabra_secreta.length-1
    #         print "_ "
    #     end
    # end

end