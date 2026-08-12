% Hechos: estudiante y su nota final en un curso
nota(ana, 4.5).
nota(luis, 2.8).
nota(maria, 3.7).
nota(juan, 5.0).
nota(pedro, 2.3).

reprueba(Estudiante) :- nota(Estudiante, Nota), Nota < 3.0.

aprueba(Estudiante) :- nota(Estudiante, Nota), Nota >= 3.0.

rango(Estudiante, Min, Max) :- nota(Estudiante, Nota), Nota >= Min, Nota =< Max.

clasificacion(Estudiante, reprobado) :- nota(Estudiante, Nota), Nota >= 0.0, Nota =< 2.9.

clasificacion(Estudiante, aprobado) :- nota(Estudiante, Nota), Nota >= 3.0, Nota =< 3.9.

clasificacion(Estudiante, notable) :- nota(Estudiante, Nota), Nota >= 4.0, Nota =< 4.4.

clasificacion(Estudiante, excelente) :- nota(Estudiante, Nota), Nota >= 4.5, Nota =< 5.0.

distancia((X1, Y1), (X2, Y2), D) :- D is sqrt((X2 - X1)**2 + (Y2 - Y1)**2).

distancia_total([], 0).
distancia_total([_], 0).

distancia_total([P1, P2 | Resto], Total) :- distancia(P1, P2, D),                            
    distancia_total([P2 | Resto], DistanciaRestante),  
    Total is D + DistanciaRestante.                 
