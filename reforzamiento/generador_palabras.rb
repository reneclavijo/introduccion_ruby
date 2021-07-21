require 'faker'

class GeneradorPalabras

    # creamos un método que sea dueño la clase
    def self.generar
        al_azar = rand(0..2)


        if al_azar == 0
            
            return generar_planeta
        elsif al_azar == 1
            
            return generar_palabra_estatica
        elsif al_azar == 2

            return generar_lenguaje_programacion
        end
        # switch/case 
        # case al_azar
        # when 0
        #     return generar_planeta
        # when 1
        #     return generar_palabra_estatica
        # when 2
        #     return generar_lenguaje_programacion
        # end
    end

    private # métodos privados 👇 NO se pueden llamar desde otros archivos

    def self.generar_palabra_estatica
        palabras_secretas = ["hola", "adios", "teams", "programacion", "ruby", "windows", "ubuntu", "terminal", "html", "css", "javascript", "vscode", "microsoft", "linux", "marktext", "github"]
        posicion_al_azar = rand(0..palabras_secretas.length-1)
        return palabras_secretas[posicion_al_azar]
    end

    def self.generar_planeta
        return Faker::Space.planet.downcase
    end

    def self.generar_lenguaje_programacion
        return Fake::ProgrammingLanguage.name.downcase
    end
end