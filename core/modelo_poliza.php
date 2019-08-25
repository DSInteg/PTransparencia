<?php
/*
 * modelo_poliza.php 1.0  02/08/2017
 * Copyright (c) 2017 DSIntec, Inc.
 * Juan Jose Cordova Zamorano
 * e:jcordova@dsinteg     t: @che_chino
 */

require_once('modelo_dbclaps.php');

/**
 * Clase Poliza: hace un modelo a la tabla "poliza"
 * 				  las propiedades corresponden a los
 *				  campos de la tabla, ademas accede a la
 *				  tabla polizacliente	
 * @version 1.0 03/02/2014
 * @author Juan Jose Cordova Zamorano  		
 * 
 */

class Poliza extends DBAbstractModelClaps {
	private $idpoliza; 
	private $clavepoliza;
	private $fechaini;
	private $fechafin;
	private $estatus;
	private $idgiro;     

	function __construct($idpoliza) {
		$this->estatus = FALSE;
		$this->idpoliza = $idpoliza;
		$this->idlocalidad=0;
		$this->fecha=date("Y-m-d");				
	}
	/*
	function __construct() {		
	}
*/
	/*	mÃ©todo que da valores a las propiedades idpoliza, idlocalidad, fechaini, fechafin, idfusiontable	 */
	public function leePoliza() 
	{
		$this->query = "
				SELECT 		p.idpoliza, p.clavepoliza, p.fechaini, p.fechafin, p.idgiro
				FROM		poliza p  
				WHERE 		p.idpoliza=".strip_tags($this->idpoliza).";";
		//echo "string".$this->query;		
		$this->get_results_from_query();
		if(sizeof($this->rows) > 0):
			foreach ($this->rows[0] as $propiedad=>$valor):
				$this->$propiedad = $valor;
			endforeach;
		endif;
	}

	public function getEstatus(){
		//$this -> vigenciaPoliza($this->idpoliza)>0
		//echo "fecha fin".$this->fechafin." fecha ini".$this->fecha;
		if(strtotime($this->fechafin)>strtotime($this->fecha)):
			$estatus=TRUE;
		else:
			$estatus=FALSE;
		endif;
		return $estatus;
	}
	
	//regresa el nÃºmero de dÃ­as que faltan en la vigencia de la poliza
	public function vigenciaPoliza($idpoliza){
		$vigencia=strtotime($this->fechafin)-strtotime($this->fecha);
		//echo $vigencia;
		return $vigencia;
	}

	
	//verifica la existencia de la poliza a partir de ingresar la clave de usuarios
	public function existePolizaIdCliente($idcliente) 
	{
		$this->query = "
				SELECT 		* 
				FROM		poliza p, polizacliente up  
				WHERE 		up.idusuario='".strip_tags($idcliente)."' 
				AND    		p.idpoliza=up.idpoliza;";
				
		$this->get_results_from_query();
		if(mysqli_num_rows($result)>0):
			return true;
		else:
			return false;
		endif;
	}	

	public function existePolizaUsuario($idcliente){
		$this->query = "
				SELECT 		* 
				FROM		polizacliente
				WHERE 		idcliente='".$idcliente."';";
		$this->get_results_from_query();
		//if(mysqli_num_rows($result)>0):
		if (count($this->rows) > 0 ):
			return true;
		else:
			return false;
		endif;
	}

	public function creaNuevaPoliza($clavepoliza,$fechaini,$fechafin,$idgiro){
			$this->query = "
			INSERT INTO poliza (idpoliza, clavepoliza, fechaini, fechafin, estatus, idgiro)
			VALUES (NULL, 
					".$clavepoliza.", 
					'".$fechaini."',
					'".$fechafin."',
					'0',
					".$idgiro.");";		// 0 = En proceso , 1 = Registrado , 2 = Suspendido
			$this->execute_single_query();

			$this->query = "
							SELECT MAX(idpoliza) as MiPoliza FROM poliza;";
			
			$this->get_results_from_query();
			return $this->rows;
	}

	public function insertaPolizaCliente($idpoliza, $idcliente){
		$this->query = "
			INSERT INTO polizacliente (idpolizacliente, idpoliza, idcliente)
			VALUES (NULL, 
					".$idpoliza.", 
					".$idcliente.");";

			$this->execute_single_query();
	}

	public function getFechaIni(){
		return $this ->fechaini;
	}
	public function getFechaFin(){
		return $this ->fechafin;
	}

	public function getTipoPoliza(){
		//echo "clavepoliza: ".$this -> clavepoliza;
		return $this ->clavepoliza;
	}

	public function getIdpoliza(){
		//echo "clavepoliza: ".$this -> clavepoliza;
		return $this ->idpoliza;
	}

	public function getGiro(){
		//echo "clavepoliza: ".$this -> clavepoliza;
		return $this ->idgiro;
	}

	public function actualizarTipoPoliza($idpoliza,$tipo,$estatus){
		$this->query = "
				UPDATE 		poliza
				SET 		clavepoliza='".$tipo."',
							estatus='".$estatus."'
				WHERE 		idpoliza=".$idpoliza.";";	

		$this->execute_single_query();		
	}

	public function actualizarDatosPoliza($idpoliza,$inicio,$fin,$estatus){
		$this->query = "
				UPDATE 		poliza
				SET 		clavepoliza='".$tipo."',
							estatus='".$estatus."',
							fechaini='".$inicio."',
							fechafin='".$fin."',
				WHERE 		idpoliza=".$idpoliza.";";	

		$this->execute_single_query();		
	}

	public function actualizarGiro($idpoliza,$idgiro){
		$this->query = "
				UPDATE 		poliza
				SET 		idgiro='".$idgiro."'
				WHERE 		idpoliza=".$idpoliza.";";	

		$this->execute_single_query();		
	}


}
?>