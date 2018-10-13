--*3 SUBCONSULTAS 
--*	1 SUBCONSULTA DE COLUMNA
--*	1 SUBCONSULTA DE TABLA

SELECT iID_Empleado, vNombre_Empleado, (SELECT MIN(FechaDeVenta) FROM Ventas v WHERE v.IiD_Empleado = e.IiD_Empleado) as Primera_Venta   
from Empleado e

Select *from (Select mSueldo, count(mSueldo) 
as 'Cantidad' from Empleado group by mSueldo) as Do where
Do.Cantidad > 1

Select *from (Select vNombre_Empleado, mSueldo  from Empleado) as Do where Do.mSueldo  > 1200

--1 SUBCONSULTA WITH
with SumaPeliculasAccion as (select iID_Genero AS Peliculas_Accion, count(iID_Genero) as [Cantidad] from Pelicula
group by iID_Genero )
select *from SumaPeliculasAccion where SumaPeliculasAccion.Cantidad > 1 AND Peliculas_Accion=40

--5 VISTAS

create view ReporteMensual3 as(
select vNombre_Completo
, count (v.iID_Ventas) as [Total de Venta]
  from Ventas as v left join Empleado e on v.iID_Empleado = e.iID_Empleado
 where Month(v.FechaDeVenta) = 05
group by vNombre_Completo)
select *from ReporteMensual3

SELECT *FROM VENTAS

create view EmpleadosSucursal as(
select vNombre_Completo
, s.vSucursal as [Sucursal]
  from Sucursal as s inner join Empleado e on s.iID_Sucursal = e.iID_Sucursal where s.iID_Sucursal=120
group by vNombre_Completo, s.vSucursal)
select *from EmpleadosSucursal


create view ClienteDistinguido as(
select vNombre_Completo as [Clientes Distinguidos]
  from Cliente as c left join Distinguido as d on c.iID_ClienDistinguido = d.iID_ClienDistinguido
 where d.iID_ClienDistinguido=170
group by vNombre_Completo)
select *from ClienteDistinguido

create view Comprascliente as(
select vNombre_Completo
, vNombre_Peli, Cantidad_Pelicula as [Peliculas Compradas], mPrecio,(Cantidad_Pelicula * mPrecio) as [Total Compra]
  from Alquiler as al left join Alquiler_Pelicula a  on al.iID_Alquiler = a.iID_Alquiler 
  left join Pelicula p  on  a.iID_Pelicula=p.iID_Pelicula 
  left join Cliente c on al.iID_Cliente=c.iID_Cliente where c.iID_Cliente=109  and  p.iID_Pelicula=89 
group by vNombre_Completo, vNombre_Peli, Cantidad_Pelicula, mPrecio)
select *from Comprascliente

create view Inventario as(
select p.vNombre_Peli, tCantidad as [Cantidad Peliculas], Cantidad_Pelicula as [Peliculas Compradas],(tCantidad-Cantidad_Pelicula) AS [Peliculas Disponibles Actualmente]
  from Alquiler as al left join Alquiler_Pelicula a  on al.iID_Alquiler = a.iID_Alquiler 
  left join Pelicula p  on  a.iID_Pelicula=p.iID_Pelicula 
  left join Cliente c on al.iID_Cliente=c.iID_Cliente where c.iID_Cliente>100  and  p.iID_Pelicula>80
group by p.vNombre_Peli,tCantidad, Cantidad_Pelicula)
select *from Inventario


--1 CONSULTA DINAMICA
declare @query nvarchar(MAX)
set @query = 'SELECT  SUM(mSueldo) as [Gastos Sueldos]   
from Empleado'
exec (@query)

SELECT *FROM Empleado
select *from Sucursal
SELECT *FROM CLIENTE
select *from Distinguido
sELECT *FROM PELICULA
select *from Alquiler
select *from Alquiler_Pelicula