<?php
require 'environment.php';

global $config;
global $db;

$config = array();
if(ENVIRONMENT == 'development') {
	define("BASE_URL", "http://localhost/pitua/");
	$config['dbname'] = 'loja_v';
	$config['host'] = 'localhost';
	$config['dbuser'] = 'root';
	$config['dbpass'] = '';
} else {
	define("BASE_URL", "http://localhost/pitua/");
	$config['dbname'] = 'loja_v';
	$config['host'] = 'localhost';
	$config['dbuser'] = 'root';
	$config['dbpass'] = '';
}
$config['cep_origin'] = '29120580';

$config['mp_appid'] = '1655862472623204';
 $config['mp_key'] = 'u4KmYUWj5fISUZoqIKfKWkfu90SC5COn';

$db = new PDO("mysql:dbname=".$config['dbname'].";host=".$config['host'], $config['dbuser'], $config['dbpass']);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


?>



