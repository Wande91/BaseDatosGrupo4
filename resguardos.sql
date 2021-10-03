CREATE TABLE resguardo(
	res_id INTEGER NOT NULL,
	res_nombre VARCHAR(60) NOT NULL,
	res_poblacion INTEGER NOT NULL,
	res_texto TEXT,
	fk_aso_id INTEGER NOT NULL,
	fk_mun_id INTEGER NOT NULL,
	PRIMARY KEY(res_id),
	FOREIGN KEY(fk_aso_id) REFERENCES asociacion_autoridad(aso_id),
	FOREIGN KEY(fk_mun_id) REFERENCES municipio(mun_id)
);

INSERT INTO resguardo (res_id,res_nombre,res_poblacion,res_texto,fk_aso_id,fk_mun_id) VALUES	
	(1002,'PREDIO PUTUMAYO',1315,'cubre una extensión territorial de 5.869.447 en la que habitan comunidades pertenecientes a varios grupos étnicos y lingüísticos como Witoto, Mirañas, Boras, Andoques, Ocainas, Muinanes, Nonuyas, además de estos también se encuentran poblaciones pertenecientes a los grupos étnicos Murui-Muinane, Carijona, Yucuna, Cabiyarí, Inga, Siona, y Letuama, entre otras.',1,1),
	(1086,'CAÑAMOMO-LOMAPRIETA',7288,'El Resguardo Cañamomo y Lomaprieta se encuentra ubicado en los municipios de Riosucio y Supía Caldas, es considerado uno de los más antiguos de Colombia.Cañamomo y Lomaprieta es uno de los 6 resguardos indígenas legalmente constituidos en el departamento de Caldas. Cuenta con 32 comunidades.',2,3),
	(1087,'CAÑAMOMO-LOMAPRIETA',5397,'El Resguardo Cañamomo y Lomaprieta se encuentra ubicado en los municipios de Riosucio y Supía Caldas, es considerado uno de los más antiguos de Colombia.Cañamomo y Lomaprieta es uno de los 6 resguardos indígenas legalmente constituidos en el departamento de Caldas. Cuenta con 32 comunidades.',2,4),
	(1150,'SAN LORENZO DE CALDONO',11839,'La empresa Resguardo Indigena San Lorenzo De Caldono tiene como domicilio principal de su actividad la dirección, BARRIO EL PROGRESO en la ciudad de CALDONO, CAUCA. Esta empresa fué constituida como ENTIDAD SIN ANIMO DE LUCRO y se dedica a Actividades de otras asociaciones n c p. ',3,5),
	(1080,'UNIDO UWA',4828,'El pueblo indígena U´wa - que traduce “gente inteligente que sabe hablar”- ocupa hoy gran parte del ecosistema natural de la Sierra Nevada del Cocuy, y el pie de monte de la Cordillera Oriental de los Andes, y las sabanas planas del departamento de Arauca. La extensión total del territorio propio del pueblo U´wa es de 352.422 hectáreas, repartidas en cinco departamentos del oriente colombiano, en los límites con Venezuela.',4,2),
	(1194,'PURACE',3657,'El resguardo de Puracé tiene aproximadamente 13.451,6 hectáreas de tierra. Esta cantidad incluye las 3.413 hectáreas de la zona de reserva natural Parque Nacional Puracé, las 600 hectáreas que están en concesión a Industrias Puracé S.A. ',3,6),
	(1431,'CUMBAL',12988,'El resguardo está conformado por su cuerpo de autoridades y vela por el bienvivir de  su población, para el caso de sur sostenible han realizado una alianza con el cuerpo de la defensa civil para trabajar en un proceso de restauración ecológica y la defensa del recurso hídrico en zonas priorizadas. ',5,8),
	(1468,'GUACHAVEZ',4820,'El resguardo de Guachavez está compuesto aproximadamente por 7.000 habitantes repartidos en 2.400 familias. Cobija territorio de 33 veredas en todo el municipio de Santacruz; las más pobladas están ubicadas en zonas altas de la montaña.',5,10),
	(1784,'KANKUAMO',8292,'El resguardo indígena Kankuamo es un territorio perteneciente a la etnia kankuama ubicado en el norte del municipio de Valledupar, Colombia. Comprende los territorios de las 12 comunidades que lo integran Guatapurí, Chemesquemena, Las Flores, Murillo, Los Haticos, Río Seco, Pontón, La Mina, Rancho de la Golla, Ramalito y su capital Atánquez',6,7),
	(1834,'SELVA DE MATAVEN',17829,'El  resguardo  Indígena unido de Selva Matavén se constituyó legalmente, mediante la resolución No.037 del 22 de julio de 2003 expedido por INCORA hoy INCODER. El resguardo Selva Matavén es el más grande del Municipio de Cumaribo, está ubicado en una zona estratégica,  con  una  caracterización  específica  en  lo  ambiental  y  social,  porque posee  una  riqueza  de  diversidad  cultural  y  de  biodiversidad. ',7,9);
