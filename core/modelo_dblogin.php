<?php

require_once('config.php');
abstract class DBAbstractModelUsuarioLogin {

	private static $db_host = DBHOST_ACCES;
	private static $db_user = DBACCES_USER;
	private static $db_pass = DBACCES_PASSWORD;
	protected $db_name = DBACCES; 
	
	protected $query;
	protected $rows = array();
	private $conn;
	
	private function open_connection() {

		//$this->conn = new mysqli(null,self::$db_user,self::$db_pass, 'db_padsot');
		$this->conn = new mysqli ('localhost','padsot', '123456789', 'db_padsot');
		// para q reconosca los caracteres especiales
		$this->conn->set_charset ( "utf8" );
		$this->rows = null;
		$this->rows = array ();

	}
	
	private function close_connection() {
		$this->conn->close(); //
	}
	protected function execute_single_query() {
		$this->open_connection();
		$this->conn->query($this->query);
		$last_id=$this->conn->insert_id;
		$this->close_connection();
		return $last_id;
	}
	
	protected function get_results_from_query() {
		$this->open_connection();
		$result = $this->conn->query($this->query);
		if($result!=null){//Si se encontro algo
			while ($this->rows[] = $result->fetch_assoc());
			$result->close();
		}
		$this->close_connection();
		if(count($this->rows)>0)
			array_pop($this->rows);
	}
}
?>	