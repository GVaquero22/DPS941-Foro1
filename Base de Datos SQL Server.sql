
--USE Master

--CREATE DATABASE Universidad 
--USE Universidad

--(NAME = Sales_dat,
--    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\saledat.mdf',
    --SIZE = 10,
--    MAXSIZE = 50,
--    FILEGROWTH = 5)
--LOG ON
--(NAME = Sales_log,
--    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\salelog.ldf',
--    SIZE = 5 MB,
    --MAXSIZE = 25 MB,
--    FILEGROWTH = 5 MB);


CREATE TABLE Persona (
Carnet VARCHAR(20) PRIMARY KEY,
PrimerNombre VARCHAR(50),
SegundoNombre VARCHAR(50),
TercerNombre VARCHAR(50),
PrimerApellido VARCHAR(50),
SegundoApellido VARCHAR(50),
ApellidoDeCasada VARCHAR(50),
Identificacion VARCHAR(20),
NIT VARCHAR(20),
Genero VARCHAR(1),
FechaNacimiento DATETIME,
Email VARCHAR(50),
EsEstudiante BIT,
EsCatedratico BIT,
Estado BIT,
FechaCreacion DATETIME)

CREATE TABLE NivelesAcademicos (
Id VARCHAR(1) PRIMARY KEY,
Descripcion VARCHAR(50))

CREATE TABLE Profesor(
Id INT IDENTITY(1,1) PRIMARY KEY,
Carnet VARCHAR(20),
CONSTRAINT fk_Carnet FOREIGN KEY (Carnet) REFERENCES Persona (Carnet),
IdNivelAcademico VARCHAR(1),
CONSTRAINT fk_IdNivelAcademico FOREIGN KEY (IdNivelAcademico) REFERENCES NivelesAcademicos (Id))

CREATE TABLE Asignatura(
Id VARCHAR(10) PRIMARY KEY,
Nombre VARCHAR(100),
UV INT,
Estado BIT)

CREATE TABLE Detalle_Profesor_Asignaturas(
IdProfesor INT,
CONSTRAINT fk_IdProfesor FOREIGN KEY (IdProfesor) REFERENCES Profesor (Id),
IdAsignatura VARCHAR(10),
CONSTRAINT fk_IdAsignatura FOREIGN KEY (IdAsignatura) REFERENCES Asignatura (Id))

CREATE TABLE Becas(
Id VARCHAR(10) PRIMARY KEY,
Nombre VARCHAR(100),
PorcentajeAyuda INT,
Estado BIT)



CREATE TABLE Alumno(
Id INT IDENTITY(1,1) PRIMARY KEY,
IdCarnet VARCHAR(20),
CONSTRAINT fk_IdCarnet FOREIGN KEY (IdCarnet) REFERENCES Persona (Carnet),
IdNivelAcademico VARCHAR(1),
CONSTRAINT fk_IdNivelAcademico2 FOREIGN KEY (IdNivelAcademico) REFERENCES NivelesAcademicos (Id),
Becado BIT,
IdBeca VARCHAR(10)
CONSTRAINT fk_Beca FOREIGN KEY (IdBeca) REFERENCES Becas (Id))

CREATE TABLE Detalle_Alumno_Asignaturas(
IdAlumno INT,
CONSTRAINT fk_IdAlumno FOREIGN KEY (IdAlumno) REFERENCES Alumno (Id),
IdAsignatura VARCHAR(10),
CONSTRAINT fk_IdAsignatura2 FOREIGN KEY (IdAsignatura) REFERENCES Asignatura (Id))


