import Auxiliar
{-1.Funcion: a_natural
    Descripcion: toma un número entero y lo lleva a su estructura de dato natural
    Uso: a_natural 2 = S(S(Cero))
-}
a_natural:: Int -> Nat
a_natural 0 = Cero
a_natural n = S(a_natural (n-1))

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