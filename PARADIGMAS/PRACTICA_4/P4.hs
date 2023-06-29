module P4 where
{-Rubio Haro Diego
Paradigmas de Programación 3CM3
Práctica_4:
    -Usar Either para determinar si un numero esta dentro de un intervalo, si es asi se le suma 100, si no se retorna una cadena que diga
    si esta a la izquierda o derecha del intervalo de 0 a 50.
    -Codificar una funcion recursiva llamada insertL que inserte el valor new a la izquierda de la primera ocurrencia de valor old en la lista xs.
    -Usar Maybe para codificar una funcion que obtenga la raiz cuadrada de un numero, si es negativo regresa Nothing.
    -Usar la notacion de registro para definir un tipo de datos racional que tenga las operaciones de suma, resta, multiplicacion e igualdad. 

-}
--Funcion que determina si un numero esta dentro de un intervalo
intervalo :: Int -> Either String Int
intervalo x
    | x >= 0 && x <= 50 = Right (x + 100)
    | x < 0 = Left "El numero esta a la izquierda del intervalo"
    | x > 50 = Left "El numero esta a la derecha del intervalo"

--Funcion que inserta un valor a la izquierda de la primera ocurrencia de otro valor en una lista
insertL :: Eq a => a -> a -> [a] -> [a]
insertL new old [] = []
insertL new old (x:xs)
    | x == old = new : x : xs
    | otherwise = x : insertL new old xs

--Funcion que obtiene la raiz cuadrada de un numero 
raiz :: Double -> Maybe Double
raiz x
    | x < 0 = Nothing
    | otherwise = Just (sqrt x)

--Definicion de tipo de dato racional
data Racional = Racional { numerador :: Int, denominador :: Int } deriving (Show, Eq)





