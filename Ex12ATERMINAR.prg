function main()

    local nCap, nJur, nPra
    local bLoop := .T.

    QOUT("Calculadora de Montante!")
    // Loop para certificar que o usuário digite corretamente
    while bLoop
        ACCEPT "Digite seu capital atual: " TO nCap

        if isdigit(nCap) .AND. Val(nCap) > 0 // Verifica se o capital é um digito e se é maior que 0
            nCap := Val(nCap)
            bLoop := .F.
        else
            QOUT("Valor inválido, tente novamente!")
        end if

        ACCEPT "Digite quanto de juros você recebe por dia: " TO nJur

        if isdigit(nJur) .AND. Val(nJur) > 0 // Verifica se o juros é um digito e se é maior que 0
            nJur := Val(nJur)
            bLoop := .F.
        else
            QOUT("Valor inválido, tente novamente!")
            bLoop := .T.
        end if

        ACCEPT "Digite quantos dias de prazo: " TO nPra

        if isdigit(nPra) .AND. Val(nPra) > 0    // Verifica se o prazo é um digito e se é maior que 0
            nPra := Val(nPra)
            bLoop := .F.
        else
            QOUT("Valor inválido, tente novamente!")
            bLoop := .T.
        end if
    end do

    QOUT("R$" + Alltrim(Str(nCap)) + " com juros de " + Alltrim(Str(nJur)) + " por " + Alltrim(Str(nPra)) + " dias, resultará em um capital de: " + Alltrim(Str(montante(nCap, nJur, nPra))))


RETURN nil

static function montante(capital, juros, prazo)

    local njuros
    local nRes
    nJuros := (capital * (juros / 100)) * prazo // Calcula o juros e multiplica pelo prazo
    nRes := capital + nJuros // Soma o juros total ao capital atual

RETURN nRes