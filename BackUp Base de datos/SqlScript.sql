create database GestorTelmex
use GestorTelmex

create table Empleado
(
	ID_empleado int identity(1,1) primary key,
	Nombre varchar(20) not null,
	Apaterno varchar(15) not null,
	Amaterno varchar(15) not null,
	F_nacimiento date not null,
	Domicilio varchar(70) not null,
	Usuario varchar(15) not null,
	Contra varchar(30) not null
)

create table Cliente
(
	ID_cliente int identity(1,1) primary key,
	Nombre varchar(20) not null,
	Apaterno varchar(15) not null,
	Amaterno varchar(15) not null,
	F_nacimiento date not null,
	Domicilio varchar(70) not null,
	Curp varchar(20) not null,
	Telefono int not null,
	Credito float null,
)

create table Articulo
(
	ID_articulo int identity(1,1) primary key,
	Descripcion varchar(80) not null,
	Precio float not null,
)

create table Venta
(
	ID_venta int identity(1,1) primary key,
	ID_empleado int not null,
	ID_cliente int not null,
	ID_articulo int not null,
	Fecha date not null,
	FOREIGN KEY (ID_empleado) REFERENCES Empleado(ID_empleado),
	FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente),
	FOREIGN KEY (ID_articulo) REFERENCES Articulo(ID_articulo)
)

ALTER TABLE Empleado
ADD UNIQUE (Usuario)


insert into Empleado values ('Juan','Hernandez','Vazquez','1993-06-06','Calle Cisne, Lote 43, Col. Lomas verdes, Poza Rica, Veracruz','JuanHdz','Toche1211')
insert into Empleado values ('Hilda','Santiago','Vazquez','1993-02-17','La Valentina 103, Valentina, 93427 Papantla de Olarte, Ver.','Aracely','admin')
insert into Empleado values ('Empleado','App','apm','2000-08-24','avenida siempre viva,springfield, E.U','Ejemplo','1234')


ALTER TABLE Cliente ALTER COLUMN Telefono char(12) ;  
insert into Cliente values ('Kevin','Ramirez','Delgado','1990-07-17','Calle tulipanes, Colonia tain','KEVJ930606HVZRZN05','7821123232',0.0)
insert into Cliente values ('Jared','Solis','Herrera','1993-07-17','Calle tulipanes, Colonia tajin','12637485959967ygtt','7821123232',0.0)
insert into Cliente values ('Dani','Ramos','Rojas','1992-07-17','Calle tulipanes, Colonia tajin','DARR30606HVZRZN24','7821123232',0.0)
insert into Cliente values ('Lupita','Diaz','Herrera','1994-07-17','Calle rosas, Colonia Independencia','LDSH930606HVZRZN68','7821123232',0.0)

insert into Cliente values ('Lupita','Ramirez','Delgado','1990-07-17','Facc Lomas ','ertJ930606HVZRZN05','7821112345',0.0)
insert into Cliente values ('Jose','Solis','Herrera','1993-07-17','Colonia cazones, Colonia tajin','OYU37485959967ygtt','782223432',0.0)
insert into Cliente values ('Pablo','Ramos','Diaz','1992-07-17','Colonia pozo 13','SDFR30606HVZRZN24','782243432',0.0)
insert into Cliente values ('Adriana','campos','Herrera','1994-07-17','ejido 20','VBNH930606HVZRZN68','782343432',0.0)



insert into Articulo values ('tablet MS Surface 32G',4575.9)
insert into Articulo values ('tablet HP Elite Pad 900',6879)
insert into Articulo values ('tablet Samsung Galaxy A',5700.5)
insert into Articulo values ('tablet Samsung Oled',6423.5)
insert into Articulo values ('tablet Samsung pantalla 4k',7340.5)
insert into Articulo values ('tablet Samsung 15 Pulgadas',5289.5)
insert into Articulo values ('tablet HP 16G',6499.5)
insert into Articulo values ('tablet HP 32G',6900.5)
insert into Articulo values ('tablet Lanix',3500.5)
insert into Articulo values ('tablet Surface 16G',3800.5)
insert into Articulo values ('Consola Xbox 360 4G S/Kinect',3300.5)
insert into Articulo values ('Consola Xbox 360 4G C/Kinect',3620.0)
insert into Articulo values ('Consola Xbox 360 32G S/Kinect',5000.5)
insert into Articulo values ('Consola Xbox 360 32G C/Kinect',5500.5)
insert into Articulo values ('Laptop Lanix Neuron',4748.9)
insert into Articulo values ('Laptop VAIO VPG3234e',7809.5)
insert into Articulo values ('Laptop VAIO LP32094e',8734.5)
insert into Articulo values ('Laptop VAIO SVE83u8e',9779.5)
insert into Articulo values ('Laptop Toshiba 1',7340.5)
insert into Articulo values ('Laptop Toshiba X',7988.5)
insert into Articulo values ('Laptop Samsung',7554.5)
insert into Articulo values ('Laptop Macbook Pro air',20145.5)
insert into Articulo values ('Laptop HP 3243',7903.5)
insert into Articulo values ('Laptop HP 7443',8999.5)


insert into Venta values ('4','3','1','2016-11-13')
insert into Venta values ('4','3','2','2016-11-14')
insert into Venta values ('4','4','3','2016-11-15')
insert into Venta values ('4','3','4','2016-12-16')
insert into Venta values ('4','3','5','2016-12-17')
insert into Venta values ('4','4','6','2016-12-18')
insert into Venta values ('4','5','7','2016-12-19')
insert into Venta values ('4','5','8','2016-12-19')
insert into Venta values ('4','4','9','2017-01-19')
insert into Venta values ('4','4','10','2017-01-19')
insert into Venta values ('4','3','11','2017-01-11')
insert into Venta values ('4','6','12','2017-01-12')
insert into Venta values ('4','6','13','2017-01-12')
insert into Venta values ('4','4','14','2017-01-13')
insert into Venta values ('4','6','15','2017-01-14')
insert into Venta values ('4','6','16','2017-02-15')
insert into Venta values ('4','5','17','2017-02-16')
insert into Venta values ('4','5','18','2017-02-17')
insert into Venta values ('4','5','19','2017-02-18')
insert into Venta values ('4','5','20','2017-03-19')
insert into Venta values ('4','3','11','2017-03-20')
insert into Venta values ('4','5','12','2017-03-21')
insert into Venta values ('4','3','13','2017-03-22')
insert into Venta values ('4','6','14','2017-03-22')
insert into Venta values ('4','6','15','2017-03-22')
insert into Venta values ('4','4','16','2017-03-23')


alter proc Dgrafica(@anio int, @empleado int)
as 
begin
SELECT DATENAME(MONTH, fecha) Mes, SUM(precio) Monto FROM Venta inner join Articulo on Venta.ID_articulo = Articulo.ID_articulo where YEAR(Fecha) = @anio and ID_empleado = @empleado GROUP BY DATENAME(MONTH, fecha) ORDER BY DATENAME(Month, Fecha)
end
go

exec Dgrafica
@anio=2016,
@empleado=4


select YEAR(fecha) as anio from Venta group by YEAR(fecha)

create Procedure Aut (@Usuario varchar(15), @Contra varchar(30))
as
begin
select ID_empleado from Empleado where Usuario=@Usuario and Contra=@contra;
end 
go

exec aut
@usuario='ejemplo',
@contra='1234'

Select * from Articulo

SELECT *
FROM Articulo
WHERE Descripcion LIKE '%32g%';


create proc Nombre (@ID int)
as 
begin
	select Nombre, Apaterno, Amaterno from Empleado where ID_empleado=@ID
end 
go

exec Nombre
@ID = 4;

create proc Editar(@id int,@nombre varchar(20),@APaterno varchar(15),@AMaterno varchar(15), @fecha date, @Domicilio varchar(70), @Usuario varchar(15), @contra varchar(30))
as
begin
	update Empleado 
	set Nombre=@nombre,Apaterno=@APaterno,Amaterno=@AMaterno,F_nacimiento=@fecha,Domicilio=@Domicilio,Usuario=@Usuario,Contra=@contra where ID_empleado=@id
end
go


select Nombre, Apaterno, Amaterno, F_nacimiento, Domicilio, Usuario, Contra from 
Empleado where ID_empleado=4

exec Editar
@nombre='Juan Alberto',
@Apaterno='Hernandez',
@Amaterno='Vazquez',
@fecha='1993-06-06',
@Domicilio='Calle Cisne, Lote 43, Col. Lomas verdes, Poza Rica, Veracruz',
@Usuario='JuanHdz',
@Contra='Toche1211',
@id=1


alter table Articulo
add Cantidad int null

select * from Articulo

update Articulo
set Cantidad=35

create proc RealizarVenta(@IdEmpleado int,@IdCliente int,@IdArticulo int, @fecha date)
as
begin 
insert into venta values(@IdEmpleado,@IdCliente,@IdArticulo,@fecha)
end 
go

exec RealizarVenta
@IdEmpleado=4,
@IdCliente=9,
@IdArticulo=3,
@fecha='2016-12-16'