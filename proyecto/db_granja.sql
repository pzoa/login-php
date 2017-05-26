/*
Navicat MySQL Data Transfer

Source Server         : granja
Source Server Version : 100121
Source Host           : localhost:3306
Source Database       : db_granja

Target Server Type    : MYSQL
Target Server Version : 100121
File Encoding         : 65001

Date: 2017-05-26 17:48:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `razon social` varchar(45) DEFAULT NULL,
  `clientescol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of clientes
-- ----------------------------

-- ----------------------------
-- Table structure for clientes_has_lote
-- ----------------------------
DROP TABLE IF EXISTS `clientes_has_lote`;
CREATE TABLE `clientes_has_lote` (
  `clientes_id` int(11) NOT NULL,
  `lote_cantidad` int(11) NOT NULL,
  PRIMARY KEY (`clientes_id`,`lote_cantidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of clientes_has_lote
-- ----------------------------

-- ----------------------------
-- Table structure for empleados
-- ----------------------------
DROP TABLE IF EXISTS `empleados`;
CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `dni` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `cuenta bancaria` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `galpones_id` int(11) NOT NULL,
  `pagos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of empleados
-- ----------------------------

-- ----------------------------
-- Table structure for galpones
-- ----------------------------
DROP TABLE IF EXISTS `galpones`;
CREATE TABLE `galpones` (
  `id` int(11) NOT NULL,
  `gallinas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of galpones
-- ----------------------------

-- ----------------------------
-- Table structure for lote
-- ----------------------------
DROP TABLE IF EXISTS `lote`;
CREATE TABLE `lote` (
  `cantidad` int(11) NOT NULL,
  `huevos` varchar(45) DEFAULT NULL,
  `alimento de consumo` varchar(45) DEFAULT NULL,
  `tiempo de vida` varchar(45) DEFAULT NULL,
  `galpones_id` int(11) NOT NULL,
  `proveedor de gallinas_id` int(11) NOT NULL,
  `proveedores alimentos_id` int(11) NOT NULL,
  PRIMARY KEY (`cantidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lote
-- ----------------------------

-- ----------------------------
-- Table structure for pagos
-- ----------------------------
DROP TABLE IF EXISTS `pagos`;
CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `concepto` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `numero de pago` varchar(45) DEFAULT NULL,
  `proveedores alimentos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pagos
-- ----------------------------

-- ----------------------------
-- Table structure for proveedores_alimentos
-- ----------------------------
DROP TABLE IF EXISTS `proveedores_alimentos`;
CREATE TABLE `proveedores_alimentos` (
  `id` int(11) NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `numero de cuenta` varchar(45) DEFAULT NULL,
  `razon social` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of proveedores_alimentos
-- ----------------------------

-- ----------------------------
-- Table structure for proveedor_de_gallinas
-- ----------------------------
DROP TABLE IF EXISTS `proveedor_de_gallinas`;
CREATE TABLE `proveedor_de_gallinas` (
  `id` int(11) NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `numero de cuenta` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `pagos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of proveedor_de_gallinas
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0', 'paolo', '1261997');
SET FOREIGN_KEY_CHECKS=1;
