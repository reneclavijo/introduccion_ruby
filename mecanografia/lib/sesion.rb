require_relative "generador_texto"

class Sesion
    attr_reader :guia
    attr_reader :tiempo_inicial

    def initialize(cant_letras)
        @guia = GeneradorTexto.letras(cant_letras)
        @tiempo_inicial = Time.now
    end
end