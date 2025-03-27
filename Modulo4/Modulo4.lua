-- Definição de objetos

local Gato = {
    vida = 100,
    cor = "Preto",
    miar = function()
        print("Miau")
    end,
}

function Gato:damage(dano)
    self.vida = self.vida - dano
end

print(Gato.vida)
print(Gato.cor)
Gato.miar()
Gato.damage(Gato,10)
print(Gato.vida)

-- MetaTables
local t = {valor = 10}
local t1 = {valor = 20}

local mt = {
    __add = function (a,b)
        return a.valor + b.valor
    end
}

setmetatable(t, mt)
setmetatable(t1, mt)

print(t1 + t)

-- objetos com MetaTables
local table = {}
local metatable = {
    __index = function (tabela, chave)
        return "Chave não encontrada: "..chave
    end
}

setmetatable(table, metatable)
print(table.valor)

local fallback = {
    n3=30
}

local n = {n1 = 10, n2 = 20}
local met = {
    __index = fallback
}

setmetatable(n, met)
print(n.n3)

-- Classes
local classe1 = {} 

function classe1.new()  -- cria novo objeto
    local self = {} -- novo objeto
    self.vida = 100 -- propriedade para todos os objetos da classe

    function self:dano(dano)
        self.vida = self.vida - dano
    end
    return self
end

local obj1 = classe1.new()
local obj2 = classe1.new()
print(obj1.vida)
obj1:dano(10)
print(obj1.vida)
print(obj2.vida)

-- Classes por arquivos
local classe_felinos = require("felinos")
local gato = classe_felinos:new(50)
local leao = classe_felinos:new(200)
gato:damage(10)
leao:damage(20)
print(gato:get_vida())
print(leao:get_vida())

