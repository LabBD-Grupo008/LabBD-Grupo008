--5 SELECTS BASICOS CON CAMBIO EN NOMBRE DE COLUMNA ALIAS Y USAR FUNCIONES 
select (vNombre_Empleado +' '+ vApellidoP_Empleado  +' '+ vApellidoM_Empleado) as 'Nombre Completo', substring (vNombre_Empleado,1,1) as 'Inicial',
mSueldo as 'Sueldo' , e.iID_Empleado from Empleado as e 

select (vCalle +' '+ vNumero  +' '+ vColonia) as Domicilio,(substring (vColonia,1,1) + substring (vColonia,8,8))as 'Abreviacion', d.iID_Direccion from Domicilio as d 

select  Nombre_Puesto as 'Puesto' ,substring (Nombre_Puesto,1,3) as 'Clave', p.iID_Puesto from Puesto as p

select top 3 cClasificacion as 'Clasificacion' ,p.vNombre_Peli,Reverse(p.vNombre_Peli) as Reversa, c.iID_Clasificacion from Clasificacion as c, Pelicula as p

select top 1 (r.vResolucion +' '+ c.vCalidad) as 'Resolucion' ,Reverse(r.vResolucion) as Reversa,
vFormato as 'Formato' , vIdioma as 'Idioma', vGenero as 'Genero', r.vResolucion from Resolucion as r,Formato as f, Idioma as i, Calidad as c, Genero as g

--4 SELECTS JOIN (CROSS INNER LEFT RIGHT)
Select
      e.iID_Empleado,
      e.vNombre_Empleado,
      s.vSucursal
   from
      Empleado e
         LEFT JOIN Sucursal s
            on e.iID_Sucursal = s.iID_Sucursal

Select
      c.iID_Casting,
      c.vNombre_Actor,
      p.vNombre_Peli
   from
      Casting c
         RIGHT JOIN Pelicula p
            on c.iID_Pelicula = p.iID_Pelicula

Select
      e.iID_Empleado,
      e.vNombre_Empleado,
      p.Nombre_Puesto
   from
      Empleado e
         INNER JOIN Puesto p
            on e.iID_Puesto = p.iID_Puesto

Select                                     
      e.vNombre_Empleado,
      p.Nombre_Puesto
   from
      Empleado e
         CROSS JOIN Puesto p

--5 SELECTS CON USO DE WHERE EN DIFERENTES TABLAS Y CAMPOS CON UN ORDER BY 
Select *from  Domicilio where vCalle like 'P%' order by vCalle asc
Select *from Puesto where Nombre_Puesto like 'C%' order by iID_Puesto desc
Select *from Clasificacion where iID_Clasificacion =11 or  iID_Clasificacion=15 or  iID_Clasificacion=19 order by iID_Clasificacion desc
Select *from Casting where iID_Casting = 198 or iID_Casting = 199 or iID_Casting = 211 order by vNombre_Pelicula asc
Select *from Empleado where vNombre_Empleado like 'A%' order by vNombre_Empleado asc

--5 SELECTS CON USO DE FUNCIONES DE AGREGACION 
--	2 SIN GROUP BY 
--	3 CON GROUP BY  1 CON HAVING
SELECT COUNT(*) AS '# Casas Barrio Moderna' 
FROM Domicilio as d
WHERE vColonia = 'Barrio Moderna'  group by iID_Direccion 

SELECT MIN(vNumero) AS 'MINIMO'
FROM Domicilio
WHERE vColonia = 'Barrio Moderna' group by iID_Direccion having MIN (vNumero) >'#700'

SELECT MAX(vNumero) AS 'MINIMO'
FROM Domicilio
WHERE vColonia = 'Barrio Moderna' group by iID_Direccion

SELECT SUM(mSueldo) AS 'Total Sueldos Guardia'
FROM Empleado
WHERE iID_Puesto = 51

SELECT AVG(mSueldo) AS 'Promedio Sueldos'
FROM Empleado
WHERE iID_Puesto >= 50


--3 SELECTS CON JOIN Y GROUP BY

Select p.iID_Puesto, p.Nombre_Puesto, SUM(e.mSueldo) as 'Total Sueldo' from Puesto p inner join 
Empleado e on p.iID_Puesto=e.iID_Puesto group by p.iID_Puesto, p.Nombre_Puesto

Select
      e.iID_Empleado,
      e.vNombre_Empleado,
      p.Nombre_Puesto, count(*) as 'Todas Filas'
   from
      Empleado e
         INNER JOIN Puesto p
            on e.iID_Puesto = p.iID_Puesto group by e.iID_Empleado, e.vNombre_Empleado, p.Nombre_Puesto

Select p.iID_Puesto, p.Nombre_Puesto, avg(e.mSueldo) as 'Promedio Sueldo' from Puesto p inner join 
Empleado e on p.iID_Puesto=e.iID_Puesto group by p.iID_Puesto, p.Nombre_Puesto

--1 SELECT INTO CON DROP TABLE Y REINSERTAR LAS FILAS
SELECT *INTO #Empleado FROM Empleado

Select *from #Empleado

Delete from #Empleado where iID_Empleado > 135

INSERT INTO #Empleado
SELECT vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,vNombre_Completo,mSueldo,iImagen,
iID_Sucursal, iID_Puesto 
FROM Empleado

Drop table #Empleado

Select iID_Empleado,vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,vNombre_Completo,mSueldo,iImagen,
iID_Sucursal, iID_Puesto INTO #Empleado FROM Empleado 