CREATE TABLE `notas` (
   `id` INT NOT NULL,
   `usuarios_id` INT NOT NULL,
   `titulo` VARCHAR(255) NOT NULL,
   `fecha_creacion` DATE NOT NULL,
   `fecha_actualizacion` DATE NOT NULL,
   `descripcion` CHAR NOT NULL,
   `fecha_eliminacion` TINYINT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `usuarios` (
   `id` INT NOT NULL,
   `nombre` TEXT NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `nota_categoria` (
   `id` INT NOT NULL,
   `notas_id` INT NOT NULL,
   `categoria_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categoria` (
   `id` INT NOT NULL,
   `nombre` TEXT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_bd3b9fc3-d749-4c58-889c-efe4dc638f3a` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios`(`id`);

ALTER TABLE `nota_categoria` ADD CONSTRAINT `FK_7d3112c3-0934-4213-81ec-288ec61bf9a9` FOREIGN KEY (`notas_id`) REFERENCES `notas`(`id`);

ALTER TABLE `nota_categoria` ADD CONSTRAINT `FK_9194c514-d537-4664-9923-2fdd102658c5` FOREIGN KEY (`categoria_id`) REFERENCES `categoria`(`id`);

insert into usuarios (id, nombre, email) values (1, 'Donny Load', 'dload0@quantcast.com');
insert into usuarios (id, nombre, email) values (2, 'Patrice Geke', 'pgeke1@harvard.edu');
insert into usuarios (id, nombre, email) values (3, 'Boigie Kieff', 'bkieff2@shutterfly.com');
insert into usuarios (id, nombre, email) values (4, 'Maureen Govett', 'mgovett3@bing.com');
insert into usuarios (id, nombre, email) values (5, 'Noak Soonhouse', 'nsoonhouse4@bing.com');
insert into usuarios (id, nombre, email) values (6, 'Wallis Dobbins', 'wdobbins5@ovh.net');
insert into usuarios (id, nombre, email) values (7, 'Rhys Bury', 'rbury6@slate.com');
insert into usuarios (id, nombre, email) values (8, 'Tristan Annesley', 'tannesley7@blogspot.com');
insert into usuarios (id, nombre, email) values (9, 'Danny Guidotti', 'dguidotti8@privacy.gov.au');
insert into usuarios (id, nombre, email) values (10, 'Spencer Aymer', 'saymer9@plala.or.jp');

insert into notas (id, usuarios_id, fecha_creacion, fecha_actualizacion, descripcion, fecha_eliminacion) values (1, 1, '1/19/2021', '9/19/2021', null, '10/19/2021');
insert into notas (id, usuarios_id, fecha_creacion, fecha_actualizacion, descripcion, fecha_eliminacion) values (2, 2, '1/31/2021', '10/4/2021', null, '2/17/2021');
insert into notas (id, usuarios_id, fecha_creacion, fecha_actualizacion, descripcion, fecha_eliminacion) values (3, 3, '4/29/2021', '11/11/2021', null, '4/25/2021');
insert into notas (id, usuarios_id, fecha_creacion, fecha_actualizacion, descripcion, fecha_eliminacion) values (4, 4, '11/23/2020', '9/18/2021', null, '9/11/2021');
insert into notas (id, usuarios_id, fecha_creacion, fecha_actualizacion, descripcion, fecha_eliminacion) values (5, 5, '6/20/2021', '7/4/2021', null, '3/26/2021');
insert into notas (id, usuarios_id, fecha_creacion, fecha_actualizacion, descripcion, fecha_eliminacion) values (6, 6, '3/7/2021', '9/11/2021', null, '6/4/2021');
insert into notas (id, usuarios_id, fecha_creacion, fecha_actualizacion, descripcion, fecha_eliminacion) values (7, 7, '5/24/2021', '11/10/2021', null, '7/15/2021');
insert into notas (id, usuarios_id, fecha_creacion, fecha_actualizacion, descripcion, fecha_eliminacion) values (8, 8, '3/20/2021', '12/22/2020', null, '7/10/2021');
insert into notas (id, usuarios_id, fecha_creacion, fecha_actualizacion, descripcion, fecha_eliminacion) values (9, 9, '5/14/2021', '8/7/2021', null, '4/28/2021');
insert into notas (id, usuarios_id, fecha_creacion, fecha_actualizacion, descripcion, fecha_eliminacion) values (10, 10, '10/22/2021', '11/16/2021', null, '6/29/2021');

insert into nota_categoria (id, notas_id, categoria_id) values (1, 1, 1);
insert into nota_categoria (id, notas_id, categoria_id) values (2, 2, 2);
insert into nota_categoria (id, notas_id, categoria_id) values (3, 3, 3);
insert into nota_categoria (id, notas_id, categoria_id) values (4, 4, 4);
insert into nota_categoria (id, notas_id, categoria_id) values (5, 5, 5);
insert into nota_categoria (id, notas_id, categoria_id) values (6, 6, 6);
insert into nota_categoria (id, notas_id, categoria_id) values (7, 7, 7);
insert into nota_categoria (id, notas_id, categoria_id) values (8, 8, 8);
insert into nota_categoria (id, notas_id, categoria_id) values (9, 9, 9);
insert into nota_categoria (id, notas_id, categoria_id) values (10, 10, 10);

insert into categoria (id, nombre) values (1, 'Ingles');
insert into categoria (id, nombre) values (2, 'Portugues');
insert into categoria (id, nombre) values (3, 'Italiano');
insert into categoria (id, nombre) values (4, 'Frances');
insert into categoria (id, nombre) values (5, 'Ruso');
insert into categoria (id, nombre) values (6, 'Aleman');
insert into categoria (id, nombre) values (7, 'Catalan');
insert into categoria (id, nombre) values (8, 'Arabe');
insert into categoria (id, nombre) values (9, 'Chino');
insert into categoria (id, nombre) values (10, 'Bengali');