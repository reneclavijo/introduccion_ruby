class ObservadorTeclado

    def self.validar_con_espacios(guia, letra_nueva)
        cadena_armada = ""
        cadena_armada += letra_nueva

        #   "a d b a" == "a d"
        if guia.start_with? cadena_armada
            return true
        else 
            return false
        end
    end
end