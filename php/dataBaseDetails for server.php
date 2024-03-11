<?php

class DatabaseConfig {
    private $hostname;
    private $username;
    private $password;
    private $database;

    public function __construct() {
        $this->hostname = "localhost";
        $this->username = "id21969014_root";
        $this->password = "S@hil2003";
        $this->database = "id21969014_e_taaviz";
    }

    public function getHostname() {
        return $this->hostname;
    }

    public function getUsername() {
        return $this->username;
    }

    public function getPassword() {
        return $this->password;
    }

    public function getDatabase() {
        return $this->database;
    }
}

?>