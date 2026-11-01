import Auxiliar

{-2.Funcion: a_entero
    Descripcion: toma un número natural y lo lleva a su valor entero
    Uso: a_entero (Suc(Suc(Cero))) = 2
         a_entero Cero = 0
-}
a_entero:: Nat -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n

{-3.Funcion: potenciaNat
    Descripcion: toma un número natural y lo eleva a la potencia del segundo
    Uso: potenciaNat (S(S(Cero))) (S(S(Cero))) = S(S(S(S(Cero))))
-}
potenciaNat:: Nat -> Nat -> Nat
potenciaNat _ Cero = S Cero
potenciaNat n (S m) = multiplicacionNat n (potenciaNat n m)

{-4.Funcion: facNat
    Descripcion: devuelve el factorial de un número natural
    Uso: facNat (S(S(Cero))) = S(S(Cero))
-}
facNat:: Nat -> Nat
facNat Cero = S Cero
facNat (S n) = multiplicacionNat (S n) (facNat n)

