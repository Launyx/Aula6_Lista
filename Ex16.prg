function main()

    local a := "oi"
    local b := "99"

    qout(isletra("a"))
    QOUT(isdigito("0"))
    QOUT(isSimbolo("_"))
    QOUT(toLower("F31J04D4"))
    cTroca(@a, @b)
    QOUT(a + " " + b)

RETURN nil

function isLetra(c)

    local letra

    if Asc(c) >= 65 .AND. asc(c) <= 90 .OR. asc(c) >= 97 .AND. asc(c) <= 122    // Certifica que o que foi digitado é uma letra por meio da tabela ascii
        letra := .T.
    else
        letra := .F.
    end if

RETURN letra

function isDigito(n)

    local numero

    if Asc(n) >= 48 .AND. asc(n) <= 57  // Verifica se o que foi digitado é um número por meio da tabela ascii
        numero := .T.
    else
        numero := .F.
    end if

RETURN numero

function isSimbolo(s)

    local simbolo

    // Verifica se o que foi digitado é um simbolo por meio da tabela ascii
    if Asc(s) >= 33 .AND. asc(s) <= 47 .OR. Asc(s) >= 58 .AND. asc(s) <= 64 .OR. Asc(s) >= 91 .AND. asc(s) <= 96 .OR. Asc(s) >= 123 .AND. asc(s) <= 126
        simbolo := .T.
    else
        simbolo := .F.
    end if

RETURN simbolo

function toLower(c)

    local baixa := ""
    local alta
    local nI, cont
    local aLetras := {}

    // Adiciona letra por letra a uma Array
    for nI := 1 TO len(c)
        AAdd(aLetras, SubStr(c, nI, 1))
    next nI

    for cont := 1 TO len(aLetras)
        if Asc(aLetras[cont]) >= 65 .AND. asc(aLetras[cont]) <= 90 // Verifica cada conteúdo da array para saber se o caracter é uma letra maiuscula
            alta := Asc(aLetras[cont])
            baixa += Chr(alta + 32) // Soma 32 ao índice da tabela ascii do caracter digitado para obter o indíce da sua versão em caixa alta
        else
            baixa += aLetras[cont]
        end if
    next cont

RETURN baixa

function cTroca(a, b)

    // Troca as variáveis com ajuda de uma variável auxiliar
    local aux
    aux := a
    a := b
    b := aux

RETURN nil