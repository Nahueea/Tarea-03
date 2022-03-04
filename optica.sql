create database optica;

use optica;

create table proveedor(
id_proveedor int unsigned not null auto_increment,
nombre varchar(120) not null,
direccion varchar(120),
primary key(id_proveedor)
);

create table paciente(
id_paciente int unsigned not null auto_increment,
dni int unsigned not null,
nombre varchar(120) not null,
apellido varchar(120) not null,
fechadenacimiento date not null,
primary key(id_paciente)
);

create table producto(
id_producto int unsigned not null auto_increment,
codigo varchar(120) not null,
nombre varchar(120) not null,
precio varchar(120) not null,
primary key(id_producto)
);

create table proveedor_producto(
id int unsigned not null auto_increment,
proveedorid int unsigned not null,
productoid int unsigned not null,
primary key(id),
foreign key(proveedorid) references proveedor(id_proveedor),
foreign key(productoid) references producto(id_producto)
);



insert into proveedor values (null, "Juan", "Av callao 1324");
insert into proveedor values (null, "Maria", "Av Cordoba 598");
insert into proveedor values (null, "Ricardo", "Pringles 956");
insert into proveedor values (null, "Roberto", "Cervantes 122");
insert into proveedor values (null, "Tomas", "Av Corrientes 6789");
insert into proveedor values (null, "Florencia", "Uruguay 2300");
insert into proveedor values (null, "Raquel", "Paraguar 3300");
insert into proveedor values (null, "Monica", "Salguero 300");
insert into proveedor values (null, "Braian", "Bolivar 1200");

insert into paciente values (null, 26739462, "Sofia", "Sosa", "1975-05-14");
insert into paciente values (null, 19302485, "Francisco", "Ibarra", "1969-12-05");
insert into paciente values (null, 23475924, "Jesus", "Rodriguez", "1972-01-09");
insert into paciente values (null, 35247698, "Ramiro", "Torres", "1990-02-23");
insert into paciente values (null, 29496312, "Franco", "Ramirez", "1985-10-12");
insert into paciente values (null, 27497765, "Tamara", "Quiroga", "1983-01-01");
insert into paciente values (null, 38221354, "Julian", "Martinez", "1997-04-29");
insert into paciente values (null, 15889021, "Ariana", "Diaz", "1960-07-16");
insert into paciente values (null, 12009321, "Agustina", "Romero", "1952-03-04"); 
insert into paciente values (null, 32884921, "Cristian", "Sanchez", "1987-06-19");

insert into producto values (null, 8394017832, "Viena", "$4500");
insert into producto values (null, 1036599871, "Riek", "$5500");
insert into producto values (null, 2755552314, "Serta", "$4000");
insert into producto values (null, 7773415273, "oblak", "$3500");
insert into producto values (null, 8394017832, "trelles", "$2800");
insert into producto values (null, 8394017832, "Figues", "$2500");
insert into producto values (null, 8394017832, "Crystal", "$3200"); 
insert into producto values (null, 8394017832, "Blorren", "$4300");
insert into producto values (null, 8394017832, "Round", "$5100");

insert into proveedor_producto values (null, 1, 2);
insert into proveedor_producto values (null, 2, 5);
insert into proveedor_producto values (null, 3, 4);
insert into proveedor_producto values (null, 4, 3);
insert into proveedor_producto values (null, 5, 11);
insert into proveedor_producto values (null, 6, 14);
insert into proveedor_producto values (null, 7, 15);
insert into proveedor_producto values (null, 8, 13);
insert into proveedor_producto values (null, 9, 12);


delete from producto where id_producto = 1;
delete from producto where id_producto = 6;
delete from producto where id_producto = 7;
delete from producto where id_producto = 8;
delete from producto where id_producto = 9;
delete from producto where id_producto = 10;