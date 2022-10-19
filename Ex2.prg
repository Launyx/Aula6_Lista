function main()

    prestacao()


RETURN nil

static function prestacao()

    local nProd, nTaxa, nPrest, nData
    local bLoop := .T.

    ACCEPT "Digite o valor da Prestação: " TO nProd
    ACCEPT "Digite o valor da taxa: " TO nTaxa
    ACCEPT "Digite quantos dias se passaram do vencimento: " TO nData

    nPrest := Val(nProd) + (Val(nProd) * (Val(nTaxa) / 100) * Val(nData) )
    QOUT("Valor da prestação: " + AllTrim(Str(nPrest)))


RETURN nil
