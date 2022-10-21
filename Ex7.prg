function main()

    local n1, n2
    local bLoop := .T.

    QOUT("Calculadora de potência!" + Chr(10))

    // Loop para certificar que o usuário digite corretamente
    while bLoop
        ACCEPT "Digite um número para a base: " TO n1

        if isdigit(n1)
            n1 := Val(n1)
            bLoop := .F.
        else
            QOUT("Valor inválido, digite um número!")
            loop
        end if

        ACCEPT "Digite um número para o expoente: " TO n2

        if isdigit(n2)
            n2 := Val(n2)

        else
            QOUT("Valor inválido, digite um número!")
            loop

        end if
    end do

    QOUT(Alltrim(Str(n1)) + " elevado a " + Alltrim(Str(n2)) + " é igual a " + Alltrim(Str(POT(n1, n2))))


RETURN nil

static function POT(valor1, valor2)

    local res
    res := valor1 ** valor2 // Calcula potência


RETURN res