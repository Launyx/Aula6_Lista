function main()

    local A, B
    local bLoop := .T.

    while bLoop

        ACCEPT "Digite um número: " TO A
        ACCEPT "Digite outro número: " TO B

        if isdigit(A) .AND. isdigit(B)
            troca(@A, @B)
            bLoop := .F.
            QOUT(A, B)

        else
            QOUT("Valor inválido, tente novamente!")

        end if

    end do

RETURN nil

procedure troca(valor1, valor2)

    local Aux
    Aux := valor1
    valor1 := valor2
    valor2 := Aux

RETURN