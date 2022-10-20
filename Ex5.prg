REQUEST HB_GT_WIN_DEFAULT
// Precisa buildar pois variáveis private não funcionam no terminal
function main()

    local nNUm1, nNUm2
    local bLoop := .T.
    private nResultado
    private nResto
    
    while bLoop
        ACCEPT "Digite um numero : " TO nNUm1

        if isdigit(nNum1)
            nNum1 := Val(nNUm1)
            bLoop := .F.
        else
            QOUT("Valor invalido, tente novamente!")
            loop
        end if

        ACCEPT "Digite outro numero mas diferente de zero: " TO nNUm2

        if isdigit(nNum2) .AND. Val(nNUm2) != 0
            nNUm2 := Val(nNUm2)
            bLoop := .F.

        else
            QOUT("Valor invalido, tente novamente!")
            bLoop := .T.
        end if
    end do

    divide(nNUm1, nNUm2)
    QOUT("O resultado de " + Alltrim(Str(nNUm1)) + " dividido por " + Alltrim(Str(nNUm2)) + " e " + Alltrim(Str(nResultado)))
    QOUT("O resto de " + Alltrim(Str(nNUm1)) + " dividido por " + Alltrim(Str(nNUm2)) + " e " + Alltrim(Str(nResto)))
    wait

RETURN nil


procedure divide(valor1, valor2)

    nResultado := Int(valor1 / valor2)
    nResto := valor1 % valor2
    
RETURN