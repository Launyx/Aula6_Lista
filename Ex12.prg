SET PROCEDURE TO Ex14.prg

function main()

    local nCap, nJur, nPra, tipJur, nCalc, nMon, nTaxa
    local bLoop := .T.
    local bLoop1 := .T.
    local bLoop2 := .T.
    local bLoop3 := .T.


    while bLoop2
        ACCEPT "Gostaria de calcular o VF (montante) ou o VP (valor atual)? " TO nCalc

        if upper(nCalc) != "VF" .AND. upper(nCalc) != "VP"
            QOUT("Opção inválida, tente novamente!")
        else
            exit
        end if
    end do

    if upper(nCalc) == "VF"
        while bLoop1
            ACCEPT "Gostaria de usar juros 'simples' ou 'composto?' " TO tipJur
    
            if upper(tipJur) == "SIMPLES" .OR. upper(tipJur) == "COMPOSTO"
                exit
            else
                QOUT("Opção inválida, digite 'simples' ou 'composto'!")
    
            end if
        end do
        QOUT("Calculadora de Montante!")
        // Loop para certificar que o usuário digite corretamente
        while bLoop
            ACCEPT "Digite seu capital atual: " TO nCap

            if isdigit(nCap) .AND. Val(nCap) > 0 // Verifica se o capital é um digito e se é maior que 0
                nCap := Val(nCap)
                bLoop := .F.
            else
                QOUT("Valor inválido, tente novamente!")
            end if

            ACCEPT "Digite a taxa mensal: " TO nTaxa

            if isdigit(nTaxa) .AND. Val(nTaxa) > 0 // Verifica se o juros é um digito e se é maior que 0
                nJur := Val(nTaxa)
                bLoop := .F.
            else
                QOUT("Valor inválido, tente novamente!")
                bLoop := .T.
            end if

            ACCEPT "Digite quantos meses de prazo: " TO nPra

            if isdigit(nPra) .AND. Val(nPra) > 0    // Verifica se o prazo é um digito e se é maior que 0
                nPra := Val(nPra)
                bLoop := .F.
            else
                QOUT("Valor inválido, tente novamente!")
                bLoop := .T.
            end if
        end do

        if upper(tipJur) == "SIMPLES"
            QOUT("R$" + Alltrim(Str(nCap)) + " com juros simples de " + Alltrim(Str(nJur)) + "% por " + Alltrim(Str(nPra)) + " meses, resultará em um capital de: R$" + Alltrim(Str(montante(nCap, nJur, nPra, tipJur))))
        else
            QOUT("R$" + Alltrim(Str(nCap)) + " com juros compostos de " + Alltrim(Str(nJur)) + "% por " + Alltrim(Str(nPra)) + " meses, resultará em um capital de: R$" + Alltrim(Str(montante(nCap, nJur, nPra, tipJur))))
        end if
    else
        QOUT("Calculadora de valor presente!")
        while bLoop3
            ACCEPT "Digite o seu montante: " TO nMon

            if isdigit(nMon)
                nMon := Val(nMon)
                bLoop3 := .F.
            else
                QOUT("Valor inválido, tente novamente!")
            end if

            ACCEPT "Digite o total de juros: " TO nJur

            if isdigit(nJur)
                nJur := Val(nJur)
                bLoop3 := .F.
            else
                QOUT("Valor inválido, tente novamente!")
                bLoop3 := .T.
            end if
        end do

        QOUT("O valor presente com montante de R$" + Alltrim(Str(nMon)) + " e juros de R$" + Alltrim(Str(nJur)) + " é igual a R$" + Alltrim(Str(valor_presente(nMon, nJur))))
    end if

RETURN nil