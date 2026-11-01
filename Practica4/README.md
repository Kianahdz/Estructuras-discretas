# Práctica 4
### Objetivo de la práctica

Comprender y aplicar la recursión sobre funciones en Haskell y repasar la creación de diferentes tipos de datos.

### Tiempo requerido
En total trabajé alrededor de 5 horas para terminar la práctica, lo que más tiempo consumió fue probar las funciones.
### Ejercicio favorito
Los ejercicios que más me gustaron fueron los de las matrioskas, no fueron tan complicados y fueron entretenidos.
### Actividad 8.
- ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Cómo se manejan los casos en cada implementación?
  - En enteros.hs se declaran sumas, restas y mayorEnt, además no incluye la multiplicación. En la práctica utilizo la misma base para el tipo de dato pero procuré mantener las funciones que consideré auxiliares en el módulo, no en un mismo archivo.
- ¿Por qué se tiene implementada la operación mayorEnt en el archivo enteros.hs?
  - Se utiliza en restaEnt, por ejemplo si al restar un número m a un número n, n es mayor entonces la resta se hace normal, pero si m es mayor que n entonces le restamos n al valor absoluto de m y le agregamos el Neg (o signo -).
- Si pudieras quedarte con una sola implementación. ¿Cuál sería? Justifica tu respuesta.
  - Supongo que me quedaría con sumaEnt, en el caso de al multiplicación no necesité comparar los números ya que incluí los distintos casos que podráin haber, pero al fin y al cabo la resta y la suma son casi la misma operación, únicamente cambia el signo. Y expresar una resta como suma es maś conveniente que expresarlo al revés, aunque habría que modificarla un poco..
### Chivita recursiva

En "Sal de ahí Chivita Chivita" podemos notar la recursión en la cadena que tenemos para sacar a la chiva, primero se llama al burro pero no quiere sacar a la chiva y la chiva no quiere salir, pasa lo mismo cuando llaman al ratón, al gato, al perro, al pato y termina cuando finalmente llaman a Plim Plim, quien puede sacar a todos los animales con ayuda de un trampolín, podríamos tomar al trampolín como una función auxiliar que ayuda a la función de la chivita, sin ella no se podría sacar a la chivita de ahí, el caso base se alcanza cuando ya no hay chiva o no hay nada más que sacar.