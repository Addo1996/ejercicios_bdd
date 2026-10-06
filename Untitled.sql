-- Crear la base de datos del taller
create database if not exists ejercicios_bdd;

-- Seleccionar la base de datos del taller
use ejercicios_bdd;

-- Eliminar la tabla si ya existe
drop table if exists estudiantes;

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

insert into estudiantes values(11, 'Carlos', 'Herrera', 16, 'Programacion', '2026-01-01');

insert into estudiantes values(12, 'Andrea', 'Vargas', 15, 'Lengua y Literatura', '2026-04-01');

insert into estudiantes values(13, 'Pedro', 'Mendoza', 17, 'Educacion Fisica', '2026-04-10');

insert into estudiantes values(14, 'Sofia', 'Castro', 14, 'Base de Datos', '2026-04-20');

insert into estudiantes values(15, 'Luis', 'Ramirez', 13, 'Ingles', '2026-04-30');

-- PARTE 4: CONSULTAS SELECT
-- 1. Mostrar todos los registros
select * from estudiantes;

-- 2. Mostrar nombre y cursos
select nombres, curso from estudiantes;

-- 3. Mostrar estudiantes > a 18 años
select * from estudiantes where edad > 18;

-- 4 Mostrar estudiantes entre 18 a 25 años
select * from estudiantes where edad between 18 and 25;

-- 5 Mostrar estudiantes de Base de datos 
select * from estudiantes where curso = 'Base de Datos';

-- 6. Mostrar estudiante registrado despues 2026-03-01
select * from estudiantes where fecha_registro > '2026-03-01';

-- 7. Mostrar estudiante registrado entre 2026-01-01 y 2026-04-30
select * from estudiantes where fecha_registro between '2026-01-01' and '2026-04-30';
-- 8. Mostrar nombres, apellidos y correo
select nombres, apellidos, correo from estudiantes;

-- PARTE 5: UPDATE

-- 1. Cambiar la materia del estudiante 1
update estudiantes set curso = 'Ciencias Naturales' where id_estudiante = 1;

-- 2. Cambiar edad con el id
update estudiantes set edad = 50 where id_estudiante = 2;

-- 3. Cambiar la fecha de registro del estudiante 3
update estudiantes set fecha_registro = '2026-05-05' where id_estudiante = 3;

-- 4. Cambiar la edad y la materia del estudiante 4
update estudiantes set edad = 16, curso = 'Matematicas' where id_estudiante = 4;

-- 5. Cambiar el nombre y apellido del estudiante 5
update estudiantes set nombres = 'Luis', apellidos = 'Gonzalez' where id_estudiante = 5;

-- PARTE 6: DELETE

-- 1. Eliminar estudiante por ID
delete from estudiantes where id_estudiante = 15;

-- 2. Eliminar un estudiante con una materia
delete from estudiantes where id_estudiante = 14 and curso = 'Base de Datos';

-- 3. Eliminar estudiante por edad
delete from estudiantes where id_estudiante = 13 and edad = 17;

-- 4. Eliminar otro estudiante por fecha de registro
delete from estudiantes where id_estudiante = 8 and fecha_registro = '2026-03-01';

-- 5. Eliminar estudiante por materia y edad
delete from estudiantes where id_estudiante = 11 and curso = 'Programacion' and edad = 16;
-- PARTE 7: MODIFICACIÓN DE LA TABLA
-- Agregar la columna correo
alter table estudiantes add column correo varchar(100);
-- Mostrar la estructura de la tabla
describe estudiantes;
-- PARTE 8: ACTUALIZAR INFORMACIÓN

-- Actualizar el correo de un estudiante
update estudiantes set correo = 'juan.perez@colegio.com' where id_estudiante = 1;

-- Actualizar la edad y el correo de un estudiante
update estudiantes set edad = 18, correo = 'maria.gomez@colegio.com' where id_estudiante = 2;

-- Actualizar el correo de un estudiante
update estudiantes set correo = 'carlos.herrera@gmail.com' where id_estudiante = 3;

-- Actualizar el correo de un estudiante
update estudiantes set correo = 'ana.lopez@gmail.com' where id_estudiante = 4;

-- Actualizar el correo de un estudiante
update estudiantes set correo = 'luis.gonzalez@gmail.com' where id_estudiante = 5;

-- Actualizar el correo de un estudiante
update estudiantes set correo = 'sofia.castro@gmail.com' where id_estudiante = 6;

-- Actualizar el correo de un estudiante
update estudiantes set correo = 'juan.perez2@gmail.com' where id_estudiante = 7;

-- Actualizar el correo de un estudiante
update estudiantes set correo = 'luis.ramirez@gmail.com' where id_estudiante = 9;

-- Actualizar el correo de un estudiante
update estudiantes set correo = 'daniela.torres@gmail.com' where id_estudiante = 10;

-- Actualizar el correo de un estudiante
update estudiantes set correo = 'andrea.vargas@gmail.com' where id_estudiante = 12;
-- PARTE 9: CONSULTAS CON FECHAS

-- 1. Estudiantes registrados después del 2026-02-01
select * from estudiantes where fecha_registro > '2026-02-01';

-- 2. Estudiantes registrados antes del 2026-05-01
select * from estudiantes where fecha_registro < '2026-05-01';

-- 3. Estudiantes registrados entre 2026-02-01 y 2026-04-30
select * from estudiantes where fecha_registro between '2026-02-01' and '2026-04-30';

-- 4. Estudiantes registrados exactamente el 2026-03-15
select * from estudiantes where fecha_registro = '2026-03-15';

-- 5. Estudiantes de Programacion registrados después del 2026-01-01
select * from estudiantes where curso = 'Programacion' and fecha_registro > '2026-01-01';