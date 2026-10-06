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

-- PARTE 3: INSERTAR DATOS
-- Insertar 15 estudiantes de colegio
insert into estudiantes values(1, 'Juan', 'Perez', 20, 'Base de Datos', '2026-01-10');

insert into estudiantes values(2, 'Maria', 'Gomez', 22, 'Lengua y Literatura', '2026-01-15');

insert into estudiantes values(3, 'Carlos', 'Herrera', 19, 'Ciencias Naturales', '2026-01-20');

insert into estudiantes values(4, 'Ana', 'Lopez', 15, 'Estudios Sociales', '2026-02-05');

insert into estudiantes values(5, 'Pedro', 'Mendoza', 14, 'Ingles', '2026-02-10');

insert into estudiantes values(6, 'Sofia', 'Castro', 16, 'Educacion Fisica', '2026-02-15');

insert into estudiantes values(7, 'Juan', 'Perez', 15, 'Ingles', '2026-02-20');

insert into estudiantes values(8, 'Maria', 'Gomez', 16, 'Matematicas', '2026-03-01');

insert into estudiantes values(9, 'Luis', 'Ramirez', 13, 'Ciencias Naturales', '2026-03-05');

insert into estudiantes values(10, 'Daniela', 'Torres', 17, 'Estudios Sociales', '2026-03-15');

insert into estudiantes values(11, 'Carlos', 'Herrera', 16, 'Matematicas', '2026-03-20');

insert into estudiantes values(12, 'Andrea', 'Vargas', 15, 'Lengua y Literatura', '2026-04-01');

insert into estudiantes values(13, 'Pedro', 'Mendoza', 17, 'Educacion Fisica', '2026-04-10');

insert into estudiantes values(14, 'Sofia', 'Castro', 14, 'Base de Datos', '2026-04-20');

insert into estudiantes values(15, 'Luis', 'Ramirez', 13, 'Ingles', '2026-04-30');

-- PARTE 4: CONSULTAS SELECT

-- 1. Mostrar todos los registros
select * from estudiantes;
--2. Mostrar nombre y cursos
select nombres, curso from estudiantes;
--3. Mostrar estudiantes > a 18 años
select * from estudiantes where edad > 18;
--4 Mostrar estudiantes entre 18 a 25 años
select * from estudiantes where edad between 18 and 25;
--5 Mostrar estudiantes de Base de datos 
select * from estudiantes where curso = 'Base de Datos';
--6. Mostrar estudiante resgitrado despues 2026-03-06
select * from estudiantes where fecha_registro > '2026-03-06';
--7. Mostrar estudiante resgitrado entre 2026-01-01 y 2026-04-30
select * from estudiantes where fecha_registro between '2026-01-01' and '2026-04-30';


