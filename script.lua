
local Raridades = {
    Comum = false,
    Raro = false,
    Epico = false,
    Lendario = false,
    Mitico = false,
    Secreto = false
}

local function SelecionarRaridade(nome, ativar)
    if Raridades[nome] ~= nil then
        Raridades[nome] = ativar
    end
end

SelecionarRaridade("Secreto", true)
SelecionarRaridade("Mitico", true)

for raridade, selecionada in pairs(Raridades) do
    if selecionada then
        print("Raridade selecionada: " .. raridade)
    end
end
