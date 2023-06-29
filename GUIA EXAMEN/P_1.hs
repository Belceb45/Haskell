module Test where

condicion_1 :: Integer -> String
condicion_1 x
    | x == 0 = "Igual a cero"
    | x > 0 = "Mayor a cero"
    | otherwise = "Menor a cero"

condicion_2 :: Int -> Int -> String
condicion_2 x y
    | x == y = "Son iguales"
    | x > y = "Primero es mayor"
    | otherwise = "Primero es menor"

condicion_3 :: Int -> Int -> String
condicion_3 x y
    | x > 0 && y > 0 = "Primer cuadrante"
    | x < 0 && y > 0 = "Segundo cuadrante"
    | x < 0 && y < 0 = "Tercer cuadrante"
    | otherwise = "Cuarto cuadrante"
    
triangulo :: Int -> Int -> Int -> String
triangulo a b c
    | a == b && b == c = "Es equilatero"
    | a == b && b /= c = "Isoceles"
    | otherwise = "Escaleno"

-- FUNCIONES CON TUPLAS
tpls :: a -> (a,a)
tpls x = (x,x)

-- tpls1 :: (a,a,a) -> (a,a,a) -> Int

-- FUNCIONES LAMBDA
mult :: Num(a) => a -> a
mult = \x -> x*2

cuadrado :: Num(a) => a -> a
cuadrado = \x -> x*x

suma :: Num(a) => a -> a -> a
suma = \x -> \y -> x+y
  
prom :: Num(a) => a -> a -> a
prom = \x -> \y -> div x+y 2

