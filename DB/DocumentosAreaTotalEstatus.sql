CREATE VIEW `DocumentosAreaTotalEstatus` AS
select D.idArea as idArea,D.idDocumento as DidDocumento, concat(A.nomenclaturaArticulo,' Frac. ',AF.nomenclaturaFraccion) as AFnomenclaturaFraccion, AF.nombreFraccion as AFnombreFraccion,
						 D.nombreDocumento as DnombreDocumento, SD.siteURL as SDsiteURL,
							 SD.idSubeDocumento as SDidSubeDocumento, SD.idUsuario as SDidUsuario, SD.fecha as SDfecha, 
							 AD.idApruebaDocumento as ADidApruebaDocumento, AD.idSubeDocumento as ADidSubeDocumento,
							 PD.idPublicaDocumento as PDidPublicaDocumento, 
							 AD.idUsuario as ADidUsuario,AD.fecha as ADfecha
						from 	Documento D, EstatusDocumento ED, SubeDocumento SD,
								ApruebaDocumento AD, PublicaDocumento PD,
								ArticuloFraccion AF, Articulo A, Usuario U, Empleado E   
						where  	D.idArticuloFraccion=AF.idArticuloFraccion
						and 	AF.idArticulo=A.idArticulo
						and 	ED.idDocumento=D.idDocumento
						and 	ED.idSubeDocumento=SD.idSubeDocumento
						and 	ED.idApruebaDocumento=AD.idApruebaDocumento
						and 	ED.idPublicaDocumento=PD.idPublicaDocumento
						and 	U.idUsuario=SD.idUsuario
						and     U.idEmpleado=E.idEmpleado 
						order by DidDocumento asc;