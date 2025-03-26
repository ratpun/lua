print("Selecione um exercício:")
local opcoes = io.read("n")

if opcoes == 1 then
    print("Exercício 1")
    local aluno = {
        nome = "João",
        idade = 20,
        curso = "Ciência da Computação"
    }

    for _, valor in pairs(aluno) do
        print(valor)
    end
end

if opcoes == 2 then
    print("Exercício 2")
    local notas = {}
    local media = 0
    repeat
        local nota = io.read("n")
        table.insert(notas, nota)
        media = media + nota
    until #notas == 5

    print("A média das notas é: "..media / 5)
end

if opcoes == 3 then
    print("Exercício 3")
    local numeros = {1 , 2, 3, 4, 5}

    local function somaElementos(numeros)
        local soma = 0
        for _, valor in pairs(numeros) do
            soma = soma + valor
        end
        return soma
    end
    print(somaElementos(numeros))
end

if opcoes == 4 then
    print("Exercício 4")

    local function produto(...)
        local resultado = 1

        for _, valor in pairs{...} do
            resultado = resultado * valor
        end

        return resultado     
    end

    print(produto(1, 2, 3, 4, 5))
end

if opcoes == 5 then
    print("Exercício 5")

   do
        local function divide(n1, n2)
            return n1 / n2
        end
        print(divide(10, 2))
   end
end

if opcoes == 6 then
    print("Exercício 6")

    local function funFiltro(valor)
        return valor % 2 == 0
    end

    local function filtra(tabela, funFiltro)
        local resultado = {}
        for _, valor in pairs(tabela) do
            if funFiltro(valor) then
                table.insert(resultado, valor)
            end
        end
        return resultado
    end

    local numeros = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    local resultado = filtra(numeros, funFiltro)

    for _, valor in pairs(resultado) do
        print(valor)
    end
end

if opcoes == 7 then
    print("Exercício 7")

    local fila = {}

    local function adicionaCliente()
        local cliente = io.read()
        table.insert(fila, cliente)
    end

    local function atendeCliente()
        table.remove(fila, 1)
    end
end

if opcoes == 8 then
    print("Exercício 8")

   local pessoa = {
        nome = "João",
        pai = {
            nome = "José",
            pai = {nome = "Joaquim"},
            mae = {nome = "Maria"}
        },
        mae = {
            nome = "Ana",
            pai = {nome = "Antônio"},
            mae = {nome = "Alice"}
        }
   }

   local function imprimeFamilia(pessoa, nivel)
        nivel = nivel or 0
        local identacao = string.rep(" ", nivel * 4)
        print(identacao..pessoa.nome)

        if pessoa.pai then
            imprimeFamilia(pessoa.pai, nivel + 1)
        end

        if pessoa.mae then
            imprimeFamilia(pessoa.mae, nivel + 1)
        end
   end

    imprimeFamilia(pessoa)
end

if opcoes == 9 then
    print("Exercício 9")

   local function adivinhaNumero(numeroSecreto, chute)
        if chute == numeroSecreto then
            return "Acertou!"
        elseif chute < numeroSecreto then
            return "Chute um número maior"
        else
            return "Chute um número menor"
        end
    end

    local numeroSecreto = math.random(1, 100)
    local chute = 0

    repeat
        print("Chute um número:")
        chute = io.read("n")
        print(adivinhaNumero(numeroSecreto, chute))
    until chute == numeroSecreto
end

if opcoes == 10 then
    print("Exercício 10")

    local function cliente(nome)
        return coroutine.create(function ()
            print("Bem vindo, "..nome)
            local carrinho = {}
            for i = 1, 3 do
                table.insert(carrinho, "Item "..i)
                print("Adicionando item "..i.." ao carrinho")
                coroutine.yield()
            end
            print("Até mais, "..nome)
        end)
    end

    local cliente1 = cliente("João")
    local cliente2 = cliente("Maria")

    for i = 1, 3 do
        coroutine.resume(cliente1)
        coroutine.resume(cliente2)
    end
end

if opcoes == 11 then
    print("Exercício 11")

    local function safeLog(arquivo, mensagem)
        local file = io.open(arquivo, "a")
        if not file then
            error("Erro ao abrir o arquivo")
        end
        file:write(mensagem.."\n")
        file:close()
    end
    safeLog("log.txt", "Mensagem de log")
end