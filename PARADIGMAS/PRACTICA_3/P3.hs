module P3 where
{-Rubio Haro Diego
Paradigmas de Programación 3CM3
Práctica_3:
    -Usar fold para codificar una funcion que cuente cuantas veces aparecio un valor en una lista.
    -Usar fold para codificar una funcion que sustituya todas las ocurrencias de un valor old por un valor new en una lista.
    -Usar fold para codificar una funcion que calcule la siguiente suma: 1+2^3+3^3+4^3+...+n^3.
    -Usar fold para codificar una funcion que elimine uno de cada 2 elementos de una lista.


-}

--Funcion que cuente cuantas veces aparecio un valor en una lista.
contar :: Eq a => a -> [a] -> Int
contar n xs = foldr (\x y -> if x == n then 1 + y else y) 0 xs

--Funcion que sustituya todas las ocurrencias de un valor old por un valor new en una lista.
sustituir :: Eq a => a -> a -> [a] -> [a]
sustituir n m xs = foldr (\x y -> if x == n then m : y else x : y) [] xs

--Funcion que calcule la siguiente suma: 1+2^3+3^3+4^3+...+n^3.
sumaPotencias :: Int -> Int
sumaPotencias n = foldr (\x y -> x^3 + y) 0 [1..n]

--Funcion que elimine uno de cada 2 elementos de una lista.
eliminar :: [a] -> [a]
eliminar xs = foldr (\x y -> if mod (length y) 2 == 0 then y else x : y) [] xs

