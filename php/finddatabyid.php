<?php
require_once('dataBaseDetails.php');
function findDataById($id) {
    // Connect to the database
    $details=new DatabaseConfig();
    // Create connection
    $conn = new mysqli($details->getHostname(),$details->getUsername(), $details->getPassword(), $details->getDatabase());

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM patient WHERE patient_id = $id";
    $result = $conn->query($sql);
    //map which stores data from sql query
    $data = [];
    // loop which help to check data is present if present help to store data in $data(map variable)
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $data = [
                'patient_id' => $row["patient_id"],
                'patient_name' => $row["patient_name"],
                'patient_mobile' => $row["patient_mobile"],
                'aadhar' => $row["aadhar"],
                'abha_id' => $row["abha_id"],
                'created_at' => $row["created_at"]
            ];
        }
    } else {
        die("");
    }
    
    session_start();
    $_SESSION['patient_id'] = $data['patient_id'];
    $_SESSION['patient_name'] = $data["patient_name"];
    $_SESSION['patient_mobile'] = $data["patient_mobile"];
    $_SESSION['aadhar'] = $data["aadhar"];
    $_SESSION['abha_id'] = $data["abha_id"];
    $_SESSION['created_at'] = $data["created_at"];
    
    return $data;
}
?>