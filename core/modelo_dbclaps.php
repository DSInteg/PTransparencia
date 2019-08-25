<?php

/*
 * modelo_dbclaps.php 1.0  02/08/2017
 * Copyright (c) 2017 DSIntec, Inc.
 * Juan Jose Cordova Zamorano
 * e:jcordova@dsinteg     t: @che_chino
 */



require_once('configclaps.php');

/**
 * Clase DBAbstractModelClaps: La clase hace conexiÃ³ a la base de datos
 *			Donde estÃ¡n contenidos los datos del sistema CLAP	
 * @version 1.0 27/12/2013
 * @author Juan Jose Cordova Zamorano  		
 * 
 */
abstract class DBAbstractModelClaps {

	private  $db_host = DBHOST_CLAAPSACCES;
	private  $db_user = DBACCES_CLAAPSUSER;
	private  $db_pass = DBACCES_CLAAPSPASSWORD;
	private  $db_name = DBACCES_CLAAPS; 
	
	protected $query;
	protected $rows;// = array();
	private $conn;
	
	private function open_connection() {
		//$this->conn = new mysqli(self::$db_host, self::$db_user,
		//$this->conn = new mysqli($this->db_host, $this->db_user,$this->db_pass, $this->db_name);
		$this->conn = new mysqli(null,$this->db_user,$this->db_pass, $this->db_name,null,'/cloudsql/crucial-bonito-58:inicio');
		//self::$db_pass, $this->db_name);
		$this->rows=null;
		$this->rows=array();
	}
	
	private function close_connection() {
		$this->conn->close();
	}
	
	protected function execute_single_query() {
		$this->open_connection();
		$this->conn->query($this->query);
		$this->close_connection();
	}
	
	protected function get_results_from_query() {
		$this->open_connection();
		$result = $this->conn->query($this->query);
		//echo "<p>".$this->query;
		if($result!=null){//Si hay algo
			while ($this->rows[] = $result->fetch_assoc());
			$result->close();
			$this->close_connection();
			array_pop($this->rows);
		}
	}
}
?>