<?php
/*
 * Usuario.php 1.0  04/08/2017
 * Copyright (c) 2017 DSIntec, Inc.
 * Juan Jose Cordova Zamorano
 * e:jcordova@dsinteg     t: @che_chino
 */

require_once('modelo_dbTipBack.php');

/**
 * Clase Area: clase que tiene todas las operaciones con Areas
 *
 * Metodos contenidos en esta clase:
 *
 * @copyright Derechos reservados DSInteg				  
 * @version 0.1 04/08/2017
 * @author Juan Jose Cordova Zamorano
 * @author 	e:jcordova@dsinteg     t: @che_chino
 * @link http://dsinteg.com	
 * 
 */

class Usuario extends DBAbstractModelClaps {
	private $idUsuario; 
	private $idEmpleado;
	private $idArea;     

	function __construct() {
			
	}

/**
* getUsuarioArea obtiene el idArea al que pertenece un usuario
*
* @return $idArea
* @param  $idUsuario clave de usuario
*/
	public function getUsuarioArea($idUsuario) 
	{
		$this->query = "
				SELECT 		U.idArea AreaUsuario
				FROM		Usuario U,  
				WHERE 		U.idUsuario=".$idUsuario.";";
		if (count($this->rows) > 0 ):				
			return $this->rows[0]['AreaUsuario'];
		else:
			return 0;
		endif;	
	}


}
?>