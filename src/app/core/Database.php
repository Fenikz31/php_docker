<?php

class Database
{
    protected static $_connection = null;

    /**
     * Function that allows the connexion with the DB
     */
    public function __construct()
    {
        if (self::$_connection == null) {

            $host = "php_docker_tutorial_mysql_db";
            $dbname = "myonlinequiz";
            $user = "root";
            $password = "123456";
            // echo phpinfo();
            try {
                self::$_connection = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
                self::$_connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            } catch (PDOException $e) {
                echo 'Échec lors de la connexion : ' . $e->getMessage();
            }
        }
    }
}