-- Tabelas

-- Arrays / Vetores
--                1     2       3
local Tabela = {"Olá", "Mundo", "!"}
print(Tabela[1])

-- Dicionarios
local Dicionario = {Nome = "João", Idade = 20}
print(Dicionario.Nome)

-- Matrizes
local matriz = {{1, 2, 3}, {"Arrox", "Feijao", "Macarrao"}, {7, 8, 9}}
print(matriz[2][2])

-- Sets
local set = {}
set["Olá"] = true
set["Mundo"] = true

if set["Olá"] then
    print("Olá está no set")
end

-- Biblioteca Table
local tabela = {1, 2, 3, 4, 5}
table.insert(tabela, 6)
print(tabela[6])
table.remove(tabela, 6)
print(tabela[6])

table.sort(tabela)

-- Pairs e ipairs
local tabela2 = {1, 2, 3, 4, 5}
local frutas = {banana = "amarelo", maca = "vermelha", uva = "roxa"}

local iterador, tabela , chave = pairs(frutas)
local chave, valor = iterador(tabela , chave)

while chave do
    print(chave, valor)
    chave, valor = iterador(tabela , chave)
end

for chave, valor in pairs(frutas) do
    print(chave, valor)
end

for _, v in ipairs(tabela2) do
    print(v)
end

-- Funções

local function Soma(a, b)
    return a + b
end

local resultado = Soma(2, 4)
print(resultado)

-- Função com numero iliitado de argumentos
local function Soma2(...)
    local soma = 0
    for _, v in ipairs{...} do
        soma = soma + v
    end
    return soma
end

print(Soma2(1, 2, 3, 4, 5))

do 
    local nome = "João"
    print(nome)
end

-- variaveis so existem dentro do bloco de do
print(nome)

-- closures
local function criarSaudacao(saudo)
    return function(nome)
        print(saudo..nome)
    end
end

local saudacao = criarSaudacao("Olá, ")
saudacao("João")

-- recursao
local function fatorial(n)
    if n == 0 then
        return 1
    else
        return n * fatorial(n - 1)
    end
end

print(fatorial(5))

-- anonimas

local quadrado = function (x) return x * x end
print(quadrado(5))

-- fila 
local fila = {}

local function inserirFila(fila, valor)
    table.insert(fila, valor)
end

local function removerFila(fila)
    return table.remove(fila, 1)
end

-- pilha
local pilha = {}

local function inserirPilha(pilha, valor)
    table.insert(pilha, valor)
end

local function removerPilha(pilha)
    return table.remove(pilha)
end

-- Biblioteca Corroutine/thread

local co = coroutine.create(function ()
    print("Olá")
end)

print(coroutine.status(co))

-- dofile e require
-- dofile
    -- Execução de um código, multiplas vezes
    -- Importar dados
    --dofile() 
-- require
    -- Execução de um código
    -- Importar dados (inclui módulos)
    -- Permite retorno
    --require()

-- Modulo
local modulo = require("modulo")

print(modulo)

-- Analise e tratamento de erros

local function dividir(a, b)
    if b == 0 then
        error("Divisão por zero")
    end
    return a / b
end

print(dividir(10,10))

local function raiz(x)
    assert(x >= 0, "Raiz quadrada de número negativo")
    return math.sqrt(x)
end

print(raiz(1))
print(pcall(raiz, -1))