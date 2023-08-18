CREATE DATABASE IF NOT EXISTS YellowMen; 
use YellowMen;

create table Prendas(
	id_prenda INT AUTO_INCREMENT PRIMARY KEY not null,
    nombre_prenda varchar(200) not null,
    descripcion varchar(200),
    ruta_imagen varchar(500),
    precio int not null,
    es_destacado boolean DEFAULT false
);

insert into YellowMen.Prendas(id_prenda, nombre_prenda, descripcion, ruta_imagen, precio, es_destacado) 
values (16406498,'Manfinity Hypemode Men Japanese Letter & Floral Print','Size & Fit: S to XXL','https://img.ltwebstatic.com/images3_pi/2022/05/23/1653271661ef037ca7fa3ebc4d3347e5d34cf040a2_thumbnail_600x.jpg', 16990, false),
		(14500964,'Manfinity Hypemode Men Color-block Playing Card Print','Size & Fit: S to XXL','https://img.ltwebstatic.com/images3_pi/2022/06/21/1655800159a95dc48aca9e1bc4b1ffb0a93371d1d8_thumbnail_600x.jpg', 18990, true),
		(15684986,'ROMWE Guys','Size & Fit: S to XXL','https://img.ltwebstatic.com/images3_pi/2023/05/23/1684823779f8d3e1a7bffefa8bfa084a5d11b24545_thumbnail_600x.jpg', 18990, true),
        (13203621,'Manfinity EMRG Men Figure','Size & Fit: S to XXL','https://img.ltwebstatic.com/images3_pi/2021/12/24/1640332083196f002e21a2053823ae6b67d7694b2e_thumbnail_600x.jpg', 14990, false),
        (14192099,'Manfinity EMRG Men Floral & Japanese','Size & Fit: S to XXL','https://img.ltwebstatic.com/images3_pi/2022/04/29/16512231432cb858de4e0fb79e201065e4286382e3_thumbnail_600x.jpg', 15990, false),
        (11166931,'Manfinity Hypemode Men Cotton Beverage & Japanese','Size & Fit: S to XXL','https://img.ltwebstatic.com/images3_pi/2022/03/22/1647917813755e27a562f7e4807e3c7bee2175d74a_thumbnail_600x.jpg', 24990, false);
        
create user 'AdminYM'@'%' identified by 'Key12345.';
grant all privileges on yellowmen.* to 'AdminYM'@'%';
flush privileges;

#Eliminar columnas de la tabla:
#ALTER TABLE prendas DROP COLUMN precio;

#Para ver todos los usuarios:
#SELECT user, host FROM mysql.user;

#Para darle al usurio todos los privilegios de una BD en concreto
#GRANT ALL PRIVILEGES ON yellowmen.* TO 'AdminYM'@'%';

#Para mostrar los privilegios que tiene un usuario:
#SHOW GRANTS FOR 'AdminYM'@'%';

#Eliminar un usuario:
#DROP USER 'AdminYM'@'%';
