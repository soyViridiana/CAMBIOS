CREATE DATABASE IF NOT EXISTS ejercicio;
use ejercicio;
CREATE TABLE `cliente` (
  `id_cliente` int(3) PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `municipio` varchar(30) NOT NULL,
  `telefono` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `cliente` (`id_cliente`, `nombre`, `municipio`, `telefono`) VALUES
(2, 'Rene', 'Tizayuca', '5587654321'),
(3, 'Juanito', 'Tecamac', '5512345678');


CREATE TABLE `contacto` (
  `contactoid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `ap` varchar(50) NOT NULL,
  `am` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `contacto` (`contactoid`, `nombre`, `ap`, `am`, `telefono`, `correo`) VALUES
(1, 'René', 'Domínguez', 'Escalona', '5564212221', 'leo_skriom2k@hotmail.com'),
(2, 'Juan', 'Perez', 'Leon', '5512345678', 'hola@hola.com'),
(3, 'dfg', 'sdfg', 'dfg', '5564889498', 'leo_skriom2k@hotmail.com'),
(4, 'HOLA2', 'asdf', 'fasdf', 'dsfd', 'sdf');



CREATE TABLE `usuario` (
  `usuarioid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `correo` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `usuario` (`usuarioid`, `correo`, `password`, `nombre`) VALUES
(2, 'leo_skriom2k@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Rene'),
(5, 'leo_skriom3k@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Juan'),
(6, 'hola@hola.com', '30694dbc0cc9c67851017d9ccdf431a5', 'sadf');
