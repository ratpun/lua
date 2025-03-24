
print("Escolha qual exercício deseja executar:")
local opcoes = io.read("n")

if opcoes == 1 then
    print("Exercício 1")
    print("Digite um número:")
    local n = io.read("n")
    print("O número informado foi: "..n)  
end

if opcoes == 2 then
    print("Exercício 2")
    print("Digite o primeiro número:")
    local n1 = io.read("n")
    print("Digite o segundo número:")
    local n2 = io.read("n")
    print("A soma dos números é"..n1 + n2)  
end

if opcoes == 3 then
    print("Exercício 3")
    print("Digite a nota 1:")
    local n1 = io.read("n")
    print("Digite a nota 2:")
    local n2 = io.read("n")
    print("Digite a nota 3:")
    local n3 = io.read("n")
    print("Digite a nota 4:")
    local n4 = io.read("n")
    print("A média das notas é"..(n1 + n2 + n3 + n4) / 4)
end

if opcoes == 4 then
    print("Exercício 4")
    print("Digite o valor em metros:")
    local valor = io.read("n")
    print("O valor em centímetros é: "..valor * 100)
end

if opcoes == 5 then
    print("Exercício 5")
    print("Digite a altura do quadrilátero:")
    local altura = io.read("n")
    print("Digite o comprimento do quadrilátero:")
    local comprimento = io.read("n")
    print("A área do quadrilátero é: "..altura * comprimento)
end

if opcoes == 6 then
    print("Exercício 6")
    print("Digite sua altura:")
    local altura = io.read("n")
    local pesoideal = (72.7 * altura) - 58
    print("Seu peso ideal é: "..pesoideal)
end

if opcoes == 7 then
    print("Exercício 7")
    print("Quanto você ganha por hora?")
    local valor = io.read("n")
    print("Quantas horas você trabalha por mês?")
    local horas = io.read("n")
    print("Seu salário é: "..valor * horas)
end

if opcoes == 8 then
    print("Exercício 8")
    print("Digite o raio do circulo:")
    local raio = io.read("n")
    print("A área do circulo é: "..math.pi* (raio * raio))
end

if opcoes == 9 then
    print("Exercício 9")
    print("Digite o primeiro numero inteiro:")
    local n1 = io.read("n")
    print("Digite o segundo numero inteiro:")
    local n2 = io.read("n")
    print("Digite o primeiro numero real:")
    local n3 = io.read("n")
    print("O produto do dobro do primeiro com metade do segundo é: "..(n1 * 2) * (n2 / 2))
    print("A soma do triplo do primeiro com o terceiro é: "..(n1 * 3) + n3)
    print("O terceiro elevado ao cubo é: "..n3 * n3 * n3)
end

if opcoes == 10 then
    print("Exercício 10")
    print("Digite o tamanho do arquivo em MB:")
    local tamanho = io.read("n")
    print("Digite a velocidade do link de internet em Mbps:")
    local velocidade = io.read("n")
    print("O tempo aproximado de download é: ".. (tamanho / velocidade) / 60 .."minutos")
end

if opcoes == 11 then
    print("Exercício 11")
    print("Informe o tamanho em metros quadrados da área a ser pintada:")
    local area = io.read("n")
    local litros = area / 3
    local latas = math.ceil(litros / 18)
    local preco = latas * 80
    print("Você precisará de "..latas.." latas de tinta")
    print("O preço total é: R$"..preco)
end