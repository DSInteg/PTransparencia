<?php
/**
 * Copyright (c) 2017 DSIntec, Inc.
 * modelo_documentoarticulofraccion.php 
 */

require_once('modelo_dbTipBack.php');

/**
 * Clase Documento: hace un modelo a la tabla "DocumentoArticuloFraccion"
 *
 * La tabla Documento contiene la relacion de un documento con el 
 * Articulo y fracción a la que corresponde, puede existir mas de un documento por Articulo Fracción
 *  | DocumentoArticuloFraccion
 *	| idDocumentoArticuloFraccion
 *	| int idDocumento
 *	| idArticuloFraccion
 *
 * @copyright Derechos reservados DSInteg				  
 * @version 1.0 02/08/2017
 * @author Juan Jose Cordova Zamorano
 * @author 	e:jcordova@dsinteg     t: @che_chino
 * @link http://dsinteg.com	
 * 
 */

class DocumentoArticuloFraccion extends DBAbstractModelTipBack {
	private $idDocumentoArticuloFraccion;
	private $idDocumento; //
	private $idArticuloFraccion;	
 

	function __construct() {
	}	
	


/**
* obtenerDocumentoArticuloFraccionFromArea obtiene listado de documenos 
*
* Apartir de idArea se obtiene el listado de todos los documentos a los que está
* obligado el area reportar
*
* @return boolean true si la direccion es correcta
* @param string $email direccion de correo
*/

	public function obtenerDocumentoArticuloFraccionFromArea($idArea){
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
}
?>