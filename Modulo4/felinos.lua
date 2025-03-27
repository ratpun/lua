local felinos = {
    vida = 100,
    patas = 4
}

function felinos:new(atr)
    local instance = {}
    instance.vida = atr
    setmetatable(instance, {__index = felinos})
    return instance
end

function felinos:damage(dano)
    self.vida = self.vida - dano
end

function felinos:get_vida()
    return self.vida
end

return felinos