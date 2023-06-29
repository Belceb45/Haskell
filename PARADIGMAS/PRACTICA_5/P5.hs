module P5 where
{-Rubio Haro Diego
Paradigmas de Programación 3CM3
Práctica_5:
    -Codificar una funcion que haga un lista de listas con las
    tablas de multiplicar de los numeros del 1 al 10.
    -Codificar una funcion que sume dos matrices 2x2 dada por el usuario.
    -Codificar una funcion que haga la union de dos conjuntos.

-}
--Funcion que hace una lista de listas con las tablas de multiplicar de los numeros del 1 al 10
tablas :: [[Int]]
tablas = [ [x * y | y <- [1..10]] | x <- [1..10]]

--Funcion que suma dos matrices 2x2 por patrones
sumaMatrices :: (Num a) => [[a]] -> [[a]] -> [[a]]
sumaMatrices [[a,b],[c,d]] [[e,f],[g,h]] = [[a+e,b+f],[c+g,d+h]]

--Funcion que hace la union de dos conjuntos
union :: Eq a => [a] -> [a] -> [a]
union [] [] = []
union [] y = y
union x [] = x
union (x:xs) y
    | elem x y = union xs y
    | otherwise = x : union xs y



