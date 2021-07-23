require_relative "generador_productos"
require_relative "pedido"

class Venta

    attr_reader :pedido
    attr_reader :inventario
    
    @cantidad_para_normalizar

    def initialize
        crear_inventario
        mostrar_inventario
        crear_pedido
        @cantidad_para_normalizar = 0
        
    end

    def crear_inventario
        @inventario = [] # infinitos productos 
        10.times do
            @inventario << GeneradorProductos.generar
        end
        @cantidad_para_normalizar = @inventario.map{ |p| p.nombre.length }.max + 1
    end

    def mostrar_inventario
        # Mostrar inventario al usuario
        puts "===== \t Su tienda amiga \t ====="
        puts "Inventario: 📦"

        titulo = "#{normalizar_textos("CÓDIGOS")}\t#{normalizar_textos("PRODUCTOS")}\t#{normalizar_textos("PRECIO")}\t#{normalizar_textos("MARCA")}\t#{normalizar_textos("CATEGORIA")}\t"
        puts titulo
        puts "=" * titulo.length

        @inventario.each do |producto|
            puts "#{normalizar_textos(producto.codigo)}\t#{normalizar_textos(producto.nombre)}\t#{normalizar_textos("💲" + producto.precio.to_s)}\t#{normalizar_textos(producto.marca)}\t#{normalizar_textos(producto.categoria)}\t"
        end
    end

    def normalizar_textos(texto)
        while texto.length < @cantidad_para_normalizar
            texto += " "
        end
        return texto
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