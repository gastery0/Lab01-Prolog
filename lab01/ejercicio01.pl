% Hechos: relación entre ciudades
ciudad(bogota).
ciudad(medellin).
ciudad(cali).
ciudad(cartagena).
ciudad(manizales).
ciudad(barranquilla).
ciudad(pasto).
ciudad(monteria).

% Hechos: vuelos directos
vuelo(bogota, medellin).
vuelo(medellin, cartagena).
vuelo(cali, bogota).
vuelo(bogota, cartagena).
vuelo(manizales, cartagena).
vuelo(medellin, barranquilla).
vuelo(pasto, bogota).
vuelo(bogota, pasto).

% Hechos: vuelos indirectos
escala(Origen, Destino) :- vuelo(Origen, Escala), vuelo(Escala, Destino).

% Hechos: vuelos generales
viaje(Origen, Destino) :- vuelo(Origen, Destino).
viaje(Origen, Destino) :- escala(Origen, Destino).

% Hechos: destinos posibles de vuelos directos
destinos(Ciudad, Destino) :- vuelo(Ciudad, Destino).


1.Hechos y consultas simples
vuelo(bogota, medellin)
true
vuelo(bogota, Destino)
Destino = medellin
Destino = cartagena
Destino = pasto
vuelo(Origen, medellin)
Origen= bogota
vuelo(Origen, bogota)
Origen = cali
Origen = pasto
vuelo(Origen, cali)
false

2. Reglas basicas
escala(bogota, barranquilla)
true
escala(cali, Destino)
Destino = medellin
Destino = cartagena
Destino = pasto
viaje(bogota, pasto)
1true
destinos(manizales, Destino)
false
destinos(manizales, Destino)
Destino = cartagena
