module ModuloUsuarios
    def generar_password(nombre_usuario)
        password = SecureRandom.alphanumeric(10)
        #usuario_hash = { nombre: nombre_usuario, pass: password }
        usuario_hash = {}
        usuario_hash[:nombre] = nombre_usuario
        usuario_hash[:pass] = password
    
        return usuario_hash
    end
    
    def imprimir_lista_usuarios_hash(lista)
        puts "===\t==="
        for u in lista
            puts "#{u[:nombre]} \t #{u[:pass]}"
        end
    end
    
    def generar_menu_buscar_usuario(lista_usuarios_hash)
        comando = ""
        puts "Ingrese el nombre del trabajador para ver"
        puts "sus datos. Escribir salir para salir."
        while comando != "salir"
            nombre_filtro = gets.chomp
            encontramos_al_trabajador = false
            comando = nombre_filtro
            if comando != "salir"
                for u in lista_usuarios_hash
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
    end
    
    def guardar_lista_usuarios_en_archivo(lista_usuarios)
        # Escribir en archivo
        # puts "Escribe el nombre del archivo"
        File.write("usuarios.txt", lista_usuarios)
    end
    

end