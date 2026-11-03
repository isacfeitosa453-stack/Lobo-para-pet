-- LOBO PARA PETS
-- Estrutura de opções e raridades

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

-- Ativar ou desativar uma função
local function AtivarFuncao(nome, ativar)
    if Config[nome] ~= nil then
        Config[nome] = ativar
        print(nome .. ": " .. tostring(ativar))
    end
end

-- Selecionar uma raridade
local function SelecionarRaridade(nome, ativar)
    if Raridades[nome] ~= nil then
        Raridades[nome] = ativar
        print("Raridade " .. nome .. ": " .. tostring(ativar))
    end
end

-- Exemplo de seleção
SelecionarRaridade("Secreto", true)
SelecionarRaridade("Mitico", true)

-- Exemplo de ativação
AtivarFuncao("AutoCollectFruits", true)
AtivarFuncao("AutoPlantFruits", true)
AtivarFuncao("AutoFeedPets", true)
AtivarFuncao("AutoBuyPets", true)

-- Mostrar as funções ativadas
for nome, ativada in pairs(Config) do
    if ativada then
        print("Função ativada: " .. nome)
    end
end

-- Mostrar as raridades selecionadas
for raridade, selecionada in pairs(Raridades) do
    if selecionada then
        print("Raridade selecionada: " .. raridade)
    end
end

-- Integração com as ações reais do jogo:
-- coleta de frutas, plantio, alimentação e compra
-- precisam de lógica autorizada do jogo.
