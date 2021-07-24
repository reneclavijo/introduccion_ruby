require_relative "../lib/calculadora"

RSpec.describe Calculadora do

#cabecera para iniciar las pruebas, puede ir describe solo. Poner lo que esta en azul es una buena practica

    context "sumar numeros" do
        it "cuando son iguales" do
            #configuracion
            calc = Calculadora.new
            #Ejecucion
            resultado = calc.sumar(2, 2)
            #expectativa            
            expect(resultado).to eq(4)

        end
        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.sumar(-1, 9)
            expect(resultado).to eq(8)
        end
        it "cuando los 2 son positivos" do
            calc = Calculadora.new
            resultado = calc.sumar(4,5)
            expect(resultado).to eq(9)
        end
        it "cuando son negativos" do
            calc = Calculadora.new
            resultado = calc.sumar(-5, -10)
            expect(resultado).to eq(-15)
        end
    end

    describe "restar numeros" do
        it "cuando son iguales"
        it "cuando uno es negativos"
        it "cuando los 2 son positivos"
        it "cuando son negativos"
    end

    describe "multiplicar numeros" do
        it "cuando son iguales"
        it "cuando uno es negativos"
        it "cuando los 2 son positivos"
        it "cuando son negativos"
    end

    context "dividir numeros" do
        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.dividir(9, 9)
            expect(resultado).to eql(1)
        end
        it "cuando uno es negativos"
        it "cuando los 2 son positivos"
        it "cuando son negativos"
        it "cuando el denominador es 0" do
            calc = Calculadora.new
            resultado = calc.dividir(9, 0)
            expect(resultado).to eq("No se puede dividir entre 0")
        end
    end
    

    context "datos invalidos" do
        it "cuando uno es una letra" do
            calc = Calculadora.new
            resultado = calc.sumar(2, "2")
            expect(resultado).to eq("Solo operaciones con números")
        end
        it "cuando enviamos signos en vez de numeros"
    end

end