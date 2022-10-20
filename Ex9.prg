function main()

    local nNum
    local bLoop := .T.

    // Loop para certificar que o usuário digite corretamente
    while bLoop
        ACCEPT "Digite um número para saber seu sucessor e antecessor: " TO nNum

        if isdigit(nNum)
            nNum := Val(nNum)
            bLoop := .F.
        else
            QOUT("Valor inválido, digite um número!")
        end if
    end do

    QOUT("O antecessor de " + Alltrim(Str(nNum)) + " é " + Alltrim(Str(antecessor(nNum))) + " e o seu sucessor é " + Alltrim(Str(sucessor(nNum))))

RETURN nil

static function sucessor(valor1)

    local nRes

    nRes := valor1 + 1

RETURN nRes

static function antecessor(valor)

    local nRes

    nRes := valor - 1

RETURN nRes