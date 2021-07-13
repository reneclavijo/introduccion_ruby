puts "hora" + Time.now.to_s



r = Random.new()
obtenidos = {}

while obtenidos.count < 4

    random = r.rand(0..3)
    if !obtenidos.has_key? random
        obtenidos[random] = true
    end
    puts random
end

