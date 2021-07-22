# Softare de pedidos
# el pedido se guarda en un .csv

require_relative 'venta'

comando = ""
while comando != "n"
    venta = Venta.new
    venta.comenzar

    puts "¿Quiere hacer otro pedido? (s/n)"
    comando = gets.chomp
end

