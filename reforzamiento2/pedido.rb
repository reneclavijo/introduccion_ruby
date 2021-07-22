require 'faker'

class Pedido
    
    attr_reader   :codigo           # 
    attr_reader   :total            # la suma total del  pedido
    attr_accessor :productos        # almacenar una lista/array de productos
    attr_reader   :fecha_creacion   # fecha de hoy
    attr_accessor :fecha_entrega    # sumar a la fecha de hoy 2 días
    attr_reader   :estado           # preparando / enviando / entregado 
    
    def initialize
        @codigo         = Faker::Barcode.ean
        @total          = 0
        @productos      = []
        @fecha_creacion = Time.now
        @fecha_entrega  = Faker::Date.forward(days: 2)
        @estado         = "preparando"
    end

    def mostrar_resumen
        puts "===== RESUMEN PEDIDO 📄✍ ====="
        puts "Código:           #{self.codigo}"
        puts "Fecha creacion:   #{self.fecha_creacion}"
        puts "Fecha entrega :   #{self.fecha_entrega}"
        puts "Estado:           #{self.estado}"
        

    end
end