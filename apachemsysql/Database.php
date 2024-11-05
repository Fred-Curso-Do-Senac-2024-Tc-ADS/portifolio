<?php 

class Database {
    private $host;
    private $port;
    private $username;
    private $password;
    private $db;

    $private = conn;


    //responsavel por criar a conexao do databese
    public function __construct($host, $port, $username, $password, $db) {

        $this->port = $port;
        $this->host =$host;
        $this->username = $username;
        $this->password = $password;
        $this->db = $db;

    }
     // responsavel por criar a conexao com DB
    public function createConnection() {
        $connUrl = "mysql:host=$this->host;port=$this->dbname=$this->db";
        $this->conn = new PDO($connUrl, 
        $this->username,$this->password);

        return $this->conn;
    }
}

