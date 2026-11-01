import Auxiliar

{-1.Funcion: a_natural
    Descripcion: toma un número entero y lo lleva a su estructura de dato natural
    Uso: a_natural 2 = S(S(Cero))
-}
a_natural:: Int -> Nat
a_natural 0 = Cero
a_natural n = S(a_natural (n-1))

{-5.Funcion: multiEnt
    Descripcion: toma dos números enteros y los multiplica
    Uso: multiEnt (Suc(Suc(Cero))) (Neg(Suc(Cero))) = Neg(Suc(Suc(Cero)))
-}
multiEnt:: Ent -> Ent -> Ent
multiEnt Zero _ = Zero
multiEnt _ Zero = Zero
multiEnt (Suc n) (Suc m) = sumaEnt (Suc m) (multiEnt n (Suc m))
multiEnt (Suc n) (Neg m) = Neg (multiEnt (Suc n) m)
multiEnt (Neg n) (Suc m) = Neg (multiEnt n (Suc m))
multiEnt (Neg n) (Neg m) = multiEnt n m

