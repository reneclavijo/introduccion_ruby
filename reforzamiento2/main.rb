# Softare de pedidos
# Mostrar productos al usuario y el los puede agregar a un pedido
# cuando ya no quiera más productos, el pedido se guarda en un .csv

# crear un generador de pedidos
# para que gestione el menú
require_relative 'venta'

venta = Venta.new
venta.crear_inventario
venta.mostrar_inventario
venta.crear_inventario