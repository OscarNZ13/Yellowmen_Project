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

#Roles y Usuarios. Tal vez sea necesario modificar o eliminar
CREATE TABLE YellowMen.usuario (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  password varchar(200) NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  apellidos VARCHAR(30) NOT NULL,
  correo VARCHAR(25) NULL,
  telefono VARCHAR(15) NULL,
  activo boolean,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table YellowMen.rol (
  id_rol INT NOT NULL AUTO_INCREMENT,
  nombre varchar(20),
  id_usuario int,
  PRIMARY KEY (id_rol),
  foreign key fk_rol_usuario (id_usuario) references usuario(id_usuario)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

insert into YellowMen.rol (id_rol, nombre, id_usuario) values
 (1,'ROLE_ADMIN',1), (2,'ROLE_VENDEDOR',1), (3,'ROLE_USER',1),
 (4,'ROLE_VENDEDOR',2), (5,'ROLE_USER',2),
 (6,'ROLE_USER',3);
 
INSERT INTO YellowMen.usuario (id_usuario, username,password,nombre, apellidos, correo, telefono,activo) VALUES 
(1,'Oscar','$2a$10$P1.w58XvnaYQUQgZUCk4aO/RTRl8EValluCqB3S2VMLTbRt.tlre.','oscar', 'Naranjo Zuniga',    'kokarjr13@gmail.com',    '84567885',true),
(2,'Jose','$2a$10$GkEj.ZzmQa/aEfDmtLIh3udIH5fMphx/35d0EYeqZL5uzgCJ0lQRi','Rebeca',  'Contreras Mora', 'acontreras@gmail.com', '5456-8789',true),
(3,'Rehnam','$2a$10$koGR7eS22Pv5KdaVJKDcge04ZB53iMiw76.UjHPY.XyVYlYqXnPbO','Pedro', 'Mena Loria',     'lmena@gmail.com',      '7898-8936',true);

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
