USE VIDEOS4
--5 PROCEDIMIENTOS ALMACENADOS DONDE CONSULTEN SUS REPORTES Y FILTREN CON PARAMETROS
create procedure Miprocedimiento(
@letra nvarchar (100)
)
as
begin 
	select *from ReporteMensual3
	where vNombre_Completo like '%' + @letra +'%'

end

exec Miprocedimiento @letra ='O'
GO

create procedure EmpleadosSucursalFiltro(
@letra nvarchar (100)
)
as
begin 
	select *from EmpleadosSucursal
	where vNombre_Completo like '%' + @letra +'%'

end

exec EmpleadosSucursalFiltro @letra ='G'
GO


create procedure ClienteDistinguidoFiltro(
@nombre nvarchar (100)
)
as
begin 
	select *from ClienteDistinguido
	where [Clientes Distinguidos] LIKE @Nombre + '%'

end

exec ClienteDistinguidoFiltro @nombre ='David'
GO


create procedure ComprasClientesFiltro(
@letra nvarchar (100)
)
as
begin 
	select *from Comprascliente2
	where vNombre_Completo like '%' + @letra +'%' and [Total Compra] > 100

end

exec ComprasClientesFiltro @letra ='z'
GO

create procedure InventarioFiltro(
@letra nvarchar (100)
)
as
begin 
	select *from Inventario
	where vNombre_Peli like '%' + @letra +'%' and [Peliculas Disponibles Actualmente] = 4

end

exec InventarioFiltro @letra ='v'
GO

--1 FUNCTION
create function promediosueldo2trabajadores(
@sueldo1 int,
@sueldo2 int
) returns int
as
begin 
	declare @resultado int
	set @resultado = (@sueldo1+@sueldo2)/2
	return @resultado
end

select.dbo.promediosueldo2trabajadores(1400,1200) as Promedio

--1 script
create procedure RestarExistencia(
@CodPel int)
AS
begin
Declare @Cantidad int
select @Cantidad = count(iID_Alquiler)  from Alquiler_Pelicula where iID_Pelicula = @CodPel
if @Cantidad > 0
begin
select p.iID_Pelicula, p.vNombre_Peli, tCantidad as [Cantidad Peliculas],count(a.iID_Alquiler) as [Peliculas Rentadas]
  from Pelicula as p left join Alquiler_Pelicula a  on p.iID_Pelicula = a.iID_Pelicula 
group by p.iID_Pelicula, p.vNombre_Peli,tCantidad
UPDATE Pelicula set tCantidad=tCantidad-@Cantidad where iID_Pelicula = @CodPel
end
end
Select *from Pelicula

exec RestarExistencia 80


UPDATE Pelicula set tCantidad=5 where iID_Pelicula = 82