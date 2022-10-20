// REQUEST HB_GT_WIN_DEFAULT
function main()

    local nNum

    ACCEPT "Digite um número para saber se ele é positivo: " TO nNum

    if ehpositivo(nNum)
        QOUT(nNum + " é um número positivo, portanto seu módulo é " + nNum)
    else
        nNum := (Val(nNUm)) * (-1)  // Só calcula módulo se a função ehpositivo retornar falso
        QOUT("-" + Alltrim(Str(nNum)) + " é um número negativo, portanto seu módulo é " + Alltrim(Str(nNum)))
    end if

    wait

RETURN nil

static function ehpositivo(valor)

    local bPos, nCont, nI, falso, cont
    local contador := 0
    local aNumero := {}
    local aLogicos := {}

    for nI := 1 TO len(valor)   // Laço para adicionar caractere por caracter a uma Array
        AAdd(aNumero, SubStr(valor, nI, 1))
    next nI

    for cont := 1 TO len(valor) // Laço para adicionar a verificação de cada caractere, se este é um dígito ou não
        AAdd(aLogicos, isdigit(aNumero[cont]))

    next cont

    for nCont := 2 TO len(aLogicos) // Laço para verificar se há caracteres não digitos entre os digitos
        falso := aLogicos[nCont]    
        if falso == .F.             // Se um dos caracteres não for digito ele soma ao contador
            contador ++
        end if
    next nCont

    if aNumero[1] == "-" .AND. contador == 0    // se o primeiro caractere digitado é '-' e não há outro caractere que não seja digito, o número é negativo
        bPos := .F.
    elseif isdigit(aNumero[1]) .AND. contador == 0  // Se o primeiro caractere é um digito e não há outro caractere que não seja digito, o número é positivo
        bPos := .T.
        
    else   // Se nenhuma das condições acima for aceita, o valor digitado possui caractere inválido
        QOUT("Valor inválido!")
        break
    end if

RETURN bPos