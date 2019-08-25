<?php
/*
 * modelo_usuario.php 1.0  27/12/2013
 * Copyright (c) 2013 DSIntec, Inc.
 */

require_once('modelo_dblogin.php');

/**
 * Clase Usuario: hace un modelo a la tabla "usuario"
 * 				  las propiedades corresponden a los
 *				  campos de la tabla, ademas accede a 
 * @version 1.0 03/02/2014
 * @author Juan Jose Cordova Zamorano  		
 * 
 */

class CargaHTMLTablet extends DBAbstractModelUsuarioLogin {

	private $tableta;
	private $hojatableta;
	private $gracias;
	private $bienvenidaTableta;
	private $instrucciones;
	private $hojaformulario;
	private $hojaAuto;
	private $csscarrusel;

	function __construct() {
		//$this->usuariosesion = $usuariosesion;
		//$this->$cveusuario = $cveusuario;				
	}	
	
	public function leeHTMLTablet(){
		$this->query = "
				SELECT 		tableta,hojatableta,gracias,bienvenidaTableta,instrucciones,hojaformulario,hojaAuto,csscarrusel 
				FROM		HTML
				";	 
			
		$this->get_results_from_query();
		//if(mysqli_num_rows($result)>0):
		if (count($this->rows) > 0 ):
			foreach ($this->rows[0] as $propiedad=>$valor):
				$this->$propiedad = $valor;
			endforeach;
			return true;
		else:
			return false;
		endif;		
	}

	public function obtenerHTMLTablet($html){
		$this->query = "
				SELECT 		".$html."  
				FROM		HTML
				WHERE 		idHTML=1
				";	 
			
		$this->get_results_from_query();
		//if(mysqli_num_rows($result)>0):
		if (count($this->rows) > 0 ):
			return $this->rows[0][$html];
		else:
			return false;
		endif;		
	}


	public function obtenerHTMLPregunta($html){
		$this->query = "
				SELECT 		".$html."  
				FROM		HTMLCampo
				WHERE 		idHTMLCampo=1
				";	 
			
		$this->get_results_from_query();
		//if(mysqli_num_rows($result)>0):
		if (count($this->rows) > 0 ):
			return $this->rows[0][$html];
		else:
			return false;
		endif;		
	}




	public function obtenerHTMLTabletRegistro2($html){
		$this->query = "
				SELECT 		".$html."  
				FROM		HTML 
				WHERE 		idHTML=2
				";	 
			
		$this->get_results_from_query();
		//if(mysqli_num_rows($result)>0):
		if (count($this->rows) > 0 ):
			return $this->rows[0][$html];
		else:
			return false;
		endif;		
	}

	public function gettableta(){
		return $this->tableta;
	}

	public function gethojatableta(){
		return $this->hojatableta;
	}
	public function getgracias(){
		return $this->gracias;
	}
	public function getbienvenidaTableta(){
		return $this->bienvenidaTableta;
	}
	public function getinstrucciones(){
		return $this->instrucciones;
	}
	public function gethojaformulario(){
		return $this->hojaformulario;
	}
	public function gethojaAuto(){
		return $this->hojaAuto;
	}	
	public function getcsscarrusel(){
		return $this->csscarrusel;
	}


}
?>