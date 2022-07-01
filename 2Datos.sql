-- INSERCION DE DATOS PARA LAS TABLAS REALIZADAS ARRIBA.


-- Estos datos corresponden a la tabla DEPORTES
INSERT INTO DEPORTES (ID_DEPORTES, DESCRIPCION) values (1, 'futbol'),
(2,'hockey'),
(3, 'voley'),
(4, 'n/d');

-- Estos datos corresponden a la tabla PAGOS
INSERT INTO PAGOS (ID_PAGOS, DESCRIPCION, MONTO) VALUES (1, 'socios', 300),
(2, 'actividad', 200), (3, 'socio y act', 500);

-- Estos datos corresponden a la tabla AYUDANTE
INSERT INTO AYUDANTE (ID_AYUDANTE, NOMBRE, APELLIDO, DNI, TELEFONO) VALUES
(1,'SABINA', 'CHUCO', 7654399, 1154398744),
(2,'CAMAIL', 'VENNI', 34876509, 1154905498),
(3,'CHESTER', 'KHO', 12432760, 1165409188),
(4,'ROMA', 'REFU', 35461229, 1167519972),
(5,'ROSARIO', 'DENTRAL', 45319058, 1178034522),
(6,'MARAIA', 'DMINGO', 24531856, 1112394533),
(7,'JUAN', 'CURCCI', 34217654, 1109765944),
(8,'PEDRO', 'GRASSO', 76309128, 67520988),
(9,'LUIS', 'FONTAN', 06753190, 1178512344),
(10,'ESTEBAN', 'PEPI', 22876391, 1187309980),
(11,'COCO', 'REFFU', 32754017, 1165438977),
(12,'MINERVA', 'SAZI', 45987283, 1178645300);

-- Estos datos corresponden a la tabla COORDINADORES
INSERT INTO COORDINADORES (ID_COORDINADOR, NOMBRE, APELLIDO, DNI, TELEFONO) VALUES
(1, 'SANTIAGO', 'DIAZ', 23876453, 1166953927),
(2, 'MATIAS', 'POTENZA', 33876544, 1154387654),
(3, 'RODRIGO', 'SANTANDREA', 25677534, 1197865432);

-- Estos datos corresponden a la tabla JUGADORES
INSERT INTO JUGADORES (ID_JUGADOR, TIPO_CATEGORIA, ID_DEPORTES, NOMBRE, APELLIDO, TELEFONO ) VALUES
(1, 'A', 1,  'MICAELA', 'FLORES', 1151392388),
(2, 'B', 2, 'SABRINA', 'ROSAS', 1151192388),
(3, 'A', 3, 'CAMILA', 'LOPES', 1151392388),
(4, 'C', 1, 'MICAELA', 'LOPEZ', 1151392388),
(5, 'A', 1, 'SEBASTIAN', 'BENITEZ', 1151492388),
(6, 'A', 1, 'MARCELO', 'GALLARDO', 1151592388),
(7, 'A', 2, 'MATIAS', 'EZEQUIEL', 1151692388),
(8, 'C', 3, 'DANIEL', 'MARTINEZ', 1151792388),
(9, 'B', 3, 'ANA', 'ROMERO', 1151892388),
(10, 'B',2, 'LUANA', 'RAMIREZ', 1151992388 ),
(11, 'B',2, 'ANTONELLA', 'CIVILLE', 1151392188 ),
(12, 'A', 1, 'AGOSTINA', 'GIMENEZ', 1151392288),
(13, 'C', 1, 'SOFIA', 'GALEANO', 1151392388),
(14, 'C', 1, 'LUCIANO', 'LARA', 1151392488),
(51, 'A', 2, 'GONZALO', 'FLOTAG', 1151392588),
(15, 'B', 3, 'MARIANO', 'ESTEVEZ', 1151392688),
(16, 'B', 2, 'MARTIN', 'FICHA', 1151392788),
(17, 'A', 1, 'SANTIAGO', 'ZAPICO', 1151392888),
(18, 'C', 3, 'MANUEL', 'CARMI', 1151392988),
(19, 'C', 3, 'JUAN', 'OCHOA', 1151392381),
(20, 'C', 1, 'JULIETA', 'MELGA', 1151392382),
(21, 'A', 2, 'ROXANA', 'MENDEZ', 1151392383),
(22, 'B', 1, 'ROCIO', 'BALLO', 1151392384),
(23, 'A', 3, 'ALDANA', 'MONTE', 1151392385),
(24, 'C', 2, 'TOBIAS', 'ENZ', 1151392386),
(25, 'A', 1, 'RODRIGO', 'VALLE', 1151392387),
(26, 'C', 2, 'JUAN SEBASTIAN', 'HUK', 1151392308),
(27, 'B', 3, 'BENJAMIN', 'GROW', 1151392389),
(28, 'A', 3, 'THOMAS', 'FRANCO', 1111392388),
(29, 'A', 3, 'MATILDE', 'RODRIGUEZ', 1121392388),
(30, 'A', 1, 'LORENZO', 'DI ESTEFANO', 1131392388),
(31, 'A', 2, 'BAUTISTA', 'KU', 1141392388),
(32, 'B', 2, 'FEDERICO', 'SPINETA', 1101392388),
(33, 'B', 2, 'BETO', 'DEMBER', 1161392388),
(34, 'B', 1, 'BAUTISTA', 'CRULER', 1171392388),
(35, 'A', 3, 'MICAELA', 'FRACO', 1181392388),
(36, 'C', 1, 'PILAR', 'MONTES', 1191392388),
(37, 'B', 2, 'MILAGROS', 'ROGGER', 1151392310),
(38, 'A', 3, 'NORA', 'KLOSS', 1151392309),
(39, 'B', 1, 'DANIELA', 'CAUNSE', 1151392308),
(40, 'C', 2, 'JULIAN', 'ALVER', 1151392307),
(41, 'C', 2, 'GERMAN', 'BSKA', 1151392306),
(42, 'A', 3, 'AUGUSTO', 'JYM', 1151392305),
(43, 'B', 1, 'SALVADOR', 'JUMMA', 1151392304),
(44, 'B', 1, 'MORENA', 'KREK', 1151392303),
(45, 'A', 2, 'FLORENCIA', 'RUSS', 1151392302),
(46, 'A', 3, 'FERMIN', 'TRIGH', 1151392301),
(47, 'B', 1, 'PILAR', 'ZARA', 1151392300),
(48, 'B', 3, 'MATIAS', 'APGO', 1151392340),
(49, 'B', 2, 'DELFINA', 'CABBER', 1151392339),
(50, 'A', 1, 'MARTIN', 'FAZTO', 1151392338)
;

-- Estos datos corresponden a la tabla SUBCOMISION
INSERT INTO SUBCOMISION (ID_SUBCOMISION, ID_COORDINADOR, NOMBRE, APELLIDO, DNI, TELEFONO) VALUES
(1, 1,'MAURO', 'CASO', 23876453, 1134874509),
(2, 2,'MARISOL', 'GALETI', 56879635, 1198706577),
(3, 1,'DAVID', 'FLORES', 23876493, 1199874500),
(4, 3,'EZEQUIEL', 'MARTINEZ', 28761490, 1154309877),
(5, 2,'MANUELA', 'SOLIS', 67453926, 1143553422),
(6, 1,'TORINO', 'ZEFFO', 27653098, 1122341566),
(7, 3,'CAMILA', 'ZHOR', 12786350, 1189760078),
(8, 1,'FAUSTINO', 'KU', 23654897, 1154675422),
(9, 1,'ANA', 'CLAVERO', 08236490, 1165009871),
(10, 2,'DANIEL', 'FLOO', 23760983, 1109871841),
(11, 3,'JUANA', 'REPET', 34782908, 1167319205),
(12, 1,'MIRTHA', 'LEGUI', 3487029, 1187430028);

-- Estos datos corresponden a la tabla SOCIO
INSERT INTO SOCIO (ID_SOCIO, ID_DEPORTES, ID_PAGOS, NOMBRE, APELLIDO, DNI, TELEFONO, EMAIL, DIRECCION) VALUES
(2, 4, 1, 'camila', 'flores', '39874123', '1151392381', 'micaela@hotmail.com', 'libertador 2306'),
(3, 2, 2, 'juan', 'lopez', '39874456', '1151392382', 'juan@hotmail.com', 'libertador 2306'),
(4, 3, 3, 'sofia', 'perez', '39874789', '1151392383', 'sofia@hotmail.com', 'carlos cruz 2306'),
(5, 4, 1, 'santiago', 'siaz', '39874012', '1151392384', 'santiagp@hotmail.com', 'ostede 2306'),
(6, 4, 1, 'tobias', 'zapico', '26874123', '1152392301', 'zapico.t@hotmail.com', 'liceo 324'),
(7, 2, 2, 'juliana', 'martinez', '25874456', '1153392302', 'martinez_juliana@hotmail.com', 'margarita 453'),
(8, 3, 3, 'julian', 'paez', '24874789', '1154392303', 'julianpaez@hotmail.com', 'urquiza 5432'),
(9, 4, 1, 'mayra', 'dias', '23874012', '1155392304', 'mairad@hotmail.com', 'sarmiento 987'),
(10, 4, 1, 'camila', 'zaviza', '43874123', '1156392305', 'zavizacamila@hotmail.com', 'talcahuano 876'),
(11, 2, 3, 'juana', 'novello', '42874456', '1157392306', 'juana@hotmail.com', 'cordoba 564'),
(12, 3, 2, 'luana', 'romero', '40874789', '1158392307', 'luana@hotmail.com', 'arregui 789'),
(13, 1, 3, 'javier', 'melgarejo', '38874012', '1159392308', 'melgarejo_javi@hotmail.com', 'guido spano 596'),
(14, 4, 1, 'pilar', 'stefano', '37874123', '1160392309', 'pilarst@hotmail.com', 'libertador 2300'),
(15, 2, 2, 'juan', 'ruiz', '36874456', '1161392311', 'juanruiz@hotmail.com', 'zarate 2739'),
(16, 3, 2, 'esperanza', 'martiez', '35874789', '1162392322', 'espemartinez@hotmail.com', 'carlos tejedor 2906'),
(17, 1, 3, 'camilo', 'ruiz', '34874012', '1163392333', 'cruiz@hotmail.com', 'zarate 2739'),
(18, 4, 1, 'estafania', 'flores', '33874123', '1164392344', 'estefa@hotmail.com', 'lazo 2786'),
(19, 2, 2, 'juan martin', 'lopez', '32874456', '1165392355', 'juanmartin@hotmail.com', 'libertad 2506'),
(20, 3, 3, 'sonia', 'pato', '31874789', '1166392366', 'sonia@hotmail.com', 'carlino 2987'),
(21, 4, 1, 'santino', 'diaz', '30874012', '1167392377', 'santino@hotmail.com', 'casco 2006')
;

-- Estos datos corresponden a la tabla ENTRENADOR
INSERT INTO ENTRENADOR (ID_ENTRENADOR, ID_DEPORTES, ID_JUGADOR, NOMBRE, APELLIDO, DNI, TELEFONO, EMAIL, DIRECCION) VALUES
(2, 1, 1, 'camila', 'perez', '12874123', '1125392381', 'cp@hotmail.com', 'misiones 205'),
(1, 2, 2, 'juano', 'lopez', '13874456', '1124392382', 'juanolopez@hotmail.com', 'españa 1256'),
(3, 3, 3, 'sergio', 'diaz', '14874789', '1123392383', 'sergiod@hotmail.com', 'sevilla 306'),
(4, 1, 4, 'santino', 'zalazar', '15874012', '1122392384', 'santino@hotmail.com', 'bariloche 765'),
(5, 1, 5, 'tobias', 'rueda', '16874123', '1115392301', 'sr.rueda@hotmail.com', 'la plata 924'),
(6, 2, 6, 'juan', 'aguero', '17874456', '1114392302', 'juanague@hotmail.com', 'formosa 153'),
(7, 3, 7, 'julian', 'ortiz', '18874789', '111392303', 'ortiz_julian@hotmail.com', 'cali 542'),
(8, 1, 8, 'mailen', 'inzua', '19874012', '111392304', 'mailen@hotmail.com', 'chubut 87'),
(9, 1, 9, 'esteban', 'hayes', '20874123', '1112392305', 'hayes@hotmail.com', 'pehuajo 846'),
(10, 2, 10, 'matias', 'crespo', '20874456', '1111392306', 'mati_crespo@hotmail.com', 'san luis 864'),
(11, 3, 11, 'daniel', 'romero', '34874789', '1110392307', 'd.romero@hotmail.com', 'mendoza 779'),
(12, 1, 12, 'santiago', 'san pedro', '13874012', '1108392308', 'ssanpedro@hotmail.com', 'santa fe 760'),
(13, 1, 13, 'pia', 'estevez', '14874123', '1108392309', 'pia@hotmail.com', 'roma 230'),
(14, 2, 14, 'juan cruz', 'solis', '15874456', '1107392311', 'juancruz_solis@hotmail.com', 'catamarca 981'),
(15, 3, 15, 'esmeralda', 'garcia', '16874789', '1106392322', 'esmeralda@hotmail.com', 'jujuy 293'),
(16, 1, 16, 'carmela', 'juarez', '22874012', '1105392333', 'cjuarez@hotmail.com', 'carmelo 299'),
(17, 1, 17, 'estafania', 'ramirez', '24874123', '1104392344', 'estefa_ramirez@hotmail.com', 'santa cruz 286'),
(18, 2, 18, 'jaime', 'romero', '23874456', '1103392355', 'jaime@hotmail.com', 'colombia 250'),
(19, 3, 19, 'sofia', 'pato', '21874789', '1102392366', 'sra.pato@hotmail.com', 'paraguay 287'),
(20, 1, 20, 'julieta', 'piñeyro', '30874012', '1101392377', 'juli_pineyro@hotmail.com', 'argentina 2000')
;