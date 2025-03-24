
-- tipos de variáveis
local n -- nil == null
local b = true -- boolean
local i = 1 -- number(int)
local f = 1.1 -- number(float)
local s = "string" -- string

print(type(f)) -- imprime o tipo da variável

-- mudando o tipo da variável, tipagem dinâmica
f = "string"
print(type(f))

-- conversao de tipos
local x = 10 -- number
local y = "20" -- string

local xx = tostring(x) -- converte para string
local yy = tonumber(y) -- converte para number

-- uniao de strings
local nome = "Joao"
local sobrenome = "Silva"
local nomeCompleto = nome .. " " .. sobrenome
print(nomeCompleto)

local texto = "Ola " ..x
print(texto)

-- bibliotecas

-- math é uma biblioteca padrão do lua que contém funções matemáticas
local random = math.random(1, 10) -- gera um número aleatório entre 1 e 10
print(random)

-- io é uma biblioteca padrão do lua que contém funções de entrada e saída
print("Digite um número:")
local entrada = io.read("n") -- lê uma linha do console e converte para number
print(entrada)

-- string é uma biblioteca padrão do lua que contém funções para manipulação de strings
local texto = "Sapo"
print(#texto) -- imprime o tamanho da string
print(string.upper(texto)) -- converte a string para maiúsculo
print(string.lower(texto)) -- converte a string para minúsculo
print(string.reverse(texto)) -- inverte a string
local pet = "cachorro"
local form = string.format("O %s é um animal", pet) -- formata a string
print(form)
local form2 = "meu nome é "..texto.." e amo"..pet -- concatenação de strings
print(form2)