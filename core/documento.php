<?php
/**
 * Copyright (c) 2017 DSIntec, Inc.
 * modelo_documentoarticulofraccion.php 
 */

require_once('modelo_dbTipBack.php');

/**
 * Clase Documento: clase principal que tiene todas las operaciones con documentos
 *
 * Documento hace todas las operaciones con documento
 *
 * @copyright Derechos reservados DSInteg				  
 * @version 1.0 02/08/2017
 * @author Juan Jose Cordova Zamorano
 * @author 	e:jcordova@dsinteg     t: @che_chino
 * @link http://dsinteg.com	
 * 
 */

class Documento extends DBAbstractModelTipBack {
	private $idDocumentoArticuloFraccion;
	private $idDocumento; //
	private $idArticuloFraccion;	
 


	function __construct() {
	}	
	


/**
* getDocumentosAreaTotalEstatus obtiene listado de todos los documenos del area
*
* A partir de idArea se obtiene el listado de todos los documentos que el area
* ha subido, tiene publicado o no ha subido tal como se publicará en el portal de
* administración.
*
* @return arreglo de (id)
* @param $idArea clave del area
*/
	public function getDocumentosAreaTotalEstatus($idArea){
		$this->query="select DAF.idDocumentoArticuloFraccion, A.nomenclaturaArticulo, A.nombreArticulo,
							 AF.nomenclaturaFraccion, AF.nombreFraccion, D.nombreDocumento, SD.siteURL,
							 SD.idUsuario, SD.fecha, U.idUsuario, E.nombre, E.paterno, E.materno 

						from DocumentoArea DA, DocumentoArticuloFraccion DAF, 
								Documento D, EstatusDocumento ED, SubeDocumento SD,
								ApruebaDocumento AD, PublicaDocumento PD,
								ArticuloFraccion AF, Articulo, Usuario U, Empleado E   
						where   DA.idArea = $idArea
						and 	DA.idDocumentoArticuloFraccion=DAF.idDocumentoArticuloFraccion
						and 	DAF.idArticuloFraccion=AF.idArticuloFraccion
						and 	AF.idArticulo=A.idArticulo
						and 	DAF.idDocumento=D.idDocumento
						and 	ED.idDocumentoArticuloFraccion=DAF.idDocumentoArticuloFraccion
						and 	ED.idSubeDocumento=SD.idSubeDocumento
						and 	ED.idApruebaDocumento=AP.idApruebaDocumento
						and 	ED.idPublicaDocumento=PD.idPublicaDocumento
						and 	U.idUsuario=SD.idUsuario
						and     U.idEmpleado=E.idEmpleado";
		$this->get_results_from_query();
			if (count($this->rows) > 0 ):
				$resultado=array(	"idExperiencia" => $this->rows[0]["idExperiencia"],
									"descripcion" => $this->rows[0]["descripcion"]
										);
				return $resultado;
			else:
				return false;
			endif;
	}



/**
* getDocumentosSubidosNoAceptadosNoPublicados obtiene listado de todos los documenos del area
*
* A partir de idArea se obtiene el listado de todos los documentos que el area
* ha subido, tiene publicado o no ha subido tal como se publicará en el portal de
* administración.
*
* @return arreglo 
* @param $idArea clave del area
*/
	public function getDocumentosSubidosNoAceptadosNoPublicados($idArea){
		$this->query="select DAF.idDocumentoArticuloFraccion, D.idDocumento, A.nomenclaturaArticulo, A.nombreArticulo,
							 AF.nomenclaturaFraccion, AF.nombreFraccion, D.nombreDocumento, idSubeDocumento, 

						from DocumentoArea DA, DocumentoArticuloFraccion DAF, 
								Documento D, EstatusDocumento ED, SubeDocumento SD,
								ApruebaDocumento AD, PublicaDocumento PD,
								ArticuloFraccion AF, Articulo  
						where   DA.idArea = $idArea
						and 	DA.idDocumentoArticuloFraccion=DAF.idDocumentoArticuloFraccion
						and 	DAF.idArticuloFraccion=AF.idArticuloFraccion
						and 	AF.idArticulo=A.idArticulo
						and 	DAF.idDocumento=D.idDocumento
						and 	ED.idDocumentoArticuloFraccion=DAF.idDocumentoArticuloFraccion
						and 	ED.idSubeDocumento=SD.idSubeDocumento
						and 	ED.idSubeDocumento<>0
						and     ED.idApruebaDocumento=0
						and     ED.idPublicaDocumento=0";
		$this->get_results_from_query();
			if (count($this->rows) > 0 ):
				$resultado=array(	"idExperiencia" => $this->rows[0]["idExperiencia"],
									"descripcion" => $this->rows[0]["descripcion"]
										);
				return $resultado;
			else:
				return false;
			endif;
	}

/**
* getDocumentoAreaObligado obtiene listado de documenos 
*
* Apartir de idArea se obtiene el listado de todos los documentos a los que está
* obligado el area reportar
*
* @return arreglo de (id)
* @param $idArea clave del area
*/

	public function getDocumentoAreaObligado($idArea){
		$this->query="select h.idHistorialQR,h.idExperiencia, e.descripcion
						from HistorialConsumidor h, Experiencia e
						where   h.idExperiencia = e.idExperiencia
						and		h.idHistorialQR=$idHistorialQR";

		$this->get_results_from_query();

			if (count($this->rows) > 0 ):
				
				

				$resultado=array(	"idExperiencia" => $this->rows[0]["idExperiencia"],
									"descripcion" => $this->rows[0]["descripcion"]
										);
				

				return $resultado;

			else:
				return false;
			endif;
	}	
/**
* getDocumentosArea obtiene listado de todos los documenos del area
*
* Apartir de idArea se obtiene el listado de todos los documentos que el area
* ha subido, tiene publicado o no ha subido
*
* @return arreglo de (id)
* @param $idArea clave del area
*/

	public function getDocumentosSubidosArea($idArea){
		$this->query="select h.idHistorialQR,h.idExperiencia, e.descripcion
						from DocumentoArea DA, DocumentoArticuloFraccion DAF, Documento D, 
						where   h.idExperiencia = e.idExperiencia
						and		h.idHistorialQR=$idHistorialQR";

		$this->get_results_from_query();

			if (count($this->rows) > 0 ):
				
				

				$resultado=array(	"idExperiencia" => $this->rows[0]["idExperiencia"],
									"descripcion" => $this->rows[0]["descripcion"]
										);
				

				return $resultado;

			else:
				return false;
			endif;
	}	
/**
* getDocumentosArea obtiene listado de todos los documenos del area
*
* Apartir de idArea se obtiene el listado de todos los documentos que el area
* ha subido, tiene publicado o no ha subido
*
* @return arreglo de (id)
* @param $idArea clave del area
*/

	public function getDocumentosAreaAprobados($idArea){
		$this->query="select h.idHistorialQR,h.idExperiencia, e.descripcion
						from DocumentoArea DA, DocumentoArticuloFraccion DAF, Documento D, 
						where   h.idExperiencia = e.idExperiencia
						and		h.idHistorialQR=$idHistorialQR";

		$this->get_results_from_query();

			if (count($this->rows) > 0 ):
				
				

				$resultado=array(	"idExperiencia" => $this->rows[0]["idExperiencia"],
									"descripcion" => $this->rows[0]["descripcion"]
										);
				

				return $resultado;

			else:
				return false;
			endif;
	}

/**
* getDocumentosArea obtiene listado de todos los documenos del area
*
* Apartir de idArea se obtiene el listado de todos los documentos que el area
* ha subido, tiene publicado o no ha subido
*
* @return arreglo de (id)
* @param $idArea clave del area
*/
	public function getDocumentosAreaTotalEstatus($idArea){
		$this->query="select h.idHistorialQR,h.idExperiencia, e.descripcion
						from DocumentoArea DA, DocumentoArticuloFraccion DAF, Documento D, 
						where   h.idExperiencia = e.idExperiencia
						and		h.idHistorialQR=$idHistorialQR";

		$this->get_results_from_query();

			if (count($this->rows) > 0 ):
				
				

				$resultado=array(	"idExperiencia" => $this->rows[0]["idExperiencia"],
									"descripcion" => $this->rows[0]["descripcion"]
										);
				

				return $resultado;

			else:
				return false;
			endif;
	}
}
?>	