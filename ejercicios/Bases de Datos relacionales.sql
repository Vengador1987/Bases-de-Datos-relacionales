INSERT INTO Clientes VALUES('Alberto','Orio','48614985T','Calle San Aquilino, 32','1987-02-17');
INSERT INTO Clientes VALUES('Maria Jesus','Garcia','40154789R','Paseo Castellana, 227','1985-03-14');
INSERT INTO Clientes VALUES('Javier','Acosta','50145789U','Calle Principe de Vergara, 56','1975-05-02');
INSERT INTO Clientes VALUES('Sergio','Martin','11144422Z','Calle Embajadores, 44','1976-06-06');
INSERT INTO Clientes VALUES('Jose','Irimia','22233344K','Paseo del Prado, 45','1986-07-19');

INSERT INTO Productos VALUES('Perfume','1',50.95,'1');
INSERT INTO Productos VALUES('Jersey','2',30.25,'3');
INSERT INTO Productos VALUES('Abrigo','3',100.45,'2');
INSERT INTO Productos VALUES('TV','4',450.95,'4');
INSERT INTO Productos VALUES('Jamon','5',85.95,'5');

INSERT INTO Proveedores VALUES('1','elCorteIngles','Paseo Çastellana, 100');
INSERT INTO Proveedores VALUES('2','CorteFiel','Paseo Çastellana, 110');
INSERT INTO Proveedores VALUES('3','Primak','Paseo Çastellana, 120');
INSERT INTO Proveedores VALUES('4','Carrefour','Paseo Çastellana, 130');
INSERT INTO Proveedores VALUES('5','Alcampo','Paseo Çastellana, 140');

INSERT INTO ClientesProducto VALUES('48614985T','4');
INSERT INTO ClientesProducto VALUES('40154789R','3');
INSERT INTO ClientesProducto VALUES('50145789U','5');
INSERT INTO ClientesProducto VALUES('11144422Z','1');
INSERT INTO ClientesProducto VALUES('22233344K','2');

DELETE FROM ClientesProducto
WHERE dniCliente = '22233344K'

DELETE FROM Clientes
WHERE dni = '22233344K'

UPDATE Clientes
SET dni = '22233344K',
modelo ='2830'
WHERE matricula ='5218FWG';


INSERT INTO Camion VALUES('5218fwg','MAN 2830','Camion ligero','430');
INSERT INTO Camionero VALUES('12345678A','Felipe',666666888,'Calle Larga 7',430.05,'Murcia');

INSERT INTO CamioneroCamion VALUES('1','12345678A','5218fwg');

CREATE TABLE tblUsuarios (
   idx INT PRIMARY KEY AUTO_INCREMENT,
   usuario VARCHAR(20),
   nombre VARCHAR(20),
   sexo VARCHAR(1),
   nivel TINYINT,
   email VARCHAR(50),
   telefono VARCHAR(20),
   marca VARCHAR(20),
   compañia VARCHAR(20),
   saldo FLOAT,
   activo BOOLEAN
);

INSERT INTO tblUsuarios 
VALUES 
('1','BRE2271','BRENDA','M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1'),
('2','OSC4677','OSCAR','H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1'),
('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1'),
('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1'),
('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0'),
('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1'),
('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1'),
('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1'),
('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1'),
('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1'),
('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0'),
('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1'),
('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0'),
('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1'),
('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1'),
('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0'),
('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1'),
('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1'),
('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1'),
('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1'),
('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');

SELECT nombre, email
FROM tblUsuarios;

SELECT *
FROM tblUsuarios;

SELECT nombre, telefono
FROM tblUsuarios
WHERE sexo = 'M';

SELECT nombre
FROM tblUsuarios;

SELECT telefono, marca
FROM tblUsuarios;

SELECT nombre, email, telefono
FROM tblUsuarios
WHERE sexo = 'H';

SELECT nombre, telefono
FROM tblUsuarios
WHERE saldo >100 AND sexo = 'H';

SELECT nombre, telefono
FROM tblUsuarios
WHERE saldo >100 OR sexo = 'H';

SELECT nombre, telefono, saldo
FROM tblUsuarios
WHERE saldo <=300 AND activo = 1;



