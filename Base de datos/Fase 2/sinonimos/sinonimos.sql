/*-----creacion y borrado de sinonimos------*/

drop PUBLIC synonym JUEGOS01;
drop PUBLIC synonym COMPETICIONES01;
drop PUBLIC synonym JORNADAS01;
drop PUBLIC synonym  PATROCINADORES01;
drop PUBLIC synonym EQUIPOS01;
drop PUBLIC synonym CLASIFICACIONES01;
drop PUBLIC synonym PARTIDAS01;
drop PUBLIC synonym USUARIOS01;
drop PUBLIC synonym INTEGRANTES01;
drop PUBLIC synonym ENTRENADORES01;
drop PUBLIC synonym AYUDANTE01;


CREATE PUBLIC SYNONYM JUEGOS01 FOR EQUIPO01.JUEGO;
CREATE PUBLIC SYNONYM COMPETICIONES01 FOR EQDAW01.COMPETICION;
CREATE PUBLIC SYNONYM JORNADAS01 FOR EQDAW01.JORNADA;
CREATE PUBLIC SYNONYM PATROCINADORES01 FOR EQDAW01.PATROCINADOR;
CREATE PUBLIC SYNONYM EQUIPOS01 FOR EQDAW01.EQUIPO;
CREATE PUBLIC SYNONYM CLASIFICACIONES01 FOR EQDAW01.CLASIFICACION;
CREATE PUBLIC SYNONYM PARTIDAS01 FOR EQDAW01.ENFRENTAMIENTO;
CREATE PUBLIC SYNONYM USUARIOS01 FOR EQDAW01.USUARIO;
CREATE PUBLIC SYNONYM INTEGRANTES01 FOR EQDAW01.JUGADOR;
CREATE PUBLIC SYNONYM ENTRENADORES01 FOR EQDAW01.ENTRENADOR;
CREATE PUBLIC SYNONYM AYUDANTE01 FOR EQDAW01.ASISTENTE;
