function main()

    local n1, n2
    local bLoop := .T.

    QOUT("Calculadora de área quadrada!" + Chr(10))
    // Loop para certificar que o usuário digite corretamente
    while bLoop
        ACCEPT "Digite a base do quadrado em metros: " TO n1

        if isdigit(n1)
            n1 := Val(n1)
            bLoop := .F.
        else
            QOUT("Valor inválido, digite um número!")
            loop
        end if

        ACCEPT "Digite a altura do quadrado em metros: " TO n2

        if isdigit(n2)
            n2 := Val(n2)

        else
            QOUT("Valor inválido, digite um número!")
            bLoop := .T.

        end if
    end do

    QOUT("A área de um quadro com " + Alltrim(Str(n1)) + "m de base e " + Alltrim(Str(n2)) + "m de altura é igual a " + Alltrim(Str(calcula_area(n1, n2))) + "m²")

RETURN nil

static function calcula_area(valor1, valor2)

    local nArea

    nArea := valor1 * valor2

RETURN nArea