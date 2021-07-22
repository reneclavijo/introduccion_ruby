# Softare de pedidos
# Mostrar productos al usuario y el los puede agregar a un pedido
# cuando ya no quiera más productos, el pedido se guarda en un .csv

# crear un generador de pedidos
# para que gestione el menú
require_relative 'generador_productos'
require_relative 'pedido'

# Creando el inventario
inventario = [] # infinitos
10.times do
    inventario << GeneradorProductos.generar
end

# Mostrar inventario al usuario
puts "===== \t Su tienda amiga \t ====="
puts "Inventario: 📦"
inventario.each do |producto|
    puts "#{producto.codigo} \t\t\t #{producto.nombre} \t\t\t 💲#{producto.precio} \t\t\t #{producto.marca} \t\t\t #{producto.categoria}"
end

# Crear nuestro pedido
pedido = Pedido.new

puts pedido.inspect