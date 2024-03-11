<?php

class PatientDetails {
    private $hostname;
    private $username;
    private $password;
    private $database;

    // $name = $_POST['name'];
    // $mobile = $_POST['mobile'];
    // $aadhar = $_POST['aadhar'];
    // $abha_id = $_POST['abha_id'];

    public function __construct() {
        $this->hostname = "localhost:3310";
        $this->username = "root";
        $this->password = "";
        $this->database = "e_taaviz";
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