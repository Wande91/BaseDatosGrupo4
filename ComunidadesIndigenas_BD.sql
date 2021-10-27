CREATE DATABASE comunidades;
\c comunidades;

--Tabla departamentos.--

CREATE TABLE "comunidadesIndigenasApp_departamento"(
  id SERIAL,
  nombre VARCHAR(50) NOT NULL UNIQUE,
  numero_resguardos INTEGER NOT NULL,
  numero_municipios_con_resguardo INTEGER NOT NULL,
  poblacion INTEGER NOT NULL,
  texto TEXT,
  PRIMARY KEY(id)
);

INSERT INTO "comunidadesIndigenasApp_departamento" (nombre,numero_resguardos,numero_municipios_con_resguardo,poblacion,texto) VALUES                  
  ('Amazonas',29,15,27379,'Amazonas es uno de los departamentos colombianos más ricos en flora y fauna. Su riqueza natural es incomparable, además también posee una excelente riqueza étnica, según la Gobernación, Amazonas cuenta con cerca de 26 etnias.'),                
  ('Boyacá',2,20,4700,'El Departamento de Boyacá está situado en el centro del país, en la cordillera oriental de los Andes; localizado entre los 04º39’10’’ y los 07º03’17’’ de latitud norte y los 71º57’49’’ y los 74º41’35’’ de longitud oeste. Cuenta con una superficie de 23.189 km2 lo que representa el 2.03 % del territorio nacional. Limita por el Norte con los departamentos de Santander y Norte de Santander, por el Este con los departamentos de Arauca y Casanare, por el Sur con Meta y Cundinamarca, y por el Oeste con Cundinamarca y Antioquia.'),                
  ('Caldas',8,23,49031,'Caldas es un departamento colombiano con un desarrollo, principalmente agrícola, ganadero y turístico. Pertenece al eje cafetero por eso la belleza de sus montañas y la calidez de su gente te van a cautivar. Es un hábitat de mucha diversidad de flora y fauna, por eso cuenta con áreas protegidas como el Parque Nacional Natural Los Nevados y el Parque Nacional Natural Selva de Florencia.'),                
  ('Cauca ',93,2,233135,'El departamento del Cauca es rico en maderas, tiene grandes reservas forestales, de vocación agrícola y turística. Está conformado por 42 municipios y 5 provincias: norte, sur, oriente, occidente y centro.'),                
  ('Cesar',11,18,42801,'El Cesar es un departamento colombiano destacado por su ganadería, la agricultura y la pesca. Se ubica en la región Andina y Caribe en la zona noreste de Colombia, su organización territorial se encuentra dividida en 25 municipios. Actualmente, después de Bogotá, este departamento es el que mayores exportaciones realiza.'),                
  ('Nariño',65,16,124841,'El departamento de Nariño es un importante productor agrícola y agroindustrial, su actividad turística se ha venido desarrollando con el tiempo y cada vez toma mayor importancia. Su capital es San Juan de Pasto. Está ubicado en el extremo suroeste del país, en las regiones andina y pacífica, limitando al norte con Cauca, al este con Putumayo, al sur con la República de Ecuador y al oeste con el océano Pacífico. '),                
  ('Vichada',32,10,30063,'Vichada es el segundo departamento más grande de Colombia, por su riqueza hídrica es un excelente lugar para el turismo ecológico, para conectarte con la naturaleza y disfrutar de sus ríos. En sus tierras alberga especies como dantas, pumas, osos hormigueros y perros de monte.');  

--Tabla municipios.-- 
   
CREATE TABLE "comunidadesIndigenasApp_municipio"(
  id SERIAL,
  nombre VARCHAR(50) NOT NULL UNIQUE,
  texto TEXT,
  departamento_id INTEGER NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(departamento_id) REFERENCES "comunidadesIndigenasApp_departamento"(id)
);

INSERT INTO "comunidadesIndigenasApp_municipio" (nombre,texto,departamento_id) VALUES    
  ('EL ENCANTO','Corregimiento departamental colombiano perteneciente al departamento de Amazonas. Cuenta con una población de 4376 habitantes. Se encuentra a 158 msnm.',1),  
  ('CUBARÁ','Cubará es un municipio colombiano. Se sitúa en el extremo nororiental del departamento de Boyacá, en la región del Sarare, piedemonte llanero de la Orinoquía colombiana, a una altitud de 360 metros sobre el nivel del mar. ',2),  
  ('RIOSUCIO','Riosucio es un municipio colombiano ubicado en el Eje cafetero y en la región paisa, y reconocido por su carnaval y su gran número de festividades típicas. Está ubicado en los límites departamentales de Caldas, Antioquia y Risaralda. ',3),  
  ('CUMARIBO','Cumaribo es un municipio colombiano ubicado en el departamento del Vichada. Alcalde Juan Carlos Cordero. Su jurisdicción tiene una extensión de 65.193 km²,1​ lo que lo convierte en el municipio más extenso de Colombia, tan extenso como Sri Lanka.',7),  
  ('CALDONO','Caldono es una población y municipio colombiano en el departamento de Cauca. Su cabecera municipal se sitúa en el norte del Departamento del Cauca a 67 kilómetros de la ciudad de Popayán. Pertenece a la Cuenca hidrográfica del alto Río Cauca y su principal río es el Ovejas.',4),  
  ('SANTACRUZ','Santacruz es un municipio colombiano ubicado en el departamento de Nariño, cuya cabecera municipal recibe el nombre se Guachavés. Se sitúa a 108 kilómetros de San Juan de Pasto, la capital del departamento. ',6),  
  ('VALLEDUPAR','Valledupar, también llamada Ciudad de los Santos Reyes del Valle de Upar, es un municipio colombiano, capital del departamento del Cesar. Es la cabecera del municipio homónimo, el cual tiene una extensión de 4493 km², 493 342 habitantes y junto a su área metropolitana reúne 677 9411​ habitantes; está conformado por 25 corregimientos y 102 veredas. ',5);  
    
--Tabla asociaciones.--
  
CREATE TABLE "comunidadesIndigenasApp_asociacion"(
  id SERIAL,
  nombre VARCHAR(150) NOT NULL UNIQUE,
  siglas VARCHAR(40) NOT NULL UNIQUE,
  municipio_id INTEGER NOT NULL,
  texto TEXT,
  PRIMARY KEY(id),
  FOREIGN KEY(municipio_id) REFERENCES "comunidadesIndigenasApp_municipio"(id)
);

INSERT INTO "comunidadesIndigenasApp_asociacion" (nombre,siglas,municipio_id,texto) VALUES  
  ('ASOCIACION DE CABILDOS Y AUTORIDADES TRADICIONALES DEL CONSEJO INDÍGENA MAYOR DEL PUEBLO MURUI (CIMPUM)','CIMPUM',1,'Nuestro Moo Añ+raima Padre Creador quien se sienta en el trono a pensar la creación de la humanidad, forma a su hijo Moo Buinaima y este le entrega la palabra a Koreg+ Buinaima quien transmite este poder a los cuatro Sabios del Pueblo Múrui Yua Buinaima, Z+k+da Buinaima, Noin+ Buinaima y Menigu+ Buinaima. Estos seres espirituales manejan la palabra con la cual capacitan a las nuevas generaciones para el manejo del Territorio y el Gobierno Tradicional.'),
  ('ASOCIACION DE CABILDOS INDIGENAS DE CALDAS  (ACICAL)','ACICAL',3, 'La ACICAL tiene por objeto el desarrollo integral de las comunidades indígenas representadas en los cabildos del departamento de Caldas, mediante la celebración de convenios, contratos y proyectos con entidades públicas y privadas del orden nacional e internacional, que hagan parte de sus iniciativas colectivas, planes de vida, usos y costumbres, buscando la preservación de su identidad, el fortalecimiento de la autonomía y la autodeterminación.'),
  ('ASOCIACION DE CABILDOS UKAWE´S X NASA CXHAB','UKAWE´S X NASA CXHAB',4, 'Somos una organización que busca el respeto y garantías a nuestro derecho a la vida y a la participación política, que están siendo vulnerados por  amenazas e intimidaciones a líderes y lideresas del sector indígena y campesino de Caldono, quienes, en un legítimo ejercicio y pacto de unidad comunitaria, estamos avanzando en un nuevo proyecto político que nos permita mantener la unidad, participación, transparencia, equidad y justicia social.'),
  ('ASOCIACION DE AUTORIDADES TRADICIONALES U´WA','U´WA',5, 'La ASOUWA (Asociación del pueblo U’wa) Esta organizacion busca crear estrategias de defensa de los derechos hacia afuera, partiendo de la identidad social y territorial y fortaleciendo l ainterculturalidad del pueblo, luchando por la recuperación de sus territorios, exigiendo el cumplimiento de los Derechos especiales indígenas, los civiles y los Humanos y denunciando las violaciones a éstos'),
  ('ASOCIACION DE AUTORIDADES INDIGENAS DE (LOS PASTOS NARIÑO)','LOS PASTOS NARIÑO',2, 'Somos una entidad de derecho público con personería jurídica, patrimonio propio y autonomía administrativa; se sujeta al sistema normativo del derecho mayor.'),
  ('ASOCIACION DE AUTORIDADES TRADICIONALES YUKPAS SERRANIA DEL PERIJA  (SEKEIMU)','SEKEIMU',6, 'Esta organización tiene por objetivo el desarrollo integral de las comunidades indígenas la lucha por la recuperación de sus territorios, exigiendo el cumplimiento de los Derechos especiales indígenas, buscando la preservación de su identidad, el fortalecimiento de la autonomía y la autodeterminación.'),
  ('ASOCIACION DE CABILDOS Y AUTORIDADES INDIGENAS DE LA REGION DEL TOMO (PALAMEKU)','PALAMEKU',7, 'Esta organización propone un modelo y funcionamiento desde los principios de la territorialidad, la autonomía, la identidad, la historia propia, la participación, la diversidad e interculturalidad, manifestada en la sociedad colombiana y las relaciones internacionales de los pueblos indígenas.');  
  
    
--Tabla resguardos.--  
  
CREATE TABLE "comunidadesIndigenasApp_resguardo"(
  id INTEGER NOT NULL,
  nombre VARCHAR(60) NOT NULL UNIQUE,
  poblacion INTEGER NOT NULL,
  texto TEXT,
  asociacion_id INTEGER NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(asociacion_id) REFERENCES "comunidadesIndigenasApp_asociacion"(id)
);

INSERT INTO "comunidadesIndigenasApp_resguardo" (id,nombre,poblacion,texto,asociacion_id) VALUES  
  (1002,'PREDIO PUTUMAYO',1315,'cubre una extensión territorial de 5.869.447 en la que habitan comunidades pertenecientes a varios grupos étnicos y lingüísticos como Witoto, Mirañas, Boras, Andoques, Ocainas, Muinanes, Nonuyas, además de estos también se encuentran poblaciones pertenecientes a los grupos étnicos Murui-Muinane, Carijona, Yucuna, Cabiyarí, Inga, Siona, y Letuama, entre otras.',1),
  (1004,'PUERTO CORDOBA',194,'El Resguardo Puerto Cordoba se encuentra ubicado en el municipio de Riosucio Caldas, siendo el área actual de treinta y nueve mil setecientos hectáreas.',2),
  (1087,'CAÑAMOMO-LOMAPRIETA',5397,'El Resguardo Cañamomo y Lomaprieta se encuentra ubicado en el municipio de Supía Caldas, es considerado uno de los más antiguos de Colombia.Cañamomo y Lomaprieta es uno de los 6 resguardos indígenas legalmente constituidos en el departamento de Caldas. Cuenta con 32 comunidades.',2),
  (1150,'SAN LORENZO DE CALDONO',11839,'La empresa Resguardo Indigena San Lorenzo De Caldono tiene como domicilio principal de su actividad la dirección, BARRIO EL PROGRESO en la ciudad de CALDONO, CAUCA. Esta empresa fué constituida como ENTIDAD SIN ANIMO DE LUCRO y se dedica a Actividades de otras asociaciones n c p. ',3),
  (1080,'UNIDO UWA',4828,'El pueblo indígena U´wa - que traduce “gente inteligente que sabe hablar”- ocupa hoy gran parte del ecosistema natural de la Sierra Nevada del Cocuy, y el pie de monte de la Cordillera Oriental de los Andes, y las sabanas planas del departamento de Arauca. La extensión total del territorio propio del pueblo U´wa es de 352.422 hectáreas, repartidas en cinco departamentos del oriente colombiano, en los límites con Venezuela.',4),
  (1194,'PURACE',3657,'El resguardo de Puracé tiene aproximadamente 13.451,6 hectáreas de tierra. Esta cantidad incluye las 3.413 hectáreas de la zona de reserva natural Parque Nacional Puracé, las 600 hectáreas que están en concesión a Industrias Puracé S.A. ',3),
  (1431,'CUMBAL',12988,'El resguardo está conformado por su cuerpo de autoridades y vela por el bienvivir de  su población, para el caso de sur sostenible han realizado una alianza con el cuerpo de la defensa civil para trabajar en un proceso de restauración ecológica y la defensa del recurso hídrico en zonas priorizadas. ',5);
  