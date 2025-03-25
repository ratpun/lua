print("Escolha qual exercício deseja executar:")
local opcoes = io.read("n")

if opcoes == 1 then
    print("Exercício 1")
    print("Digite o primeiro número:")
    local n1 = io.read("n")
    print("Digite o segundo número:")
    local n2 = io.read("n")
    print("O maior número é:" .. math.max(n1, n2))
end

if opcoes == 2 then
    print("Exercício 2")
    print("Digite um número:")
    local n = io.read("n")
    if n >= 0 then
        print("O número é positivo")
    else
        print("O número é negativo")
    end
end

if opcoes == 3 then
    print("Exercício 3")

    repeat
        print("Digite seu sexo: M/F")
        local n = io.read()
    until n == "M" or n == "F"
end

if opcoes == 4 then
    print("Exercício 4")
    print("Digite a primeira nota parcial:")
    local n1 = io.read("n")
    print("Digite a segunda nota parcial:")
    local n2 = io.read("n")
    local media = (n1 + n2) / 2
    if media >= 7 then
        if media == 10 then
            print("Aprovado com distinção")
        else
            print("Aprovado")
        end
    else
        print("Reprovado")
    end
end

if opcoes == 5 then
    print("Exercício 5")
    print("Digite um número:")
    local n = io.read("n")
    if n % 2 == 0 then
        print("O número é par")
    else
        print("O número é ímpar")
    end
end

if opcoes == 6 then
    print("Exercício 6")
    print("Digite um numero:")
    local n = io.read("n")
    local div, resto = math.modf(n)
    if resto > 0 then
        print("O número é decimal")
    else
        print("O número é inteiro")
    end
end

if opcoes == 7 then
    print("Exercício 7")
    print("Digite o primeiro numero:")
    local n1 = io.read("n")
    print("Digite o segundo numero:")
    local n2 = io.read("n")
    print("Digite a operação desejada:")
    print("1 - Soma")
    print("2 - Subtração")
    print("3 - Multiplicação")
    print("4 - Divisão")
    local op = io.read("n")
    if op == 1 then
        print("O resultado da soma é:" .. (n1 + n2))
    elseif op == 2 then
        print("O resultado da subtração é:" .. (n1 - n2))
    elseif op == 3 then
        print("O resultado da multiplicação é:" .. (n1 * n2))
    elseif op == 4 then
        print("O resultado da divisão é:" .. (n1 / n2))
    else
        print("Operação inválida")
    end
end

if opcoes == 8 then
    print("Exercício 8")
    print("Digite um ano:")
    local n = io.read("n")
    if n % 4 == 0 and (n % 100 ~= 0 or n % 400 == 0) then
        print("O ano é bissexto")
    else
        print("O ano não é bissexto")
    end
end

if opcoes == 9 then
    print("Exercício 9")
    print("Digite o primeiro número:")
    local n1 = io.read("n")
    print("Digite o segundo número:")
    local n2 = io.read("n")
    print("Digite o terceiro número:")
    local n3 = io.read("n")
    print("O maior número é:" .. math.max(n1, n2, n3))
end

if opcoes == 10 then
    print("Exercício 10")
    repeat
        print("Digite um número:")
        local n = io.read("n")
    until n > 0 and n < 10
end

if opcoes == 11 then
    print("Exercício 11")
    local i = 0
    while i <= 10 do
        print(i)
        i = i + 1
    end
end

if opcoes == 12 then
    print("Exercício 12")
    for i = 0, 50, 1 do
        if i % 2 ~= 0 then
            print(i)
        end
    end
end

if opcoes == 13 then
    print("Exercício 13")
    print("Digite o primeiro número:")
    local n = io.read("n")
    print("Digite o segundo número:")
    local n2 = io.read("n")
    for i = n, n2, 1 do
        print(i)
    end
end

if opcoes == 14 then
    print("Exercício 14")
    print("Digite um numero para gerar a tabuada:")
    local n = io.read("n")
    for i = 1, 10, 1 do
        print(n .. " x " .. i .. " = " .. n * i)
    end
end