# entrada
numeros = "1, 4, 5, 7, 46, 87, 4, 6, 8, 9, 200, 6, 4, 5, 78, 34, 567"

opcion = "" # aquí vamos a guardar lo que el usuario escriba

# salida
suma = 0
resta = 0
pares = 0
impares = 0
mayor = 0
menor = 0

# proceso

# opciones: suma, resta, pares, impares, mayor, menor
# while vueltas >= 0
vueltas = 5
while vueltas >= 0
#     "salir"!= "salir"

    puts "Escribir una de las siguientes opciones: suma, resta, pares, impares, mayor, menor"
    opcion = gets.chomp
    vueltas -= 1
    
    arreglo_numeros = numeros.split(",")

    if opcion == "suma"
        # sumar todos los números
        # FOR ayuda a repetir código
        for i in 0..arreglo_numeros.length
            suma += arreglo_numeros[i].to_i
        end
        # puts arreglo_numeros[0].to_i + arreglo_numeros[1].to_i + arreglo_numeros[2].to_i
        puts "La suma total es #{suma} de la lista de los números"
        puts "La suma total es " + suma.to_s + " de la lista de los números"
        puts 'La suma total es #{suma} de la lista de los números'
    elsif opcion == "resta"
        # restar todos los números
    elsif opcion == "pares"
        # contar los números pares
    elsif opcion == "impares"
        # contar los números impares
    elsif opcion == "mayor"
        # encontrar el número mayor
    elsif opcion == "menor"
        # encontrar el número menor
    else
        # mostrar mensaje de error
    end

end