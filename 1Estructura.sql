create schema club_lanus;
use club_lanus;
 
-- Creamos la tabla deportes para identificar los deportes que hay en el club
CREATE TABLE DEPORTES(
ID_DEPORTES INT NOT NULL PRIMARY KEY,
DESCRIPCION VARCHAR (40)
);

-- Creamos la tabla ágos para identificar los diferentes tipos de pagos que se van a ralizar
CREATE TABLE PAGOS(
ID_PAGOS INT NOT NULL PRIMARY KEY,
DESCRIPCION VARCHAR (40),
MONTO INT
);

-- Creamos la tabla ayudantes para identificar a los ayudantes de cada entrenador y deporte
CREATE TABLE AYUDANTE (
ID_AYUDANTE INT NOT NULL PRIMARY KEY,
NOMBRE VARCHAR (40),
APELLIDO VARCHAR (40),
DNI VARCHAR (40),
TELEFONO VARCHAR (40)
);


-- Creamos la tabla coordinadores para identificarlos y poder determinar de que deporte se hacen cargo
CREATE TABLE COORDINADORES (
ID_COORDINADOR INT NOT NULL PRIMARY KEY,
NOMBRE VARCHAR (40),
APELLIDO VARCHAR (40),
DNI VARCHAR (40),
TELEFONO VARCHAR (40)
);

-- Creamos la tabla jugadores para identificarlos y poder determinar de que deporte realizan y en que categoria estan
CREATE TABLE JUGADORES(
ID_JUGADOR INT NOT NULL PRIMARY KEY,
TIPO_CATEGORIA CHAR (1),
ID_DEPORTES INT,
NOMBRE VARCHAR (40),
APELLIDO VARCHAR (40),
TELEFONO VARCHAR (40),
foreign key (ID_DEPORTES) REFERENCES DEPORTES (ID_DEPORTES)
);

-- Creamos la tabla subcomision para identificar a las personas que estan en este cargo y poder determinar de que coordinador se hacen cargo 
CREATE TABLE SUBCOMISION (
ID_SUBCOMISION INT NOT NULL PRIMARY KEY,
ID_COORDINADOR INT,
NOMBRE VARCHAR (40),
APELLIDO VARCHAR (40),
DNI VARCHAR (40),
TELEFONO VARCHAR (40),
foreign key (ID_COORDINADOR) REFERENCES COORDINADORES (ID_COORDINADOR)
);

-- PRINCIPAL
-- Creamos la tabla socio para identificar a los socios que hacen deporte y a los que no y poder determinar que pagos realizan
CREATE TABLE SOCIO (
ID_SOCIO INT NOT NULL PRIMARY KEY,
ID_DEPORTES INT,
ID_PAGOS INT,
NOMBRE VARCHAR (40),
APELLIDO VARCHAR (40),
DNI VARCHAR (40),
TELEFONO VARCHAR (40),
EMAIL VARCHAR (40),
DIRECCION VARCHAR (50),
foreign key (ID_DEPORTES) REFERENCES DEPORTES (ID_DEPORTES),
foreign key (ID_PAGOS) REFERENCES PAGOS (ID_PAGOS)
);



-- PRINCIPAL
-- Creamos la tabla entrenador para poder identificarlos y poder determinar de que deporte se hacen cargo, a que coordinador responden y que jugadores tiene a cargo.
CREATE TABLE ENTRENADOR(
ID_ENTRENADOR INT NOT NULL PRIMARY KEY,
ID_DEPORTES INT,
ID_JUGADOR INT,
ID_AYUDANTE INT,
ID_COORDINADOR INT,
NOMBRE VARCHAR (40),
APELLIDO VARCHAR (40),
DNI VARCHAR (40),
TELEFONO VARCHAR (40),
EMAIL VARCHAR (50),
DIRECCION VARCHAR (50),
foreign key (ID_DEPORTES) REFERENCES DEPORTES (ID_DEPORTES),
foreign key (ID_JUGADOR) REFERENCES JUGADORES (ID_JUGADOR),
foreign key (ID_AYUDANTE) REFERENCES AYUDANTE(ID_AYUDANTE),
foreign key (ID_COORDINADOR) REFERENCES COORDINADORES (ID_COORDINADOR)
);