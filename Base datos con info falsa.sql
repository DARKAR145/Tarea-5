CREATE DATABASE Torneo_VideojuegoF;
use torneo_videojuegoF;

CREATE TABLE VideojuegoF
(
IdJuego int primary key not null,
NombreJuego varchar (20) not null,
Desarrollador Varchar (30) not null,
Publicador varchar (30)
);

Create table TorneoF
(
IDTorneo int primary key not null,
IdJuegos int not null,
InicioTorneo varchar (50) not null,
FinTorneo varchar (50) not null,
direccion varchar (50),
Estado varchar (50),
pais varchar (50),
constraint fk_Videojuego foreign key (IdJuegos) References VideojuegoF (IdJuego)
);

Create table PartidoF
(
ID int primary key not null,
ID_Torneo int not null,
ID_Juegos int not null,
Ronda varchar (50) not null,
Fecha_Hora varchar (50) not null,
EquipoDerecho varchar (50) not null,
EquipoIzquierdo varchar (50) not null,
Fallas varchar (50) not null,
Resultado Varchar (50) not null,
constraint fk_Videojuegos foreign key (ID_Juegos) References VideojuegoF (IdJuego),
constraint fk_Torneo foreign key (ID_Torneo) References TorneoF (IDTorneo)
);


alter table PartidoF add column Ganador varchar (50) not null;
alter table Partido add column Ronda varchar (50) not null;
delete from Partido;

Create table EquipoF
(
ID int primary key not null,
ID_Torneo int not null,
ID_Juegos int not null,
Numero_integrantes int not null,
Nombre_Jugador1 varchar (50) not null,
Nombre_Jugador2 varchar (50) not null,
Nombre_Jugador3 varchar (50) not null,
Nombre_Jugador4 varchar (50) not null,
Logo varchar(50),
Nombre varchar (50) not null,
color varchar (50),
constraint fk_Videojuegoss foreign key (ID_Juegos) References VideojuegoF (IdJuego),
constraint fk_Torneos foreign key (ID_Torneo) References TorneoF (IDTorneo)
);

Create Table JugadorF
(
ID int primary key not null,
ID_Torneo int not null,
ID_Juegos int not null,
Nombre varchar(50) not null,
Edad int not null,
Nacionalidad varchar (50) not null,
ID_Equipo int not null,
constraint fk_Equipo foreign key (ID_Equipo) references EquipoF (ID),
constraint fk_Videojuegosss foreign key (ID_Juegos) References VideojuegoF (IdJuego),
constraint fk_Torneoss foreign key (ID_Torneo) References TorneoF (IDTorneo)
);

Create Table ScoresF
(
ID_Torneo int not null,
ID_Juegos int not null,
ID_Jugador int not null,
ID_Partido int not null,
Total_Kills int not null,
Total_Deaths int not null,
Ratio int not null,
Assists int not null,
NonTraded_Kills int not null,
Highest_Streak int not null,
Daño int not null,
Primera_Sangre int not null,
constraint fk_Jugador foreign key (ID_Jugador) references JugadorF (ID),
constraint fk_Partido foreign key (ID_Partido) references PartidoF (ID),
constraint fk_Videojuegossss foreign key (ID_Juegos) References VideojuegoF (IdJuego),
constraint fk_Torneosss foreign key (ID_Torneo) References TorneoF (IDTorneo)
);


Create Table Scores2F
(
ID_Torneo int not null,
ID_Juegos int not null,
ID_JugadorS2 int not null,
ID_PartidoS2 int not null,
Total_Kills int not null,
Total_Deaths int not null,
Ratio int not null,
Assists int not null,
NonTraded_kills int not null,
Highest_Streak int not null,
Daño int not null,
Primera_Sangre int not null,
constraint fk_Jugadors foreign key (ID_JugadorS2) references JugadorF (ID),
constraint fk_Partidos foreign key (ID_PartidoS2) references PartidoF (ID),
constraint fk_Videojuego1 foreign key (ID_Juegos) References VideojuegoF (IdJuego),
constraint fk_Torneo1 foreign key (ID_Torneo) References TorneoF (IDTorneo)
);

Create Table Scores3F
(
ID_Torneo int not null,
ID_Juegos int not null,
ID_JugadorS3 int not null,
ID_PartidoS3 int not null,
Total_Kills int not null,
Total_Deaths int not null,
Ratio int not null,
Assists int not null,
NonTraded_kills int not null,
Highest_Streak int not null,
Daño int not null,
Primera_Sangre int not null,
constraint fk_Jugadorss foreign key (ID_JugadorS3) references JugadorF (ID),
constraint fk_Partidoss foreign key (ID_PartidoS3) references PartidoF (ID),
constraint fk_Videojuego2 foreign key (ID_Juegos) References VideojuegoF (IdJuego),
constraint fk_Torneo2 foreign key (ID_Torneo) References TorneoF (IDTorneo)
);

alter table Scores3 add column ID_Torneo int not null;
alter table Scores3 add constraint fk_Torneos foreign key (ID_Torneo) references Torneo (IDToreno);
alter table Scores3 add column ID_Videojuego int not null;
alter table Scores3 add constraint fk_VideojuegoS foreign key (ID_Videojuego) references Videojuego (IdJuego);