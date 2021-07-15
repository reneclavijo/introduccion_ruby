# 1. dolares => pesos colombianos
# 2. pesos chilenos => dolares
# 3. dolares => soles
require_relative("modulo_divisas")  # nombre del archivo
include ModuloDivisas               # nombre del módulo
#entrada
puts "Introducir el monto a convertir"
montos = gets.chomp.to_i

puts "1. dolares => COP"
puts "2. pesos chilenos => dolares"
puts "3. dolares => Soles"
convertir = gets.chomp

# lógica

if convertir == "1"
    convertir_dolares_pesos_colombianos(montos)
elsif convertir == "2"
    convertir_pesos_chilenos_dolares(montos)
elsif convertir == "3"
    convertir_dolares_a_soles(montos)
else
    puts "Cambio no disponible"
end