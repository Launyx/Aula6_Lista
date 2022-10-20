function main()

    local nI, nCont
    local bDigito
    local tudodigito
    local nNum
    local aNum := {}
    local bLoop := .T.

    while bLoop
        ACCEPT "Digite um número para saber seu módulo: " TO nNum

        if ehpositivo(nNum)
            QOUT("Você digitou um número positivo. O módulo de |" + nNUm + "| é " +  nNum)
            bLoop := .F.

        elseif !ehpositivo(nNum)
            nNum := Val(nNum) * (-1)
            QOUT("Você digitou um número negativo. O módulo de |-" + Alltrim(Str(nNUm)) + "| é " +  Alltrim(Str(nNum)))
            bLoop := .F.

        else
            QOUT("Valor inválido!")
            
        end if
    end do
RETURN nil

static function ehpositivo(valor)

    local bPos
    local nI
    local aNumero := {}
    for nI := 1 TO len(valor)
        AAdd(aNumero, SubStr(valor, nI, 1))
    next nI
    
    if aNumero[1] == "-"
        bPos := .F.
    elseif isdigit(aNumero[1])
        bPos := .T.
    else
        bPos := 0
    end if

RETURN bPos