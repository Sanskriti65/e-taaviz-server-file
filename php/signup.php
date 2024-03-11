<?php
require_once('dataBaseDetails.php');
require_once('qr.php');

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    // Connect to the database
    $details=new DatabaseConfig();
    // Create connection
    $conn = new mysqli($details->getHostname(),$details->getUsername(), $details->getPassword(), $details->getDatabase());

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Prepare data for insertion
    $name = $_POST['name'];
    $mobile = $_POST['mobile'];
    $aadhar = $_POST['aadhar'];
    $abha_id = $_POST['abha_id'];

    // Prepare SQL query

    // INSERT INTO patient (patient_name, patient_mobile, aadhar, abha_id) VALUES ('Sanskriti shukla', '+91 9718752322', '631426597565', '12-8646-7425-3263');
    $sql = "INSERT INTO patient (patient_name, patient_mobile, aadhar, abha_id) VALUES ('$name', '$mobile', '$aadhar', '$abha_id')";

    // Execute SQL query
    if ($conn->query($sql) === TRUE) {
        finalqr($conn->insert_id);
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Close connection
    $conn->close();
}
