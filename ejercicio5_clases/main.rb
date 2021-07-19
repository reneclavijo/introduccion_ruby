require 'faker' #Trae las gemas
require_relative 'cliente' #Trae mis archivos
require_relative 'gato'
require_relative 'perro'


# Utlizando un FOR crear una lista con 50
# o 100 clientes falsos
# con su nombre y su correo#
# utlizando un método, mostrar la información del cliente

# lista_de_cliente = Array.new
lista_de_cliente = []

for i in 0..99
    cliente = Cliente.new
    cliente.nombre = Faker::Name.name
    cliente.correo = Faker::Internet.email(
        name: cliente.nombre, 
        separators: ".", 
        domain: "sandiagamestudio"
    )

    # cliente.mascota = Mascota.new
    # cliente.mascota.nombre = Faker::Name.name

    lista_de_cliente << cliente
end

lista_gatos = []
lista_perros = []

for i in 0..49
    gato = Gato.new
    gato.nombre = Faker::Creature::Cat.name
    gato.raza   = Faker::Creature::Cat.breed
    gato.peso   = Faker::Number.between(from: 20, to: 50)
    gato.edad   = Faker::Number.between(from: 0, to: 15)
    lista_gatos << gato
end

for i in 0..49
    perro_nuevo = Perro.new
    perro_nuevo.nombre  = Faker::Creature::Dog.name
    perro_nuevo.raza    = Faker::Creature::Dog.breed
    perro_nuevo.peso    = Faker::Number.between(from: 30, to: 100)
    perro_nuevo.edad    = Faker::Number.between(from: 0, to: 20)
    lista_perros << perro_nuevo
end


for i in 0..49
    lista_de_cliente[i].mascota = lista_gatos[i]
end

for i in 50..99
    lista_de_cliente[i].mascota = lista_perros[i - 50]
end

for cliente in lista_de_cliente
    cliente.mostrar_mascotas
end

# crear una nueva lista de clientes de 200 clientes
# crear la mascoota para cada cliente de una vez
# mostrar los datos del cliente y su  mascota


nuevos_clientes = []
for i in 0..199
    cliente = Cliente.new
    cliente.nombre = Faker::Name.name
    #asignación de mascota
    cliente.mascota = Mascota.new
    cliente.mascota.nombre = Faker::Creature::Name.name


    cliente.mostrar_mascotas
    nuevos_clientes << cliente
end