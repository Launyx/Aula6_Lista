function main()


    local nSala, nRea, nOpc
    local bLoop := .T.
    local bReajuste := .T.

    // Loop para certificar que o usuário digite corretamente
    while bReajuste
        ACCEPT "Você receberá um aumento ou diminuição do salario? 'A' ou 'D': " TO nOpc

        if upper(nOpc) == "A" .OR. upper(nOpc) == "D" .AND. len(nOpc) == 1 .AND. isalpha(nOpc)
            bReajuste := .F.
            
        else
            QOUT("Opção inválida, digite 'A' para aumento ou 'D' para diminuição!")
            
        end if
    end do
   
    QOUT("Calculadora de reajuste salarial!")

    // Loop para certificar que o usuário digite corretamente
    while bLoop
        ACCEPT "Digite seu salário: R$" TO nSala

        if isdigit(nSala)
            nSala := Val(nSala)
            bLoop := .F.
        else
            QOUT("Valor inválido, tente novamente!")
        end if

        ACCEPT "Digite o percentual de reajuste: " TO nRea

        if isdigit(nRea)
            nRea := Val(nRea)
            bLoop := .F.
        else
            QOUT("Valor inválido, tente novamente")
            bLoop := .T.
            loop
        end if
    end do

    if upper(nOpc) == "A"
        QOUT("Seu novo salário com o aumento será de R$" + Alltrim(Str(reajuste_Aumento(nSala, nRea))))
    elseif upper(nOpc) == "D"
        QOUT("Seu novo salário com a diminuição será de R$" + Alltrim(Str(reajuste_Diminuicao(nSala, nRea))))
    end if


RETURN nil

static function reajuste_Aumento(salario, aumento)

    local nRes

    nRes := salario * (1 + (aumento / 100))

RETURN nRes

static function reajuste_Diminuicao(salario, diminuicao)

    local nRes

    nRes := salario * (1 - (diminuicao / 100))

RETURN nRes