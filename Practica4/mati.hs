import Auxiliar

{-6.Funcion: mayorIgual
    Descripcion: compara dos matrioskas e indica si la primera es mayor o igual que la segunda
    Uso: mayorIgual (Cont(Cont(Mati))) (Cont(Cont(Cont Mati))) = False
-}
mayorIgual:: Matrioska -> Matrioska -> Bool
mayorIgual Mati Mati = True
mayorIgual Mati (Cont m) = False
mayorIgual (Cont n) Mati = True
mayorIgual (Cont n) (Cont m) = mayorIgual n m

{-7.Funcion: aplana
    Descripcion: covierte una matriosak anidada en una lista plana de todas las matrioskas que la componen, desde la más exteran hasta la más interna
    Uso: aplana (Cont (Cont Mati)) = [Cont(Cont Mati), Cont Mati Mati]
-}
aplana:: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont m) = (Cont m) : aplana m
