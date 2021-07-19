class Mascota
    attr_accessor :nombre
    attr_accessor :peso
    attr_accessor :edad
    attr_accessor :raza
    #attr_accessor :cliente

    def mostrar_datos
        puts "nombre: #{@nombre} \t raza: #{@raza} \t edad:#{@edad} \t peso: #{@peso}"
    end
end