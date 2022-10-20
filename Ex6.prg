function main()
    
    local nNum
    local bLoop := .T.

    // Loop para certificar que o usuário digite corretamente
    while bLoop
        ACCEPT "Digite um número para saber seu dobro: " TO nNum

        if isdigit(nNum)
            nNum := Val(nNum)
            bLoop := .F.
        else
            QOUT("Valor inválido, digite um número!")
        end if
    end do

    QOUT("O dobro de " + Alltrim(Str(nNum)) + " e " + Alltrim(Str(dobro(nNum))))


RETURN nil

static function dobro(valor)

    local res := 0

    res := valor * 2

RETURN res
