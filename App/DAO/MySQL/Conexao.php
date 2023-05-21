<?php 



namespace App\DAO\MySQL;



abstract class Conexao

{

    

    protected $pdo; 





    public function __construct()

    {

        $host = 'us-cdbr-east-06.cleardb.net';

        $port = '3306';

        $user = 'bc6646643021b6';

        $pass = 'a18f36d5';

        $dbname = 'heroku_1949f4ff8829ba1';

   

        $dsn = "mysql:host={$host};dbname={$dbname};port={$port}";



        $this->pdo = new \PDO($dsn, $user, $pass);

        $this->pdo->setAttribute(

            \PDO::ATTR_ERRMODE,

            \PDO::ERRMODE_EXCEPTION

        );

    }

}



