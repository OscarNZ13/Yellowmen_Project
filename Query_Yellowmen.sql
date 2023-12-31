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
        (11166931,'Manfinity Hypemode Men Cotton Beverage & Japanese','Size & Fit: S to XXL','https://img.ltwebstatic.com/images3_pi/2022/03/22/1647917813755e27a562f7e4807e3c7bee2175d74a_thumbnail_600x.jpg', 24990, false),
        (13454531,'Pantalon Cargo HypeMode','Size & Fit: S to XXL','https://img.ltwebstatic.com/images3_pi/2022/11/28/166962216410444d0b7d20bf14cb4876fa892a6cfe_thumbnail_600x.webp', 18990, false),
        (18678567,'Jeans MOM Tokio Azul','Size & Fit: S to XXL','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQj0QEOSLMDMWY3p5H_bnJLqKht1S-yqf4cX5NpBisuRjyDBo_s', 18500, false),
        (18658531,'Sudadera Old Art Men','Size & Fit: S to XXL','https://cdn.dsmcdn.com/ty978/product/media/images/20230807/3/400815953/987108958/1/1_org_zoom.jpg', 16900, false),
        (19342342,'Short Desert Men','Size & Fit: S to XXL','http://t3.gstatic.com/images?q=tbn:ANd9GcTtJBi9tOBJSfgKTh8XfTiYoQ-JDwILYkaU_GEPWcToVOxWZkdi', 27990, false),
        (18264882,'SHENHE Suéter de punto de manga larga con cuello redondo y estampado de esqueleto para hombre','Size & Fit: S to XXL','https://m.media-amazon.com/images/I/71X-hbgVjmL._AC_UY879_.jpg', 22400, false),
        (13456234,'SOLY HUX Camiseta de manga corta con estampado gráfico de letras para hombre, Negro dragón','Size & Fit: S to XXL','https://m.media-amazon.com/images/I/71QOGpJ64jL._AC_UY679_.jpg', 15400, false),
        (17675644,'Manfinity Chillmode Men Oil Cielo Estrellado','Size & Fit: S to XXL','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQOm4Mjx8lbwAqol9uom0Xgbzj5pZZx62QNOM_6dbVj82BtBQdb', 25000, false),
        (14357857,'Manfinity Sporsity Hombres Pantalones deportivos con estampado de letra con bolsillo oblicuo','Size & Fit: S to XXL','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQH5Fa3nxF7l48K6b8jgYi5ExorGS-tQ6IxRh5T9b-jRXDqKVRN', 19500, false),
        (16735445,'Bañador con cordón en la cintura y estampado tropical de Men Plus','Size & Fit: S to XXL','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpXybAVGFX9JrVd3hNi9stXxuH511GJExPT5r_q7uq2bzm2clT', 12800, false),
        (17345334,'Hombres Sudadera con estampado de fuego y letra','Size & Fit: S to XXL','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-HU6r0eJzOM5vhvR0fv_VAtaJ_yl275ou-2ZvHDUWiNGBLGwS', 23000, false),
        (1134931,'Hombres Camiseta con estampado de figura','Size & Fit: S to XXL','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThzhX-7IpUGzroU-tpgnok_qxph2c0wknG2sisYCkf6JxwR3h0',13990 , true),
         (14333931,'Academia Pantalones cortos para hombre Cordón Lazo delantero Gráfico Calle','Size & Fit: S to XXL','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQLyA1Zwu3U4C7SuryjgjUEoF5yyLNyE_Nv0kp3qoUqk8ODJwZT',11990 , true),
         (16345645,'Conjunto L.A para hombre Conjunto','Size & Fit: S to XXL','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRIpaeskUQrRK6vfD8qYtxf0s-EeKoU0laR7BXT1NpRtj0AlKJk',18990 , true),
         (17564357,'SHEIN Chicos Capucha con estampado de slogan y dibujos animados de hombros caídos','Size & Fit: S to XXL','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRqrO_VpRIQWiFuVAUoK0hzOUiKnLgUGmdV5oCosbQ7uTyzXqCE', 16990, true),
         (18642699,'Hombres Shorts con estampado de dragón','Size & Fit: S to XXL','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTVmNsBYc0-8ymyMh569-gIuK8MA6I_DYtcaVxwWf2lOCV1ppxf',13400 , true),
		 (15645931,'Gorra New York','Size & Fit: S to XXL','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXM26FlltmgcMr3OYjiPYKmhYGU5SK4uG-zMPR9ca6Ks7-6G6y', 8990, true),
         (17785645,'Jersey Black and White','Size & Fit: S to XXL','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQJnAvAusO-bMN9tdxPTnGuovpr9ySP-9Trp_waP97FNrZGMH0Q',17900 , true),
        (1888661,'Jacket Mezclilla','Size & Fit: S to XXL','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRR5v-LhYF6SYu2SysmcMGisJrhYNc9PGvqs09_TeL7V4DevgxC',39800 , true),
        (1775456,'Bellesumyee Chaqueta de mezclilla azteca para Hombre, con hombros caídos, con solapa, manga larga, con botones','Size & Fit: S to XXL','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw5QP9IogjQIUtJlDKgz0fsj3CxbE6n1mWNfTnU72o1Wd0PyAf',41200 , true),
        (1644551,'SHEIN Hombres Jeans de pierna recta con estampado de cuadros','Size & Fit: S to XXL','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS_2lYPqPsD7v5aH4l8ye6EvcLFwsfk4ZMUQYymaP9WUYZDLwBS',39900 , true);
        
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
