module P1 where

--Codificar una funcion que use la notacion do para calcular el producto cartesiano de 3 conjuntos
--
productoCartesiano :: [a] -> [b] -> [c] -> [(a,b,c)]
productoCartesiano xs ys zs = do
    x <- xs
    y <- ys
    z <- zs
    return (x,y,z)


--Hacer esta expresion usando la notacion do "Just 1000 >>= (\a -> Just (a <1500))"
--
ejemplo1 :: Maybe Bool
ejemplo1 = do
    a <- Just 1000
    return (a < 1500)


--Hacer esta expresion usando la notacion do "[1,2]>>=\n->['a','b']>>=\ch->return (n,ch)"
--
ejemplo :: [(Int,Char)]
ejemplo = do
    n <- [1,2]
    ch <- ['a','b']
    return (n,ch)


--Hacer esta expresion usando la notacion do "Just 433 >>= (\a -> Just "?" >>= (\b -> Just (show a ++ " " ++b)))"
--
ejemplo2 :: Maybe String
ejemplo2 = do
    a <- Just 433
    b <- Just "?"
    return (show a ++ " " ++ b)

