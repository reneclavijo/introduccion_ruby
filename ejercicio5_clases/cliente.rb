# Estructua que nos permite encapsular
# datos y acciones - atributos y métodos
class Cliente
    # Datos - Variables - Atributos
    @nombre
    attr_accessor :correo
    attr_accessor :celular
    attr_accessor :direccion
    attr_accessor :metodo_pago_favorito
    attr_accessor :mascota

    # Acciones - Métodos
    # Método de asignación / Setter / escritor / writter
    def nombre= (valor_del_nombre)
        @nombre = valor_del_nombre
    end
    # Método de devolución / Getter
    def nombre
        return @nombre
    end

    def mostrar_info
        puts "Mi nombre de cliente es #{@nombre}, 
        mi correo es #{self.correo} y he comprado 
        #{@cantidad_compras} veces"
    end

    def mostrar_datos
        puts "Mi nombre de cliente es #{@nombre}, 
        mi correo es #{@correo}"
    end

    def mostrar_mascotas
        puts "nombre: #{@nombre} y mi mascota: #{@mascota.nombre}"
    end
end