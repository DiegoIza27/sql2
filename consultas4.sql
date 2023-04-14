
use clinica;

# nuevas sentencias de sql
show tables;
# eliminar tablas 
drop tables usuario;
create table facturas(
id_factura int auto_increment not null primary key,
# 5 numero y dos decimales 
# usigned permite numero no negativos con numeros entero y decimales 
valor_fac decimal(5,2) unsigned
)

insert into facturas (valor_fac ) values (100);
#alterar tablas 
#renombrar tablas 
alter table medicamento rename medicina;
describe medicina;
#medificar campos de una tabla 
describe medicina;
alter table medicina modify id_medicamento int auto_increment;
# agregar campos 
alter table medicina add precio_med decimal(5,2);
describe medicina;
# eliminar campos 
alter table medicina drop precio_med;
#modificar campos 
alter table medicina change nombre_me nombre varchar(10);
#agregar clave primaria 
alter table prueba  add primary key(id_prueba);
create table prueba(
id_prueba int 
)

drop table prueba;
# consultas en orden by 
#desc decendente o acendente
select * from medicina order by id_medicamento asc ;
 select * from medicina order by id_medicamento desc ;
# cunt cuenta los valores de mi registor 
# renombrar la consulta 
select count(*) as cantidad  from medicina;
# like sirve para monsrtar la consulta ignornado los espacios osea todo 
select * from medicina;
select * from  medicina where  nombre_me like'%parecetamol%';
# nada que contenga cristian 
select * from  medicina where  nombre_me  not like'%parecetamol%';
select * from  medicina where  nombre_me   like'p%';
select * from  medicina where  nombre_me   like'%p';







