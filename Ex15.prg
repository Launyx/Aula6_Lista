// REQUEST HB_GT_WIN_DEFAULT
function main()

    local nI, nCont
    local bDigito
    local tudodigito
    local nNum
    local aNum := {}
    local bLoop := .T.

    while bLoop
        ACCEPT "Digite um número para saber seu módulo: " TO nNum

        for nI := 1 TO len(nNum)
            AAdd(aNum, SubStr(nNum, nI, 1)) //Adiciona caractere por caractere do número a uma string
        next nI

        if isdigit(aNum[1]) .OR. aNum[1] == "-"
            for nCont := 2 TO len(aNum)
                tudodigito := isdigit(aNum[nCont])
                if tudodigito == .F.
                    bDigito := .F.
                else
                    bDigito := .T.
                end if
            next nCont

        // elseif aNum[1] == "-"
        //     for nCont := 2 TO len(aNum)
        //         tudodigito := isdigit(aNum[nCont])
        //         if tudodigito == .F.
        //             bDigito := .F.
        //         else
        //             bDigito := .T.
        //         end if
        //     next nCont
        else
            QOUT("Valor inválido")
            bDigito := .F.
        end if

        if bDigito == .T.
            if ehpositivo(nNum)
                QOUT("Você digitou um número positivo. O módulo de |" + nNUm + "| é " +  nNum)

            else
                nNum := Val(nNum) * (-1)
                QOUT("Você digitou um número negativo. O módulo de |-" + Alltrim(Str(nNUm)) + "| é " +  Alltrim(Str(nNum)))
            end if
        else
            QOUT("Valor inválido!")
        end if

    end do

RETURN nil


static function ehpositivo(valor)

    local bPos
    
    if Val(valor) >= 0
        bPos := .T.
    else
        bPos := .F.
    end if

RETURN bPos