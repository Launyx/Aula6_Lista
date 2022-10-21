// Unidade de funções financeiras
static function montante(capital, juros, prazo, tipJur)

    local njuros
    local nMontante
    if upper(tipJur) == "SIMPLES"
        nJuros := capital * (juros / 100) * prazo // Calcula o juros simples e multiplica pelo prazo
        nMontante := capital + nJuros // Calcula montante somando o capital atual com o juros simples

    elseif upper(tipJur) == "COMPOSTO"
        nJuros := (1 + (juros / 100)) ** prazo  // Calcula o juros composto
        nMontante := capital * nJuros   // Calcula montante somando o capital atual com o juros composto

    end if
RETURN nMontante

// Exercício 13
static function valor_presente(montante, juros)

    local valPre

    valPre := montante - juros

RETURN valPre