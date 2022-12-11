# SwiftKCpractica
PRÁCTICA SWIFT FUNDAMENTOS

**Práctica con 10 ejercicios**

La base de la práctica es recrear el mundial. Principalmente usando class, pero también es posible hacerlo mediante structs, sobre todo para 
crear objetos como los grupos y no tener que instanciar una a una cada grupo y sus puntuación.

Con las clases Match y GroupWC es posible recrear todo el mundial. Desde la clasificatoria(aunque he indicado con número mágico que solo haya 8 
grupos s epuede modificar para lo tengamos que declarar al instanciar para ponerlo a gusto), fase de grupos y semifinales. 

De la fase de grupos obtenemos una lista con la cantidad que queramos que se clasifiquen.Está diseñado para dos equipos ya que no he ampliado 
forma de controlar si la cantidad que se clasifican sean multiplos de (salvo final obvio).

Al final obtenemos una lista de listas, donde almacenamos los clasificados de cada grupo.

Queda por implementar octavos, cuartos, semis y final. Los partidos 1 vs 1 se llaman directamente con la clase de Match y método playMatch lo 
jugará devolviendo  tupla de ganador, perdedor , empate(true o  false). En caso de empates(bien partidos sueltos y puntuacion) se clasificará el 
que se llame como local(razón: no he implementado un método contador de goles; en class Point un método y en NationalTeam para que cada 
seleccion tenga su contador). Entonces con un 'simple' while hasta que acabe el mundial y loos For  recorreremos la lista y los añadiremos a 
listas de cada fase(listas independientes para cada fase).

Queda repasar para mejorar: Clousures, switch y Enum---> Tests
