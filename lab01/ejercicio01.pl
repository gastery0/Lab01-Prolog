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



vuelo(bogota, medellin)
true
vuelo(bogota, DESTINO)
DESTINO = medellin
DESTINO = cartagena
DESTINO = pasto
vuelo(ORIGEN, medellin)
ORIGEN = bogota
vuelo(ORIGEN, bogota)
ORIGEN = cali
ORIGEN = pasto
vuelo(ORIGEN, cali)
false
