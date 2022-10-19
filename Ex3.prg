function main()

    local nLimite
    local bLoop := .T.

    while bLoop
        ACCEPT "Digite até qual número natural gostaria de calcular: " TO nLimite
        
        if isdigit(nLimite) .AND. Val(nLimite) > 0
            nLimite := Val(nLimite)
            QOUT("A somatória de todos números naturais até " + Alltrim(Str(nLimite)) + " é igual a " + Alltrim(Str(calculo(nLimite))))
            bLoop := .F.
        else
            QOUT("Valor inválido, por favor digite um número natural!")
        end if
    end do

RETURN nil

static function calculo(limite)

    local nI
    local nTotal := 0

    for nI := 1 TO limite
        nTotal += nI
    next nI 



RETURN nTotal