import Funciones_Auxiliares
{-2.Funcion: cetes
    Descripcion: recibe un monto inicial, el plazo en meses o días y devuelve el monto final disponible al concluir el plazo seleccionado.
    Uso: cetes 2000 (Dias 28) = 2009.4733
        VF= valor final
        VI= valor inicial
        i= tasa de rendimiento anual bruta
        t= tiempo (días transcurridos)
        360= base anual comercial
-}
--data para crear tipos de datos
data Plazo = Dias Int | Meses Int
cetes :: Float -> Plazo -> Float
cetes montoi (Meses 1) = montoi * (1 + 0.0609 * (28 / 360))
cetes montoi (Dias 28) = cetes montoi (Meses 1)
cetes montoi (Meses 6) = montoi * (1 + 0.0691 * (182 / 360))
cetes montoi (Dias 182) = cetes montoi (Meses 6)
cetes montoi (Meses 12) = montoi * (1 + 0.0744 * (360 / 360))
cetes montoi (Dias 364) = cetes montoi (Meses 12)

{-3.Funcion: mensajeCetes
    Descripcion: recibe un monto inicial de inversión, un plazo explesado en días o meses y devuelve un mensake que indica el plazo de la inversión, el rendimiento bruto otenido y el monto acumulado al finalizar el plazo.
    Uso: mensajeCetes 2000 (Dias 28) = "Despues de 28 dias, obtuve 9.473267 de rendimiento bruto sin asumir ningun riesgo creditivio. El monto total de mi inversion es de 2009.4733"
-}
mensajeCetes :: Float -> Plazo -> String
mensajeCetes montoi (Meses 1) = "Despues de 28 dias, obtuve " ++ show(cetes montoi (Meses 1) - montoi) ++ " de rendimiento bruto sin asumir ningun riesgo creditivio. El monto total de mi inversion es de " ++ show (cetes montoi (Meses 1))
mensajeCetes montoi (Dias 28) = mensajeCetes montoi (Meses 1)
mensajeCetes montoi (Meses 6) = "Despues de 182 dias, obtuve " ++ show(cetes montoi (Meses 6) - montoi) ++ " de rendimiento bruto sin asumir ningun riesgo creditivio. El monto total de mi inversion es de " ++ show (cetes montoi (Meses 6))
mensajeCetes montoi (Dias 182) = mensajeCetes montoi (Meses 6)
mensajeCetes montoi (Meses 12) = "Despues de 364 dias, obtuve " ++ show(cetes montoi (Meses 12) - montoi) ++ " de rendimiento bruto sin asumir ningun riesgo creditivio. El monto total de mi inversion es de " ++ show (cetes montoi (Meses 12))
mensajeCetes montoi (Dias 364) = mensajeCetes montoi (Meses 12)

{-4.Funcion: negativos
    Descripcion: cuenta los números negativos de una lista.
    Uso: negativos [-1, 2, 4, 6, -4] = 2
-}
negativos :: [Int] -> Int
negativos xs = length [x | x <- xs, x < 0]
--Son como los conjuntos por comprensión, x tal que x que proviene de xs (lista) es menor que 0
--length cuenta elementos

{-5.Funcion:soloPares
    Descripcion: recibe una lista de tipo entero y devuelve una lista únicamente con los números que sean pares de la lista original (con la ayuda del módulo EsParBin).
    Uso:
-}

soloPares :: [Int] -> [Int]
soloPares xs  = [x | x <- xs, esParBin x]

{-6.Funcion:primos
    Descripcion: devuelve los números primos de una lista dada.
    Uso: primos [1..20] = [2, 3, 5, 7, 11, 13, 17, 19]
-}
primos :: [Int] -> [Int]
primos xs = [x | x <- xs, esPrimo x]


{-7.Funcion:coprimos
    Descripcion:recibe un entero x y devuelve una lista de los coprimos de x.
    Uso: coprimos 37 =[2,3,4,6,9,12,18,36]
-}
coprimos :: Int -> [Int]
coprimos x = [y | y <- [1..x], (x `mod` y) == 1]
