local var = 5 ~= 5 -- Diferente de...
print(var)

-- operadores logicos 

local var1 = true and false -- E
local var2 = true or false -- OU
local var3 = not true -- NÃO

-- condicionais

if var1 then
    print("var1 é verdadeiro")
else
    print("var1 é falso")
end

if var2 then
    print("var2 é verdadeiro")
elseif var3 or var3 then
    print("var2 é falso")
else
    print("nenhuma das condições anteriores")
end

-- redirecionamento 

::inicio::
print("Digite o numero 1:")
local opcao = io.read("n")

if opcao ~= 1 then
    goto inicio
end

-- manipulação de arquivos
local file, message = io.open("texte.txt", "w") -- abre o arquivo para escrita

if not file then
    print("Erro ao abrir o arquivo: "..message)
else
    print("Arquivo aberto com sucesso")
end

file:write([[
    Esse é um texto de exemplo
    para mostrar como escrever
    em um arquivo
]]) -- escreve no arquivo
file:close() -- fecha o arquivo

-- biblioteca os

local data = os.date("*t") -- pega a data atual
print(data.day)

-- repetição
local i = 0
while i<3 do
    print(i)
    i = i + 1
end

for i=0, 2, 1 do
    print(i)
end

repeat
    print(i)
    i = i + 1
until i == 5

