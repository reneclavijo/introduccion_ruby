arreglo_mixta = ["rene", 23, "adios", 75, 'gato', false, 76.5]
#                   0     1     2      3    4       5      6
arreglo_mixta.each { |elemento|
puts elemento.class
}
puts "===="
arreglo_mixta.each do |elemento|
    puts elemento.class
end
# =========================
arreglo_numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 0, 6, 6, 4, 4, 5]
total = 0
arreglo_nuevo = arreglo_numeros.select do |n|
    n.odd?
end

puts arreglo_nuevo
puts "============"
lista = []
for n in arreglo_numeros
    if n.odd?
        lista << n
    end
end
puts lista


