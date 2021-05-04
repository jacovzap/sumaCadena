RSpec.describe "Calculadora De Cadenas" do

    it "Deberia devolver el numero 3 para la cadena 3" do
        expect(calcularCadena("3")).to eq(3)
    end

    it "Deberia devolver el numero 5 para la cadena 5" do
        expect(calcularCadena("5")).to eq(5)
    end

    it "Deberia devolver el numero 6 para la cadena 5 y 1" do
        expect(calcularCadena("5,1")).to eq(6)
    end

    it "Deberia devolver el numero 8 para la cadena 5, 1 y 2" do
        expect(calcularCadena("5,1,2")).to eq(8)
    end

    it "Deberia devolver el numero 14 para la cadena 5, 1, 6 y 2" do
        expect(calcularCadena("5,1,6,2")).to eq(14)
    end

    it "Deberia devolver el numero 14 para la cadena 5, 1, 6, 2, y 1999" do
        expect(calcularCadena("5,1,6,2,1999")).to eq(14)
    end

    
end



def calcularCadena(cadena)
    i = 0
    suma = 0
    arreglo=cadena.split(',')
    while i < cadena.length do
        if arreglo[i].to_i < 1000 then
            suma = arreglo[i].to_i + suma
        end
        i = i+1
    end
    return suma

end






