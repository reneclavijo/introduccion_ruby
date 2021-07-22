# Softare de pedidos
# Mostrar productos al usuario y el los puede agregar a un pedido
# cuando ya no quiera más productos, el pedido se guarda en un .csv

# crear un generador de pedidos
# para que gestione el menú
require_relative 'generador_productos'

# Creando el inventario
inventario = []
10.times do
    inventario << GeneradorProductos.generar
end

# Mostrar inventario al usuario
puts "===== \t Su tienda amiga \t ====="
puts "Inventario: 📦"
inventario.each do |producto|
    puts "#{producto.codigo} \t #{producto.nombre} \t #{producto.precio} \t #{producto.marca} \t #{producto.presentacion} \t #{producto.categoria}"
end