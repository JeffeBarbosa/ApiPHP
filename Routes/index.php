<?php
use function src\slimConfiguration;
use App\Controlers\RegisterControlers;
use App\Controlers\ServiceControler;
use App\Controlers\PosServiceControler;



$app = new \Slim\App(slimConfiguration());

$app->get('/registro', RegisterControlers::class . ':getRegister');
$app->post('/registro', RegisterControlers::class . ':insertRegister');
$app->put('/registro/{id}/{senha}', function ($request, $response, $args){
    $pdo = new PDO('mysql:host=us-cdbr-east-06.cleardb.net;dbname=heroku_1949f4ff8829ba1', 'bc6646643021b6', 'a18f36d5');
    $id = $args['id'];
    $senha = $args['senha'];
    $sql = "UPDATE cadastro SET senha = '$senha' where idcadastro = '$id'";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute();
});
$app->delete('/registro', \RegisterControlers::class . ':deleteRegister');
$app->post('/registro/profissional', RegisterControlers::class . ':insertRegisterProfissional');

$app->get('/registro/ultimo', RegisterControlers::class . ':getLastRegisters');
$app->get('/registro/profissional', RegisterControlers::class . ':getRegistroProfissional');

$app->get('/servico', ServiceControler::class . ':getService');
$app->post('/servico', ServiceControler::class . ':insertService');
$app->put('/servico', ServiceControler::class . ':updateService');
$app->delete('/servico', ServiceControler::class . ':deleteService');


$app->get('/posServico', PosServiceControler::class . ':getPosService');
$app->post('/posServico', PosServiceControler::class . ':insertPosService');
$app->put('/posServico', PosServiceControler::class . ':updatePosService');
$app->delete('/posServico', PosServiceControler::class . ':deletePosService');

$app->get('/login/{email}/{senha}', function ($request, $response, $args) {
    $pdo = new PDO('mysql:host=us-cdbr-east-06.cleardb.net;dbname=heroku_1949f4ff8829ba1', 'bc6646643021b6', 'a18f36d5');
    $email = $args['email'];
    $senha = $args['senha'];
    $sql = "SELECT * FROM cadastro WHERE  email = '$email' and senha = '$senha'";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $response->withJson($results);
});


$app->get('/historico/contratado/{id}', function ($request, $response, $args) {
    $pdo = new PDO('mysql:host=us-cdbr-east-06.cleardb.net;dbname=heroku_1949f4ff8829ba1', 'bc6646643021b6', 'a18f36d5');
    $id = $args['id'];
    $sql = "select c.nome as nomecontratado , s.data_servico as data , s.idservico as id from servicos s inner join cad_profissional cad ON s.id_contratado = cad.idprofissional inner join cadastro c on c.idcadastro = cad.cadastro_idcadastro where s.cadastro_idcadastro = '$id';";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $response->withJson($results);
});

$app->get('/avaliacao/{id}', function ($request, $response, $args){
    $pdo = new PDO('mysql:host=us-cdbr-east-06.cleardb.net;dbname=heroku_1949f4ff8829ba1', 'bc6646643021b6', 'a18f36d5');
    $id = $args['id'];
    $sql = "select pos.avaliacao from servicos s inner join pos_servico pos on pos.servicos_idservico = s.idservico where s.id_contratado = '$id';";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $response->withJson($results);

});

$app->get('/historico/{id}', function ($request, $response, $args){
    $pdo = new PDO('mysql:host=us-cdbr-east-06.cleardb.net;dbname=heroku_1949f4ff8829ba1', 'bc6646643021b6', 'a18f36d5');
    $id = $args['id'];
    $sql = "select s.idservico, s.data_servico, c.nome , ps.avaliacao from cadastro c inner join servicos s  on c.idcadastro = s.cadastro_idcadastro left join  pos_servico ps on s.idservico = ps.servicos_idservico where s.id_contratado = '$id';";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $response->withJson($results);

});

$app->get('/prestador/id/{id}', function ($request, $response, $args){
    $pdo = new PDO('mysql:host=us-cdbr-east-06.cleardb.net;dbname=heroku_1949f4ff8829ba1', 'bc6646643021b6', 'a18f36d5');
    $id = $args['id'];
    $sql = "select cp.idprofissional  from cad_profissional cp inner join cadastro c  on cp.cadastro_idcadastro = c.idcadastro  where c.idcadastro ='$id';";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $response->withJson($results);

});

$app->get('/validacao/avaliacao/{id}', function ($request, $response, $args){
    $pdo = new PDO('mysql:host=us-cdbr-east-06.cleardb.net;dbname=heroku_1949f4ff8829ba1', 'bc6646643021b6', 'a18f36d5');
    $id = $args['id'];
    $sql = "select pos.avaliacao as avaliacao from pos_servico pos inner join servicos s on s.idservico = pos.servicos_idservico where s.idservico = '$id';";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $response->withJson($results);

});

$app->get('/alteracao/{email}', function ($request, $response, $args){
    $pdo = new PDO('mysql:host=us-cdbr-east-06.cleardb.net;dbname=heroku_1949f4ff8829ba1', 'bc6646643021b6', 'a18f36d5');
    $email = $args['email'];
    $sql = "SELECT senha , idcadastro FROM cadastro WHERE email = '$email';";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $response->withJson($results);

});


$app->get('/registro/profissional/{id}', function ($request, $response, $args){
    $pdo = new PDO('mysql:host=us-cdbr-east-06.cleardb.net;dbname=heroku_1949f4ff8829ba1', 'bc6646643021b6', 'a18f36d5');
    $id = $args['id'];
    $sql = "SELECT P.idprofissional,C.tipo_cadastro, C.nome, C.telefone , P.form_profissao as Profissao, P.idprofissao from cadastro C inner join cad_profissional P on C.idcadastro = P.cadastro_idcadastro where C.tipo_cadastro = 2 and p.idprofissional != '$id';";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $response->withJson($results);

});

$app->run();
?>

