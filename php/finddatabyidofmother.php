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

    $sql = "SELECT * FROM mother_child_protection WHERE id = $id";
    $result = $conn->query($sql);

    //map which stores data from sql query
    $data = [];
    // loop which help to check data is present if present help to store data in $data(map variable)
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            // echo $row;
            $data = [
                "id"=> $row["id"],
                'mother_name' => $row['mother_name'],
                'mobile_number' => $row['mobile_number'],
                'last_menstrual_period'=> $row['last_menstrual_period'],
            ];
        }
    } else {
        die("not working");
    }

    session_start();
    $_SESSION['id'] = $data['id'];
    // echo $_SESSION['id'];
    $_SESSION['mother_name'] = $data['mother_name'];
    $_SESSION['mobile_number'] = $data['mobile_number'];
    $_SESSION['last_menstrual_period'] = $data['last_menstrual_period'];
    
    return $data;
}
?>