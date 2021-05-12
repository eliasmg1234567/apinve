-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2020 a las 21:55:04
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gaby`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `idhistorial` int(11) NOT NULL,
  `laborhistorial` varchar(255) NOT NULL,
  `pesohistorial` text NOT NULL,
  `tallahistorial` text NOT NULL,
  `fchistorial` text NOT NULL,
  `frhistorial` text NOT NULL,
  `tahistorial` text NOT NULL,
  `temphistorial` text NOT NULL,
  `ahhistorial` text NOT NULL,
  `apnphistorial` text NOT NULL,
  `hemotipohistorial` text NOT NULL,
  `alergiashistorial` text NOT NULL,
  `apphistorial` text NOT NULL,
  `aghistorial` text NOT NULL,
  `qxhistorial` text NOT NULL,
  `pahistorial` text NOT NULL,
  `shistorial` text NOT NULL,
  `ohistorial` text NOT NULL,
  `ahistorial` text NOT NULL,
  `dxhistorial` text NOT NULL,
  `txhistorial` text NOT NULL,
  `planhistorial` text NOT NULL,
  `citahistorial` text NOT NULL,
  `idpaciente` int(11) NOT NULL,
  `fechahistorial` text NOT NULL,
  `diagnostico` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `idpaciente` int(11) NOT NULL,
  `nompaciente` text NOT NULL,
  `edadpaciente` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telpaciente` text NOT NULL,
  `dirpaciente` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`idhistorial`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`idpaciente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `idhistorial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `idpaciente` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/* CREAR TABLA DE USUARIOS 
PARA MAS INFO https://github.com/xcheko51x/Login-Sencillo-Angular/tree/master/Angular*/

create database pruebas;

use pruebas;

create table usuarios(
	idUsuario int primary key auto_increment,
	nombre varchar(50) not null,
	telefono varchar(15) not null,
	email varchar(30) not null,
	usuario varchar(50) not null,
	contrasena varchar(15) not null
);

insert into usuarios (nombre, telefono, email, usuario, contrasena) values('Walter', '123456789', 'walter@mail.com', 'walter', 'walter');