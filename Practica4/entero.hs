import Auxiliar
{-2.Funcion: a_entero
    Descripcion: toma un número natural y lo lleva a su valor entero
    Uso: a_entero (Suc(Suc(Cero))) = 2
         a_entero Cero = 0
-}
a_entero:: Nat -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n 