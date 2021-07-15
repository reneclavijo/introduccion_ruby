# Se está desarrollando un módulo de software para poder generar 
# contraseñas de forma aleatoria y segura para usuarios debido a la 
# cantidad de hackeos seguidos que han aparecido en tu empresa. 
# Es necesario introducir dejar que a través de la consola se introduzca un 
# nombre de usuario, y se genera una contraseña automáticamente, almacenarlo en un Hash 
# y por en en una lista. Al finalizar debería poder mostrar todos los usuarios 
# registrados con sus contraseñas.

#  Utilizar Hash para guardar la información.
require 'securerandom'


# Ciclos de lógica
comando = ""
# Datos de salida
lista_usuarios = []
puts "Ingrese los nombres de trabajadores para generar contraseñas"
puts "Si desea salir escriba salir."
while comando != "salir"
    # Datos de entrada
    puts "Ingrese el nombre del trabajador:"
    nombre_usuario = gets.chomp
    # aquí guardo el valor en comando
    comando = nombre_usuario
    if comando != "salir" # evaluando el comando
        password = SecureRandom.alphanumeric(10)
        #usuario_hash = { nombre: nombre_usuario, pass: password }
        usuario_hash = {}
        usuario_hash[:nombre] = nombre_usuario
        usuario_hash[:pass] = password
        lista_usuarios << usuario_hash
        puts "Registro guardado"
        #puts "nombre: #{usuario_hash[:nombre]} \t pass: #{usuario_hash[:pass]}"
    end
end
puts "===\t==="
for u in lista_usuarios
    puts "#{u[:nombre]} \t #{u[:pass]}"
end

# Escribir en archivo
# puts "Escribe el nombre del archivo"
# File.write(gets.chomp + ".txt", lista_usuarios)

comando = ""
puts "Ingrese el nombre del trabajador para ver"
puts "sus datos. Escribir salir para salir."
while comando != "salir"
    nombre_filtro = gets.chomp
    encontramos_al_trabajador = false
    comando = nombre_filtro
    if comando != "salir"
        for u in lista_usuarios
            if nombre_filtro == u[:nombre]
                encontramos_al_trabajador = true
                puts "#{u[:nombre]} \t pass: #{u[:pass]}"
            end
        end
        if encontramos_al_trabajador == false
            puts "No se encontró a nadie llamado #{nombre_filtro}"
        end
    end
end