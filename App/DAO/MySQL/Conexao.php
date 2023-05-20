<?php 

namespace App\DAO\MySQL;

abstract class Conexao
{
    
    protected $pdo; 


    public function __construct()
    {
        $host = 'us-cdbr-east-06.cleardb.net';
        $port = '3306';
        $user = 'b413b820b4ff89';
        $pass = '3086ad99';
        $dbname = 'heroku_32741d351a800fa';
   
        $dsn = "mysql:host={$host};dbname={$dbname};port={$port}";

        $this->pdo = new \PDO($dsn, $user, $pass);
        $this->pdo->setAttribute(
            \PDO::ATTR_ERRMODE,
            \PDO::ERRMODE_EXCEPTION
        );
    }
}

