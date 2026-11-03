-- LOBO PARA PETS
-- Estrutura de opções e raridades

local Config = {
    local Config = {
    AutoCollectFruits = false,
    AutoPlantFruits = false,
    AutoFeedPets = false,
    AutoBuyPets = false
}

local Raridades = {
    Comum = false,
    Raro = false,
    Epico = false,
    Lendario = false,
    Mitico = false,
    Secreto = false
}

local function AtivarFuncao(nome, ativar)
    if Config[nome] ~= nil then
        Config[nome] = ativar
        print(nome .. ": " .. tostring(ativar))
    end
end

local function SelecionarRaridade(nome, ativar)
    if Raridades[nome] ~= nil then
        Raridades[nome] = ativar
        print("Raridade " .. nome .. ": " .. tostring(ativar))
    end
end

-- Configurações iniciais
AtivarFuncao("AutoCollectFruits", true)
AtivarFuncao("AutoPlantFruits", true)
AtivarFuncao("AutoFeedPets", true)
AtivarFuncao("AutoBuyPets", true)

SelecionarRaridade("Secreto", true)
SelecionarRaridade("Mitico", true)

-- Exibir configurações
for nome, ativada in pairs(Config) do
    print(nome .. ": " .. tostring(ativada))
end

for raridade, selecionada in pairs(Raridades) do
    if selecionada then
        print("Raridade selecionada: " .. raridade)
    end
    end
