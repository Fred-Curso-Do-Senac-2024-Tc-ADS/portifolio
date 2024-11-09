<?php
class Usuario {
    private $table = "usuarios"; // Nome da tabela de usuários

    private $conn;

    // Propriedades da tabela
    public $id;
    public $nome;
    public $email;
    public $data_criacao;

    // Construtor para conexão com o banco de dados
    public function __construct($conn = null) {
        $this->conn = $conn;
    }

    // Método para buscar todos os usuários
    public function findAll() {
        $query = "SELECT * FROM $this->table";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_CLASS, __CLASS__);

        return $stmt->fetchAll();
    }

    // Método para buscar um usuário por ID
    public function findById($id) {
        $query = "SELECT * FROM $this->table WHERE id = :id";
        
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":id", $id, PDO::PARAM_INT);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_CLASS, __CLASS__);

        return $stmt->fetch();
    }
}
?>
