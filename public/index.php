<?php 

ini_set('display_errors', 1);
ini_set('display_starup', 1);
error_reporting(E_ALL);

require_once '../vendor/autoload.php';

session_start();

$dotenv = Dotenv\Dotenv::create(__DIR__ . '/..');
$dotenv->load();

use Aura\Router\RouterContainer;
use Illuminate\Database\Capsule\Manager as Capsule;

$capsule = new Capsule;

$capsule->addConnection([
    'driver'    => 'mysql',
    'host'      => getenv('DB_HOST'),
    'database'  => getenv('DB_NAME'),
    'username'  => getenv('DB_USER'),
    'password'  => getenv('DB_PASS'),
    'charset'   => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix'    => '',
]);

// Make this Capsule instance available globally via static methods... (optional)
$capsule->setAsGlobal();

// Setup the Eloquent ORM... (optional; unless you've used setEventDispatcher())
$capsule->bootEloquent();

$request = Zend\Diactoros\ServerRequestFactory::fromGlobals(
  $_SERVER,
  $_GET,
  $_POST,
  $_COOKIE,
  $_FILES
);

$routerContainer = new RouterContainer();
$map = $routerContainer->getMap();

$map->get('index', '/TColaborativo/', [
  'controller' => 'App\Controllers\IndexController',
  'action' => 'getIndex',
]);
$map->get('login', '/horary/login', [
  'controller' => 'App\Controllers\LoginController',
  'action' => 'getLogin',
]);
$map->get('registry', '/horary/registry', [
  'controller' => 'App\Controllers\RegistryController',
  'action' => 'getRegistryController',
]);
$map->post('registrysaved', '/horary/saved', [
  'controller' => 'App\Controllers\RegistryController',
  'action' => 'postRegistryController',
]);
$map->post('auth', '/horary/auth', [
  'controller' => 'App\Controllers\LoginController',
  'action' => 'postAuthLogin',
]);
$map->get('logout', '/horary/logout', [
  'controller' => 'App\Controllers\LoginController',
  'action' => 'getLogout',
]);
$map->get('profile', '/horary/profile', [
  'controller' => 'App\Controllers\UserController',
  'action' => 'getProfile',
  'auth' => true,
]);
$map->get('actualizar', '/horary/addhorary', [
  'controller' => 'App\Controllers\AddHoraryController',
  'action' => 'getHorary',
  'auth' => true,
]);



$matcher = $routerContainer->getMatcher();
$route = $matcher->match($request);

if(!$route) {
  echo "No route";
} else {
  $handlerData = $route->handler;
  $controllerName = $handlerData['controller'];
  $actionName = $handlerData['action'];

  
  $needsAuth = $handlerData['auth'] ?? false;
  $sessionUserId = $_SESSION['userId'] ?? null;
  if($needsAuth && !$sessionUserId) {
    echo "<p style='font-size:24px; padding:10px;'>I am sorry :( . You have to <a href='/horary/login'>log in</a> to access this page.</p>";
    die;
  }

  $controller = new $controllerName;
  
  $response = $controller->$actionName($request);

  foreach($response->getHeaders() as $name => $values) {
    foreach($values as $value) {
      header(sprintf('%s: %s', $name, $value), false);
    }
  }
  http_response_code($response->getStatusCode());
  echo $response->getBody();
}

// var_dump($request->getUri()->getPath());


