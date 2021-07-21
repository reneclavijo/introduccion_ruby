require_relative 'generador_palabras'

class Juego

    attr_reader :palabra_secreta
    attr_reader :vidas

    def initialize
        al_azar = rand(0..1)
        if al_azar == 0
            # relación de asosiación / dependencia
            @palabra_secreta = GeneradorPalabras.generar_planeta
        else
            # relación de asosiación / dependencia
            @palabra_secreta = GeneradorPalabras.generar_palabra_estatica
        end

        @vidas = 5
    end

    def comenzar
        puts @palabra_secreta
        while true
            guiones = cambiar_letras_a_guiones_1
            letra = gets.chomp
            for posicion_letra in 0..@palabra_secreta.length-1
                if @palabra_secreta[posicion_letra] == letra
                    # palabra_secreta => hola
                    #                    0123
                    # guiones         => _ _ _ _ 
                    #                    01234567
                    guiones[posicion_letra * 2] = letra
                end
            end
            print guiones
            # preguntar si esta letra existe en mi palabra
            # si existe debería cambbiar el guion por la letra
        end
    end

    def cambiar_letras_a_guiones_1
        return "_ " * @palabra_secreta.length
    end

    # def cambiar_letras_a_guiones_2
    #     for i in 0..@palabra_secreta.length-1
    #         print "_ "
    #     end
    # end

end