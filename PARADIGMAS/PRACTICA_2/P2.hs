module P2 where
{-Rubio Haro Diego
Paradigmas de Programación 3CM3
Práctica_2:
    -Eliminar los espacios en blanco al inicio de una cadena.
    -Eliminar los espacios en blanco al final de una cadena.
    -Eliminar un caracter de una cadena.
    -Retornar la posición de un caracter en una cadena. Si no esta que regrese -1.
    -Retorne los prefijos de una cadena.


-}
--Funcion que elimina los espacios en blanco al inicio de una cadena.
eliminaEspaciosInicio :: [Char] -> [Char]
eliminaEspaciosInicio [] = []
eliminaEspaciosInicio (x:xs) = if x == ' ' then eliminaEspaciosInicio xs else (x:xs)

--Funcion que elimina los espacios en blanco al final de una cadena.
eliminaEspaciosFinal :: [Char] -> [Char]
eliminaEspaciosFinal [] = []
eliminaEspaciosFinal (x:xs) = if last (x:xs) == ' ' then eliminaEspaciosFinal (init (x:xs)) else (x:xs)

--Funcion que elimina un caracter de una cadena.
eliminaCaracter :: Char -> [Char] -> [Char]
eliminaCaracter _ [] = []
eliminaCaracter n (x:xs)
    | n == x = eliminaCaracter n xs
    | otherwise = x : eliminaCaracter n xs


--Funcion que retorna la posicion de un caracter en una cadena. Si no esta que regrese -1.
posicion :: Char -> [Char] -> Int
posicion _ [] = -1
posicion c (x:xs) = if c == x then 0 else 1 + posicion c xs
