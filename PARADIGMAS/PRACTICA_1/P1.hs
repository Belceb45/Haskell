module P1 where
{-Rubio Haro Diego
Paradigmas de Programación 3CM3
Práctica_1:
    -Escribir una función que construya una lista donde se
     repitan 2 valores infinitamente. Ejemplo:
                        taje 8(repiteDos 7 3)
                                [7,3,7,3,7,3,7,3]
    -Escribir una función que convierta grados centigrados a kelvin.
    -Escribir una función recursiva que eleve una base a un exponente. 
    -Escribir una funcion que construya una lista con todos los divisores de un numero. 
    -Escribir una función que obtenga el valor que esta en la posicion n de una lista.


-}
--Funcion que construye una lista donde se repitan 2 valores 50 veces.
repiteDos :: a -> a -> Int -> [a]
repiteDos x y 0 = []
repiteDos x y n = [x,y] ++ repiteDos x y (n-1)



--Funcion que convierte grados centigrados a kelvin.
centigradosAKelvin :: Float -> Float
centigradosAKelvin x = x + 273.15

--Funcion que eleva una base a un exponente.
eleva :: Float -> Float -> Float
eleva x 0 = 1
eleva x y = x * eleva x (y-1)

--Funcion que construye una lista con todos los divisores de un numero.
divisores :: Int -> [Int]
divisores x = [y | y <- [1..x], mod x y == 0]

--Funcion que obtiene el valor que esta en la posicion n de una lista.
posicion :: Int -> [a] -> a
posicion 0 (x:xs) = x
posicion n (x:xs) = posicion (n-1) xs

