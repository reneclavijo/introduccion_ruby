# Se está desarrollando un módulo de software para poder generar 
# contraseñas de forma aleatoria y segura para usuarios debido a la 
# cantidad de hackeos seguidos que han aparecido en tu empresa. 
# Es necesario introducir dejar que a través de la consola se introduzca un 
# nombre de usuario, y se genera una contraseña automáticamente, almacenarlo en un Hash 
# y por en en una lista. Al finalizar debería poder mostrar todos los usuarios 
# registrados con sus contraseñas.

#  Utilizar Hash para guardar la información.
require 'securerandom'
require_relative 'modulo_usuarios'
include ModuloUsuarios


# Ciclos de lógica
comando = ""
# Datos de salida
lista_usuarios = []
puts "Ingrese los nombres de trabajadores para generar contraseñas"
puts "Si desea salir escriba salir."

while comando != "salir"
    puts "Ingrese el nombre del trabajador:"
    nombre_usuario = gets.chomp
    comando = nombre_usuario

    if comando != "salir"
        lista_usuarios << generar_password(nombre_usuario)
        puts "Registro guardado"
    end

    imprimir_lista_usuarios_hash(lista_usuarios)
end

puts "Resumen final"
imprimir_lista_usuarios_hash(lista_usuarios)

guardar_lista_usuarios_en_archivo(lista_usuarios)

generar_menu_buscar_usuario(lista_usuarios)