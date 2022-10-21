function main()

    // Variáveis para o inverte
    local a := 1
    local b := 9

    iTroca(@a, @b)
    QOUT(Alltrim(Str(a)) + " " + Alltrim(Str(b)))
    QOUT(isPar(26489576))
    QOUT(Inverte(-1))
    QOUT(isDiv())

RETURN nil

function iTroca(a, b)

    // Troca as variáveis com ajuda de uma variável auxiliar
    local aux
    aux := a
    a := b
    b := aux

RETURN nil

function isPar(x)

    local teste := 0
    local par
    teste := x % 2  // Calcula o resto de X por 2
    if teste == 0   // Se o resto x por 2 for igual a 0, o número é par
        par := .T.
    else
        par := .F.     
    end if

RETURN par

function isImpar(x)

    local teste := 0
    local impar

    teste := x % 2  // Calcula o resto de X por 2
    if teste != 0   // Se o resto de x por 2 for diferente de 0, o número é ímpar
        impar := .T.

    else
        impar := .F.

    end if

RETURN impar

function Inverte(x)

    local Inver

    Inver := x * (-1)   // Inverte o sinal do número multiplicando-o por -1

RETURN Inver

function isDiv(a, b)

    local div
    local calc := 0

    calc := a % b   // calcula o resto de A divido por B
    if calc == 0    // se o resto for 0, A é divisível por B
        div := .T.
    else
        div := .F.
    end if

RETURN div