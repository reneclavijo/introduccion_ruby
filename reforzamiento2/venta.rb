require_relative "generador_productos"
require_relative "pedido"

class Venta

    attr_reader :pedido
    attr_reader :inventario
    

    def initialize
        crear_inventario
        mostrar_inventario
        crear_pedido
    end

    def crear_inventario
        @inventario = [] # infinitos productos 
        10.times do
            @inventario << GeneradorProductos.generar
        end
    end

    def mostrar_inventario
        # Mostrar inventario al usuario
        puts "===== \t Su tienda amiga \t ====="
        puts "Inventario: 📦"
        @inventario.each do |producto|
            puts "#{producto.codigo}\t#{producto.nombre}\t💲 #{producto.precio}\t#{producto.marca}\t#{producto.categoria}\t"
        end
    end

    def crear_pedido
        @pedido = Pedido.new
    end

    def comenzar
        codigo_producto = ""
        while codigo_producto != "terminar"
            
            print "Ingrese el código del producto: "
            codigo_producto = gets.chomp
            
            if codigo_producto != "terminar"
                producto_encontrado = @inventario.select do |producto|
                                        producto.codigo == codigo_producto
                                    end
                if producto_encontrado.count == 0
                    puts "El código: #{codigo_producto}. No está en el inventario ❌"
                else
                    @pedido.productos << producto_encontrado[0]
                    puts "El producto #{codigo_producto}, fue agregado al pedido"
                end
            end
        end

        @pedido.mostrar_resumen
    end
end