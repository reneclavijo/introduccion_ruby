require_relative 'pokemon'
require 'faker'

class GeneradorPokemon

    # este método  pertenece a la clase
    def self.generar
        nuevo_pokemon = Pokemon.new
        nuevo_pokemon.nombre = Faker::Games::Pokemon.name
        nuevo_pokemon.vida   = Faker::Number.between(from: 50, to: 100)
        nuevo_pokemon.ataque = Faker::Number.between(from: 1, to: 50)
        return nuevo_pokemon
    end

    def self.generar_fuertes
        nuevo_pokemon = Pokemon.new
        nuevo_pokemon.nombre = Faker::Games::Pokemon.name
        nuevo_pokemon.vida   = Faker::Number.between(from: 500, to: 1000)
        nuevo_pokemon.ataque = Faker::Number.between(from: 100, to: 500)
        return nuevo_pokemon
    end

    def self.auto_generado
        return Pokemon.new
    end

end