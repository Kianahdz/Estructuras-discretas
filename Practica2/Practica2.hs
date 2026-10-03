{-1.
-}
suma :: Int -> Int -> Int
suma a b = a + b
--Originalmente se llamaba archivo2, por eso en la captura aparece con dicho nombre
{-2.
    Funcion: reconversion
    Descricpion: recibe un parámetro numérico y realiza la conversión, eliminando tres ceros al dividir entre 1000
    Uso: reconversion 1000 -> 1.0
-}
reconversion :: Double -> Double
reconversion a = (a / 1000)

{-3.
    Funcion: cashback
    Descricpion: calcula el cashback obtenido de una tarjeta de crédito con el 10% de puntos
    Uso: cashback 2545 -> 254.5
-}
cashback :: Double -> Double
cashback a = a * 0.10

{-4.
    Funcion: cashbackMonto
    Descripcion: representar los puntos acumulados cuando cada uno tiene un valor de $0.10
    Uso: cashbackMonto  264 0.10 -> 26.4
-}
cashbackMonto :: Double -> Double -> Double
cashbackMonto a b = a * b

{-5.
    Funcion: minutosHoras
    Descripcion: recibe los minutos y devuelve su conversión en horas
    Uso: minutosHoras 112 -> 1 hora y 52 minutos
-}
minutosHoras :: Int -> String
minutosHoras a =
    show (a `div` 60) ++ " hora y " ++ show (a `mod` 60) ++ " minutos"

{-6.
    Funcion: esEstafa
    Descripcion: determina si el cliente no delvolvió el cambio o estafó a la tienda
    Uso: esEstafa 100 200 100 0 -> True
-}
esEstafa :: Int -> Int -> Int -> Int-> Bool
esEstafa costo altaDenominacion pagoExacto cambio = cambio < (altaDenominacion - costo)

{-7.
    Funcion: esDescendente
    Descricpion: recibe 4 parámetros numéricos y devuele true si los números fueron ingresados de manera descendiente, false si no
    Uso: esDescendente 10 9 8 7 -> True
-}
esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y z w 
    = x > y && y > z && z > w
--Iba a utilizar if else pero no fue necesario

{-8.
    Funcion: imc
    Descripcion: recibe peso en kg y estatura en cm y devuelve imc de acuerdo a la interpertación de la OMS
    Uso: imc 53.5 161 -> normal
-}
imc :: Double -> Double -> String
imc peso altura =
    if altura > 2.5
    then if peso / ((altura/ 100) * (altura / 100)) < 18.5
        then "Bajo"
        else if peso / ((altura/ 100) * (altura / 100)) < 24.9
            then "Normal"
            else if peso / ((altura/ 100) * (altura / 100)) < 29.9
                then "Sobrepeso"
                    else "Obesidad"
    else if peso / (altura * altura ) < 18.5
        then "Bajo"
        else if peso / (altura * altura ) < 24.9
            then "Normal"
            else if peso / (altura * altura ) < 29.9
                then "Sobrepeso"
                    else "Obesidad"
-- Utilizando Double por los decimales
--Primero en cm y luego en m
{-9.
    Funcion: hipotenusa
    Descripcion: recibe dos parámetros de tipo flotante b y h donde b es la base y h es la altura, devuelve otro valor tipo flotante que representa el valor de la hipotenusa
    Uso: hipotenusa 9.0 12.0 -> 15
-}
hipotenusa :: Float -> Float -> Float 
hipotenusa a b = sqrt ((a * a) + (b * b))

{-10.
    Funcion: pendiente
    Descripcion: recibe dos parámetros que serán tuplas de dos elementos tipo Float, devuelve otro valor tipo Float que representa la pendiente de la recta que pasa por dos puntos
    Uso: pendiente (3.0, 2.0) (7.0, 8.0) -> 1.5
-}
pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (a, b) (c, d) = (d - b) / (c - a)

{-11.
    Funcion: distanciaPuntos
    Descripcion:recibe dos paraḿetros que serán tuplas de dos elementos de tipo Float, devuelve un valor de tipo Float que representa la distancia entre los puntos (x1, y1) y (x2, y2)
    Uso: distanciaPuntos (2.0 , 1.0) (5.0 , 5.0) -> 5.0
-}
distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (a, b) (c, d) = sqrt ((c - a)^2 + (d - b)^2)