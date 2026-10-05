-- TALLER PRÁCTICO DE SQL
-- Tabla: estudiantes
-- Eliminar Tabla
drop table estudiantes;

-- PARTE 1: CREAR LA TABLA ESTUDIANTES
create table estudiantes(
    id_estudiante int,
    nombres varchar(50),
    apellidos varchar(50),
    edad int,
    curso varchar(50),
    fecha_registro varchar(10),
	
-- PARTE 2: DEFINIR LA LLAVE PRIMARIA
constraint estudiantes_pk primary key(id_estudiante)
	
);