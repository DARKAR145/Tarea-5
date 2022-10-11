CREATE DATABASE Torneo_Videojuego;
use torneo_videojuego;

CREATE TABLE Videojuego
(
IdJuego int primary key not null,
NombreJuego varchar (20) not null,
Desarrollador Varchar (30) not null,
Publicador varchar (30)
);

Create table Torneo
(
IDToreno int primary key not null,
IdJuegos int not null,
InicioTorneo varchar (50) not null,
FinTorneo varchar (50) not null,
direccion varchar (50),
Estado varchar (50),
pais varchar (50),
constraint fk_Videojuego foreign key (IdJuegos) References Videojuego (IdJuego)
);

Create table Partido
(
ID int primary key not null,
Ronda varchar (50) not null,
Fecha_Hora varchar (50) not null,
EquipoDerecho varchar (50) not null,
EquipoIzquierdo varchar (50) not null,
Fallas varchar (50) not null,
Resultado Varchar (50) not null
);
alter table Partido add column Ganador varchar (50) not null;
alter table Partido add column Ronda varchar (50) not null;
delete from Partido;

Create table Equipo
(
ID int primary key not null,
Numero_integrantes int not null,
Nombre_Jugador1 varchar (50) not null,
Nombre_Jugador2 varchar (50) not null,
Nombre_Jugador3 varchar (50) not null,
Nombre_Jugador4 varchar (50) not null,
Logo varchar(50),
Nombre varchar (50) not null,
color varchar (50)
);

Create Table Jugador
(
ID int primary key not null,
Nombre varchar(50) not null,
Edad int not null,
Nacionalidad varchar (50) not null,
ID_Equipo int not null,
constraint fk_Equipo foreign key (ID_Equipo) references Equipo (ID)
);

Create Table Scores
(
ID_Jugador int not null,
ID_Partido int not null,
Total_Kills int not null,
Total_Deaths int not null,
Ratio int not null,
Assists int not null,
Highest_Streak int not null,
Daño int not null,
Primera_Sangre int not null,
constraint fk_Jugador foreign key (ID_Jugador) references Jugador (ID),
constraint fk_Partido foreign key (ID_Partido) references Partido (ID)
);
alter table scores add column NonTraded_Kills int not null;

Create Table Scores2
(
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
constraint fk_Jugadors foreign key (ID_JugadorS2) references Jugador (ID),
constraint fk_Partidos foreign key (ID_PartidoS2) references Partido (ID)
);

Create Table Scores3
(
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
constraint fk_Jugadorss foreign key (ID_JugadorS3) references Jugador (ID),
constraint fk_Partidoss foreign key (ID_PartidoS3) references Partido (ID)
);
alter table Scores3 add column ID_Torneo int not null;
alter table Scores3 add constraint fk_Torneos foreign key (ID_Torneo) references Torneo (IDToreno);
alter table Scores3 add column ID_Videojuego int not null;
alter table Scores3 add constraint fk_VideojuegoS foreign key (ID_Videojuego) references Videojuego (IdJuego);



