create database coleccion;

create table peliculas(
	codpeli char(5),
    nombre varchar(50)
);	

alter table peliculas add primary key(codpeli);

insert into peliculas () values ('P0001','Creed: Corazón de Campeón');
insert into peliculas () values ('P0002','Agua para elefantes'); 
insert into peliculas () values ('P0003','The hateful'); 
insert into peliculas () values ('P0004','Ice Age 4: La formación de los continentes');
insert into peliculas () values ('P0005','Joy');
insert into peliculas () values ('P0006','Soy Leyenda');
insert into peliculas () values ('P0007','Star trek');
insert into peliculas () values ('P0008','Steve Jobs');
insert into peliculas () values ('P0009','Snoopy');
insert into peliculas () values ('P0010','Star Wars');
insert into peliculas () values ('P0011','Los juegos del hambre:sinsajo, p.2');

create table director(
	idirector char(5),
    nombre varchar(50)
);

alter table director add primary key(idirector);

insert into director () values ('D0001','Francis Lawrence');
insert into director () values ('D0002','J.J. Abrams');
insert into director () values ('D0003','Steve Martino');
insert into director () values ('D0004','Samuel L. Jackson');
insert into director () values ('D0005','David O. Russell');
insert into director () values ('D0006','Danny Boyle');
insert into director () values ('D0007','Adam Mckay');

create table evaluacion(
	codpeli char(5) ,
    iddirector char(5) ,
    calificacion decimal(8,2)
);

alter table evaluacion add pimary key(codpeli, iddirector);
alter table evaluacion add constraint fk_evaluacionpelicula foreign key (codpeli) references peliculas(codpeli);
alter table evaluacion add constraint fk_evaluaciondirector foreign key (iddirector) references director(idirector);

insert into evaluacion () values ('P0001','D0007',null);
insert into evaluacion () values ('P0002','D0001',3.50);
insert into evaluacion () values ('P0003','D0004',4.25);
insert into evaluacion () values ('P0004','D0003',4.75);
insert into evaluacion () values ('P0005','D0005',3.00);
insert into evaluacion () values ('P0006','D0001',3.75);
insert into evaluacion () values ('P0007','D0002',4.00);
insert into evaluacion () values ('P0008','D0006',3.75);
insert into evaluacion () values ('P0009','D0003',4.00);
insert into evaluacion () values ('P0010','D0002',4.25);
insert into evaluacion () values ('P0011','D0001',3.00); 

 




