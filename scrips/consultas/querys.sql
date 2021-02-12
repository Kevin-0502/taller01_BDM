select nombre as 'Películas' from peliculas;

select idirector as 'Id de Director', nombre as 'Director' from director; 

select round((sum(calificacion)/count(codpeli)),2) as 'Promedio de las calificaciones de las películas' from evaluacion;

select d.nombre as 'Director de la pelicula "Steve Jobs"' from director d inner join evaluacion e inner join peliculas p on d.idirector=e.iddirector and p.codpeli=e.codpeli where p.nombre='Steve Jobs';

select p.nombre as 'Peliculas evaluadas por Francis Lawrace"' from peliculas p inner join evaluacion e inner join director d on d.idirector=e.iddirector and p.codpeli=e.codpeli where d.nombre='Francis Lawrence';

select p.nombre as 'Pelicula mejor evaluada"' from peliculas p inner join evaluacion e on p.codpeli=e.codpeli where e.calificacion=(select max(e1.calificacion) from evaluacion e1);

select p.nombre as 'Top 3 peliculas mejores evaluadas"',d.nombre as 'Director',e.calificacion as 'Evaluacion' from peliculas p inner join evaluacion e inner join director d on p.codpeli=e.codpeli and d.idirector=e.iddirector order by(Evaluacion) desc limit 3;

select d.nombre as 'Director',count(e.codpeli) as 'Cantidad de peliculas respectivas' from director d inner join evaluacion e on d.idirector=e.iddirector group by(d.nombre);

select p.nombre as 'Peliculas de Steve Martino y Francis Lawrence' from peliculas p inner join evaluacion e inner join director d on p.codpeli=e.codpeli and d.idirector=e.iddirector where d.nombre='Steve Martino' or d.nombre='Francis Lawrence';

select (e.calificacion+0.10) as 'Puntuaciones aumentadas en 0.10' from evaluacion e;



