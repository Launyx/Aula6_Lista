function main()

    local n1, n2, n3
    local bLoop := .T.

    QOUT("Calculadora de média!")
    while bLoop
        ACCEPT "Digite o primeiro valor: " TO n1

        if isdigit(n1)
            n1 := Val(n1)
            bLoop := .F.
        else
            QOUT("Valor inválido, tente novamente!")
            loop
        end if

        ACCEPT "Digite o primeiro valor: " TO n2

        if isdigit(n2)
            n2 := Val(n2)
            bLoop := .F.
        else
            QOUT("Valor inválido, tente novamente!")
            bLoop := .T.
            loop
        end if

        ACCEPT "Digite o primeiro valor: " TO n3

        if isdigit(n3)
            n3 := Val(n3)
            bLoop := .F.
        else
            QOUT("Valor inválido, tente novamente!")
            bLoop := .T.
        end if
    end do

    QOUT("A média dos valores digitados é: " + Alltrim(Str(media(n1, n2, n3))))

RETURN nil

static function media(valor1, valor2, valor3)

    local nRes

    nRes := (valor1 + valor2 + valor3) / 3

RETURN nRes