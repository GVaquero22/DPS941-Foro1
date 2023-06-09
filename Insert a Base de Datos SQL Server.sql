


INSERT INTO Persona 
VALUES ('CV152055','GERARDO','ANTONIO',NULL,'CABEZAS','VAQUERO',NULL,
         '047755578','','M','1993-03-03','prueba@gmail.com',1,0,1,'2023-04-04')

INSERT INTO Persona 
VALUES ('BJ152032','JOSSELIN','BEATRIZ',NULL,'ALVARADO',NULL,NULL,
         '014588578',NULL,'F','1993-05-05','prueba2@gmail.com',1,0,1,'2023-04-04')

INSERT INTO Persona 
VALUES ('GP875052','GABRIELA',NULL,NULL,'PINEDA',NULL,NULL,
         '468651328',NULL,'F','1993-01-01','prueba3@gmail.com',1,1,1,'2023-04-04')


INSERT INTO NivelesAcademicos
VALUES ('T','T�cnico')
INSERT INTO NivelesAcademicos
VALUES ('L','Licenciado')
INSERT INTO NivelesAcademicos
VALUES ('I','Ingeniero')
INSERT INTO NivelesAcademicos
VALUES ('E','Estudiante')


INSERT INTO Becas 
VALUES ('KASMA0001','BECA FUNDACION KASMA','80',1)
INSERT INTO Becas 
VALUES ('SIMAN0001','BECA EMPRESA SIMAN','50',1)
INSERT INTO Becas 
VALUES ('SELEC0001','BECA EMPRESA SELECTOS','80',1)


INSERT INTO Profesor
VALUES ('GP875052','I')


INSERT INTO Asignatura
VALUES ('CVV001','CALCULO VARIAS VARIABLES',5,1)
INSERT INTO Asignatura
VALUES ('DSP001','PROGRAMACION MULTIPLATAFORMA',5,1)
INSERT INTO Asignatura
VALUES ('EMY001','ELECTRICIDAD Y MAGNETISMO',5,1)


INSERT INTO Alumno
VALUES ('CV152055','E',1,'KASMA0001')

INSERT INTO Alumno
VALUES ('BJ152032','E',1,'SELEC0001')



--YA CON REGISTROS PODEMOS VER LA RELACION DE LLAVES PRIMARIAS Y FORANEAS EN UN SELECT 
--PARA ALUMNO
SELECT P.Carnet,P.PrimerNombre,P.PrimerApellido,B.Nombre,B.PorcentajeAyuda,
N.Descripcion FROM Persona P INNER JOIN Alumno A ON A.IdCarnet=P.Carnet
INNER JOIN Becas B ON B.Id = A.IdBeca
INNER JOIN NivelesAcademicos N ON N.Id=A.IdNivelAcademico
--PARA PROFESOR
SELECT P.Carnet,P.PrimerNombre,P.PrimerApellido,
N.Descripcion FROM Persona P INNER JOIN Profesor A ON A.Carnet=P.Carnet
INNER JOIN NivelesAcademicos N ON N.Id=A.IdNivelAcademico


