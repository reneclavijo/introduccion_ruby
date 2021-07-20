require_relative 'generador_pokemon'

class Batalla
    attr_reader :pokemon_local
    attr_reader :pokemon_visitante

    # constructores
    # vacío
    def initialize(fuerte = true)
        puts "inicializando batalla"
        if fuerte == true
            @pokemon_local = GeneradorPokemon.generar_fuertes
            @pokemon_visitante = GeneradorPokemon.generar_fuertes
        else
            @pokemon_local = GeneradorPokemon.generar
            @pokemon_visitante = GeneradorPokemon.generar
        end
    end

    def simular
        while @pokemon_local.vida > 0 and @pokemon_visitante.vida > 0

            if @pokemon_local.vida > 0
                @pokemon_local.atacar(@pokemon_visitante)
                puts @pokemon_visitante.mostrar
            end

            sleep 2

            if @pokemon_visitante.vida > 0
                @pokemon_visitante.atacar(@pokemon_local)
                puts @pokemon_local.mostrar
            end
        
            sleep 2
        end

        quien_gano?
    end

    def quien_gano?
        puts "#{@pokemon_local.nombre} vs #{@pokemon_visitante.nombre}"
        if @pokemon_local.vida <= 0
            puts "#{@pokemon_visitante.nombre} gano"
        else
            puts "#{@pokemon_local.nombre} gano"
        end
    end
end