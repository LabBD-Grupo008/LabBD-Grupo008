Insert into Domicilio values ('Barrio Moderna','Ehrlich','#825','64102','Monterrey',100)
Insert into Domicilio values ('Barrio Moderna','Palmin','#832','64102','Monterrey',101)
Insert into Domicilio values ('Barrio Moderna','Gonzalez','#930','64102','Monterrey',102)
Insert into Domicilio values ('Barrio Moderna','Camarena','#293','64102','Monterrey',103)
Insert into Domicilio values ('Barrio Moderna','Pavlov','#932','64102','Monterrey',104)
Insert into Domicilio values ('Barrio Moderna','Lansteiner','#145','64102','Monterrey',105)
Insert into Domicilio values ('Barrio Moderna','Aztlan','#654','64102','Monterrey',106)
Insert into Domicilio values ('Barrio Moderna','Pradera','#971','64102','Monterrey',107)
Insert into Domicilio values ('Barrio Estrella','Tierra','#251','64109','Monterrey',108)
Insert into Domicilio values ('Barrio Estrella','Marte','#345','64109','Monterrey',109)
Insert into Domicilio values ('Barrio Estrella','Venus','#432','64109','Monterrey',110)
Insert into Domicilio values ('Barrio Estrella','Saturno','#287','64109','Monterrey',111)
Insert into Domicilio values ('Barrio Estrella','Jupiter','#689','64109','Monterrey',112)
Insert into Domicilio values ('Barrio Estrella','Pluton','#582','64109','Monterrey',113)
Insert into Domicilio values ('Barrio Estrella','Neptuno','#198','64109','Monterrey',114)

Select *from Domicilio

Insert into Puesto values('Cajero')
Insert into Puesto values('Guardia')
Insert into Puesto values('Lider')
Insert into Puesto values('Gerente')
Insert into Puesto values('Secretaria')
Insert into Puesto values('Limpieza')
Insert into Puesto values('Supervisor')
Insert into Puesto values('Subgerente')
Insert into Puesto values('Contador')
Insert into Puesto values('Auxiliar')
Insert into Puesto values('Director')
Insert into Puesto values('Encargado Pagina Web')
Insert into Puesto values('Encargado BD')
Insert into Puesto values('Negocio')
Insert into Puesto values('Ofertas')
Select *from Puesto



Insert into Clasificacion values ('A')
Insert into Clasificacion values ('B')
Insert into Clasificacion values ('C')
Insert into Clasificacion values ('D')
Insert into Clasificacion values ('E')
Insert into Clasificacion values ('F')
Insert into Clasificacion values ('G')
Insert into Clasificacion values ('H')
Insert into Clasificacion values ('I')
Insert into Clasificacion values ('J')
Insert into Clasificacion values ('K')
Insert into Clasificacion values ('L')
Insert into Clasificacion values ('M')
Insert into Clasificacion values ('N')
Insert into Clasificacion values ('Ñ')

Select *from Clasificacion

Insert into Actor values('Jason Statham')
Select *from Actor

Insert into Genero values('Accion')
Select *from Genero

Insert into Formato values('Blu-Ray')
Select *from Formato

Insert into Calidad values('4K')
Select *from Calidad

Insert into Idioma values('Español')
Select *from Idioma

Insert into Resolucion values('4096 × 3112')
Select *from Resolucion

Insert into Pelicula values('Megalodon',2018,100,7.5,'1:40','Pelicula sobre un tiburon gigante',null,4,40,30,20,11,70,60,50)
Select *from Pelicula

Insert into Casting values('Megalodon','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Insert into Casting values('LQ','Jason Statham',80,30)
Delete from Casting where iID_Casting>=180
Select *from Casting

Insert into Sucursal values('Solidaridad','Cabezada')
Select *from Sucursal

Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Guillermo De Jesús','Martinez','De Leon',1200,null,120,58)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Juan','Perez','Lopez',1000,null,120,51)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Osvaldo','Ker','Lopez',1400,null,120,52)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Gilberto','Pea','Oro',1400,null,120,53)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Enrique','Rodriguez','Garza',1800,null,120,54)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Hector','Paez','Morel',1700,null,120,55)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Fernando','Her','Min',1500,null,120,56)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Ivan','Taro','Slim',1200,null,120,57)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Martin','Zapata','Carranza',1900,null,120,59)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Adrian','Huerta','Velasquez',1200,null,120,60)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Luis','Lucio','Hody',1100,null,120,51)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Asael','Cantu','Oca',1500,null,120,61)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Envy','Rojas','Millar',1600,null,120,62)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Julio','Eye','Dragon',1400,null,120,63)
Insert into Empleado (vNombre_Empleado,vApellidoP_Empleado,vApellidoM_Empleado,mSueldo,iImagen,iID_Sucursal,iID_Puesto) values('Oscar','Cervantes','Torres',1300,null,120,64)
Select *from Empleado

Insert into Forma_Pago values('Efectivo')
Select *from Forma_Pago


UPDATE Empleado SET vNombre_Empleado='Karol' WHERE iID_Empleado=150
UPDATE Puesto SET Nombre_Puesto='Descuentos' WHERE iID_Puesto=64
UPDATE Clasificacion SET cClasificacion='O' WHERE iID_Clasificacion=25
UPDATE Domicilio SET vColonia='Barrio Aztlan' WHERE iID_Direccion=166 
UPDATE Casting SET vNombre_Pelicula= 'Eset' WHERE iID_Casting=211
Select *from Casting

DELETE FROM Empleado WHERE iID_Empleado = 149
DELETE FROM Puesto WHERE iID_Puesto = 63
DELETE FROM Clasificacion WHERE iID_Clasificacion = 24
DELETE FROM Domicilio WHERE iID_Direccion = 174
DELETE FROM Casting WHERE iID_Casting = 210


