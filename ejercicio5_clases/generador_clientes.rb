require_relative 'cliente'

class GeneradorClientes

    def self.generar_sin_mascotas(cantidad_clientes)
        lista_de_cliente = []

        for i in 0..cantidad_clientes
            cliente = Cliente.new
            cliente.nombre = Faker::Name.name
            cliente.correo = Faker::Internet.email(
                name: cliente.nombre, 
                separators: ".", 
                domain: "sandiagamestudio"
            )
            lista_de_cliente << cliente
        end

        return lista_de_cliente
    end

    def self.generar_con_mascotas(cantidad)
        # código para generar con mascotas
    end

    
end