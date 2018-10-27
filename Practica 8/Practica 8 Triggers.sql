
Create Trigger tr_insert
on Pelicula
instead of update --delete/*instaed
as
begin
	select * 
	from INSERTED -->tabla temporal, se pone la info que va llegando, solo existe para update e insert
	Select *
	from deleted -->tabla temporal, tiene la info que se va a borrar o que va de salida
end

update Pelicula set tCantidad= 200
where tCantidad =4

SELECT *FROM Pelicula

drop trigger tr_insert2
Create Trigger tr_insert2
on Empleado
instead of insert --delete/*instaed
as
begin
declare @NuevoUsuario nvarchar(50)
declare @ViejoUsuario nvarchar(50)
declare @NuevoSueldo nvarchar(50)
declare @ViejoSueldo nvarchar(50)
declare @PuestoNuevo nvarchar(50)
declare @PuestoViejo nvarchar(50)
	select * 
	from INSERTED -->tabla temporal, se pone la info que va llegando, solo existe para update e insert
	insert into Evento(dFecha_Evento,nvDescripcion_Evento)
values (GETDATE(),'Creado por Usuario : ' + @ViejoUsuario + ' Sueldo cambio de : ' + @ViejoSueldo + 'Puesto cambio de : ' + @PuestoViejo +
' | Cambio por Usuario : ' +@NuevoUsuario + ' A ' + @NuevoSueldo + ' A ' + @PuestoViejo )
end

Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('OwO','Cerio','Torrs',1300,null,120,64)


Select *from Empleado
Select *from Evento


Create trigger tr_UpdateEmpleado
on Empleado
for update
as
begin
declare @NuevoUsuario nvarchar(50)
declare @ViejoUsuario nvarchar(50)
declare @NuevoSueldo nvarchar(50)
declare @ViejoSueldo nvarchar(50)
declare @PuestoNuevo nvarchar(50)
declare @PuestoViejo nvarchar(50)

select @NuevoUsuario = vNombre_Empleado ,@NuevoSueldo = mSueldo, @PuestoNuevo = iID_Puesto from inserted 
select @ViejoUsuario = vNombre_Empleado ,@ViejoSueldo = mSueldo, @PuestoViejo = iID_Puesto from deleted

insert into Evento(dFecha_Evento,nvDescripcion_Evento)
values (GETDATE(), 'Creado por Usuario : ' + @ViejoUsuario + ' Sueldo cambio de : ' + @ViejoSueldo + 'Puesto cambio de : ' + @PuestoViejo +
' | Cambio por Usuario : ' +@NuevoUsuario + ' A ' + @NuevoSueldo + ' A ' + @PuestoViejo )

end

Update Empleado set mSueldo=2000 where iID_Empleado=131

Select *from Empleado
Select *from Evento