require 'csv'

class GestorDatos

    def self.generar_csv(batalla)
        nombre_archivo = "batalla.csv"

        if File.exist? nombre_archivo

            CSV.open(nombre_archivo, "a") do |csv|
                csv << [batalla.pokemon_local.nombre, 
                        batalla.pokemon_visitante.nombre, 
                        batalla.ganador.nombre, 
                        Time.now]
            end
        else
            CSV.open(nombre_archivo, "wb") do |csv|
                csv << ["Local", "Visitante", "Ganador", "Fecha"]
                csv << [batalla.pokemon_local.nombre, 
                        batalla.pokemon_visitante.nombre, 
                        batalla.ganador.nombre, 
                        Time.now]
            end

        end
        
    end

    def self.generar_txt(batalla)
        cabeceras = "local, visitante, ganador, fecha \n"
        datos = "#{batalla.pokemon_local.nombre}, #{batalla.pokemon_visitante.nombre}, #{batalla.ganador.nombre}, #{Time.now}"
        File.write("batalla_formato_nuevo.csv", cabeceras + datos)
    end
end