CREATE TABLE municipio(
	mun_id SERIAL,
	mun_nombre VARCHAR(50) NOT NULL,
	mun_texto TEXT,
	fk_dep_id INTEGER NOT NULL,
	PRIMARY KEY(mun_id),
	FOREIGN KEY(fk_dep_id) REFERENCES departamento(dep_id)
);

INSERT INTO municipio (mun_nombre,mun_texto,fk_dep_id) VALUES		
	('EL ENCANTO','Corregimiento departamental colombiano perteneciente al departamento de Amazonas. Cuenta con una población de 4376 habitantes. Se encuentra a 158 msnm.',1),	
	('CUBARÁ','Cubará es un municipio colombiano. Se sitúa en el extremo nororiental del departamento de Boyacá, en la región del Sarare, piedemonte llanero de la Orinoquía colombiana, a una altitud de 360 metros sobre el nivel del mar. ',2),	
	('RIOSUCIO','Riosucio es un municipio colombiano ubicado en el Eje cafetero y en la región paisa, y reconocido por su carnaval y su gran número de festividades típicas. Está ubicado en los límites departamentales de Caldas, Antioquia y Risaralda. ',3),	
	('SUPÍA','Supía es un municipio ubicado en el noroccidente del departamento de Caldas, Colombia. Limita al norte con el departamento de Antioquia, al oriente con los municipios de La Merced y Marmato, al occidente y al sur con el municipio de Riosucio. ',3),	
	('CALDONO','Caldono es una población y municipio colombiano en el departamento de Cauca. Su cabecera municipal se sitúa en el norte del Departamento del Cauca a 67 kilómetros de la ciudad de Popayán. Pertenece a la Cuenca hidrográfica del alto Río Cauca y su principal río es el Ovejas.',4),	
	('PURACÉ','Puracé es un municipio de Colombia perteneciente al departamento del Cauca, su cabecera municipal es la localidad de Coconuco, está ubicada a 30 km de Popayán, la capital departamental. Se encuentra situado a 2850 m sobre el nivel del mar. ',4),	
	('VALLEDUPAR','Valledupar, también llamada Ciudad de los Santos Reyes del Valle de Upar, es un municipio colombiano, capital del departamento del Cesar. Es la cabecera del municipio homónimo, el cual tiene una extensión de 4493 km², 493 342 habitantes y junto a su área metropolitana reúne 677 9411​ habitantes; está conformado por 25 corregimientos y 102 veredas. ',5),	
	('CUMBAL','El municipio de Cumbal está situado al sur occidente del Nariño, en la cordillera andina junto al gran macizo del nudo de los Pastos. Limita con la República del Ecuador, Túquerres e Ipiales.  Este municipio goza de atractivos turísticos naturales que lo hacen un paraje especial para disfrutar de un bello e imponente paisaje andino y realizar actividades de aventura en la zona.',6),	
	('CUMARIBO','Cumaribo es un municipio colombiano ubicado en el departamento del Vichada. Alcalde Juan Carlos Cordero. Su jurisdicción tiene una extensión de 65.193 km²,1​ lo que lo convierte en el municipio más extenso de Colombia, tan extenso como Sri Lanka.',7),	
	('SANTACRUZ','Santacruz es un municipio colombiano ubicado en el departamento de Nariño, cuya cabecera municipal recibe el nombre se Guachavés. Se sitúa a 108 kilómetros de San Juan de Pasto, la capital del departamento. ',6);	

