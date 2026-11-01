module Auxiliar where
{- Tipo data Nat
    Descripcion: estructura de datos para representar números naturales
    Caso base
        Cero
    Caso recursivo
        S Nat
    Uso: Nat como tipo de dato
-}
data Nat = Cero | S Nat deriving (Eq, Show)

{- Tipo data Entero
    Descripcion: estructura de datos para representar números enteros
    Caso base
        Cero
    Caso recursivo
        S Ent 
        Neg Ent
    Uso: Ent como tipo de dato
-}
data Ent = Zero | Suc Ent | Neg Ent deriving (Eq, Show)

{- Tipo data Matrioska
    Descripcion: estructura de datos para representar un conjunto de Matrioskas
    Caso base
        Mati
    Caso recursivo
        Cont Mati
    Uso: Matrioska como tipo de dato
-}
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{-  Funcion: multiplicacionNat
    Descripcion: toma dos números naturales y los multiplica
    Uso: multiplicacionNat (S(S(Cero))) (S(S(Cero))) = S(S(S(S(Cero))))
-}
multiplicacionNat:: Nat -> Nat -> Nat
multiplicacionNat Cero _ = Cero
multiplicacionNat _ Cero = Cero
multiplicacionNat (S n) m = sumaNat m (multiplicacionNat n m)

{-  Funcion: sumaNat
    Descripcion: toma dos números naturales y los suma
    Uso: sumaNat (S(S(Cero))) (S(S(Cero))) = S(S(S(S(Cero))))
-}
sumaNat:: Nat -> Nat -> Nat
sumaNat Cero m = m
sumaNat (S n) m = S (sumaNat n m)

{-  Funcion: sumaEnt
    Descripcion: toma dos números enteros y los suma
    Uso: sumaEnt (Suc(Suc(Cero))) (Neg(Suc(Cero))) = Suc(Cero)
-}
sumaEnt:: Ent -> Ent -> Ent
sumaEnt Zero m = m
sumaEnt n Zero = n
sumaEnt (Suc n) m = Suc (sumaEnt n m)
sumaEnt (Neg n) m = Neg (sumaEnt n m)