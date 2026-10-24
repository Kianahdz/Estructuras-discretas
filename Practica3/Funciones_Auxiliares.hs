module Funciones_Auxiliares (esParBin, esPrimo) where
{-  Funcion: esParBin
    Descripcion: determina con valores booleanos si un número es par o no dependiendo de si tiene residuo al dividir entre 2.
-}
esParBin :: Int -> Bool
esParBin x = ( x `mod` 2) == 0

{-  Funcion: esPrimo
    Descripción: determina si un número dado es primo o no dependiendo del número de divisores que tenga que sean exactos a y.
-}
esPrimo :: Int -> Bool
esPrimo y = length [x | x <- [1..y], y `mod` x == 0] == 2
