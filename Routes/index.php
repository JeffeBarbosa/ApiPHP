<?php
use function src\slimConfiguration;
use App\Controlers\RegisterControlers;
use App\Controlers\ServiceControler;
use App\Controlers\PosServiceControler;



$app = new \Slim\App(slimConfiguration());


$app->get('/registro', RegisterControlers::class . ':getRegister');
$app->post('/registro', RegisterControlers::class . ':insertRegister');
$app->put('/registro', RegisterControlers::class . ':updateRegister');
$app->delete('/registro', RegisterControlers::class . ':deleteRegister');
$app->post('/registro/profissional', RegisterControlers::class . ':insertRegisterProfissional');

$app->get('/registro/ultimo', RegisterControlers::class . ':getLastRegisters');

$app->get('/servico', ServiceControler::class . ':getService');
$app->post('/servico', ServiceControler::class . ':insertService');
$app->put('/servico', ServiceControler::class . ':updateService');
$app->delete('/servico', ServiceControler::class . ':deleteService');

$app->get('/posServico', PosServiceControler::class . ':getPosService');
$app->post('/posServico', PosServiceControler::class . ':insertPosService');
$app->put('/posServico', PosServiceControler::class . ':updatePosService');
$app->delete('/posServico', PosServiceControler::class . ':deletePosService');



$app->get('/login/{email}/{senha}', function ($request, $response, $args) {
    $pdo = new PDO('mysql:host=localhost;dbname=maonaroda', 'root', '');
    $email = $args['email'];
    $senha = $args['senha'];
    $sql = "SELECT * FROM cadastro WHERE  email = '$email' and senha = '$senha'";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $response->withJson($results);
});

$app->run();
?>

