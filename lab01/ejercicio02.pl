#Codigo:
perro(firulais).
perro(bruno).
perro(max).
gato(misu).
gato(luna).
gato(chanel).
gato(orion).
ave(piolin).

dueno(ana, firulais).
dueno(ana, misu).
dueno(luis, luna).
dueno(luis, orion).
dueno(luis, firulais).
dueno(maria, piolin).
dueno(julia, chanel).
dueno(pedro, bruno).

tiene_perro(Persona) :- dueno(Persona, Mascota), perro(Mascota).
tiene_gato(Persona) :- dueno(Persona, Mascota), gato(Mascota).
multiples_mascotas(Persona) :- dueno(Persona, Mascota1), 
    dueno(Persona, Mascota2), 
    Mascota1 \= Mascota2.

amante_animales(Persona) :- tiene_perro(Persona), tiene_gato(Persona).

mascota_compartida(Persona1, Persona2, Mascota) :- dueno(Persona1, Mascota), 
    dueno(Persona2, Mascota), 
    Persona1 \= Persona2.

tipo_mascota(Persona, perro) :- dueno(Persona, Mascota), perro(Mascota).
tipo_mascota(Persona, gato)  :- dueno(Persona, Mascota), gato(Mascota).
tipo_mascota(Persona, ave)   :- dueno(Persona, Mascota), ave(Mascota).


#Ejercicios:
tiene_perro(Persona)
Persona = ana
Persona = luis
Persona = pedro
distinct(tiene_gato(Persona))
Persona = ana
Persona = luis
Persona = julia
distinct(multiples_mascotas(Persona))
Persona = ana
Persona = luis
distinct(amante_animales(Persona))
Persona = ana
Persona = luis
mascota_compartida(Persona1, Persona2, Mascota)
Mascota = firulais,
Persona1 = ana,
Persona2 = luis
Mascota = firulais,
Persona1 = luis,
Persona2 = ana
tipo_mascota(Persona, perro)
Persona = ana
Persona = luis
Persona = pedro
distinct(tipo_mascota(Persona, gato))
Persona = ana
Persona = luis
Persona = julia
tipo_mascota(Persona, ave)
Persona = maria
