CREATE TABLE departamento(
	dep_id SERIAL,
	dep_nombre VARCHAR(50) NOT NULL,
	dep_Nres INTEGER NOT NULL,
	dep_poblacion INTEGER NOT NULL,
	dep_texto TEXT,
	PRIMARY KEY(dep_id)
);

INSERT INTO departamento (dep_nombre,dep_nres,dep_poblacion,dep_texto) VALUES									
	('Amazonas',29,27379,'Amazonas es uno de los departamentos colombianos más ricos en flora y fauna. Su riqueza natural es incomparable, además también posee una excelente riqueza étnica, según la Gobernación, Amazonas cuenta con cerca de 26 etnias.'),								
	('Boyacá',2,4700,'El Departamento de Boyacá está situado en el centro del país, en la cordillera oriental de los Andes; localizado entre los 04º39’10’’ y los 07º03’17’’ de latitud norte y los 71º57’49’’ y los 74º41’35’’ de longitud oeste. Cuenta con una superficie de 23.189 km2 lo que representa el 2.03 % del territorio nacional. Limita por el Norte con los departamentos de Santander y Norte de Santander, por el Este con los departamentos de Arauca y Casanare, por el Sur con Meta y Cundinamarca, y por el Oeste con Cundinamarca y Antioquia.'),								
	('Caldas',8,49031,'Caldas es un departamento colombiano con un desarrollo, principalmente agrícola, ganadero y turístico. Pertenece al eje cafetero por eso la belleza de sus montañas y la calidez de su gente te van a cautivar. Es un hábitat de mucha diversidad de flora y fauna, por eso cuenta con áreas protegidas como el Parque Nacional Natural Los Nevados y el Parque Nacional Natural Selva de Florencia.'),								
	('Cauca ',93,233135,'El departamento del Cauca es rico en maderas, tiene grandes reservas forestales, de vocación agrícola y turística. Está conformado por 42 municipios y 5 provincias: norte, sur, oriente, occidente y centro.'),								
	('Cesar',11,42801,'El Cesar es un departamento colombiano destacado por su ganadería, la agricultura y la pesca. Se ubica en la región Andina y Caribe en la zona noreste de Colombia, su organización territorial se encuentra dividida en 25 municipios. Actualmente, después de Bogotá, este departamento es el que mayores exportaciones realiza.'),								
	('Nariño',65,124841,'El departamento de Nariño es un importante productor agrícola y agroindustrial, su actividad turística se ha venido desarrollando con el tiempo y cada vez toma mayor importancia. Su capital es San Juan de Pasto. Está ubicado en el extremo suroeste del país, en las regiones andina y pacífica, limitando al norte con Cauca, al este con Putumayo, al sur con la República de Ecuador y al oeste con el océano Pacífico. '),								
	('Vichada',32,30063,'Vichada es el segundo departamento más grande de Colombia, por su riqueza hídrica es un excelente lugar para el turismo ecológico, para conectarte con la naturaleza y disfrutar de sus ríos. En sus tierras alberga especies como dantas, pumas, osos hormigueros y perros de monte.');								
