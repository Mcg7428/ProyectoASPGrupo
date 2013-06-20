use BD_MantenimientoASP

insert into Edificio values ('E01','EDIFICIO A','SAN SALVADOR','Edificio Principal')
select * from Edificio

insert into dbo.Departamento values ('E01D01','E01','DEPARTAMENTO GENERAL')

INSERT INTO dbo.Laboratorio VALUES	('D01S01','E01D01','SALA 1')

select * from Usuario where ID_USUARIO = 'E01D0101'

delete from Usuario 
dbo.Usuario
INSERT INTO Laboratorio VALUES	('D01L01','E01D01','Laboratorio 1')
--alter table dbo.Departamento alter column NOMBRE_DEPTO varchar(max);

--alter table dbo.Sala alter column NOMBRE_SALA varchar(max);

-- alter table dbo.Laboratorio alter column NOMBRE_LABORATORIO varchar(max);