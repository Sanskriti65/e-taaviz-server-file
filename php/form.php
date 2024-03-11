<?php

require_once(__DIR__.'/dataBaseDetails.php');
require_once(__DIR__.'/qr.php');

// Connect to the database
$details=new DatabaseConfig();
// Create connection
$conn = new mysqli($details->getHostname(),$details->getUsername(), $details->getPassword(), $details->getDatabase());

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Processing form data and inserting into database
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Family Identification Section
    $mother_name = $_POST['mother_name'];
    $dob = $_POST['dob'];
    $father_name = $_POST['father_name'];
    $address = $_POST['address'];
    $mobile_number = $_POST['mobile_number'];
    $husband_mobile_number = $_POST['husband_mobile_number'];
    $mcts_rch_id = $_POST['mcts_rch_id'];

    // Pregnancy Record Section
    $last_menstrual_period = $_POST['last_menstrual_period'];
    $expected_delivery_date = "0000-00-00";
    $number_of_pregnancies = $_POST['number_of_pregnancies'];
    $last_delivery_conducted_at = $_POST['last_delivery_conducted_at'];
    $current_delivery = $_POST['current_delivery'];

    // Birth Record Section
    $child_name = $_POST['child_name'];
    $date_of_birth = $_POST['date_of_birth'];
    $birth_weight = $_POST['birth_weight'];
    $gender = $_POST['gender'];
    $birth_registration_number = $_POST['birth_registration_number'];
    $mcts_rch_id_child = $_POST['mcts_rch_id_child'];

    // Institutional Identification Section
    $aww_number = $_POST['aww_number'];
    $block_village_ward = $_POST['block_village_ward'];
    $asha_name = $_POST['asha_name'];
    $anm_name = $_POST['anm_name'];
    $clinic = $_POST['clinic'];
    $hospital = $_POST['hospital'];
    $phc_town = $_POST['phc_town'];
    $anm_contact_number = $_POST['anm_contact_number'];
    $hospital_contact_number = $_POST['hospital_contact_number'];
    $awc_reg_no = $_POST['awc_reg_no'];

    $awc_reg_date = $_POST['awc_reg_date'];
    $sub_center_reg_no = $_POST['sub_center_reg_no'];
    $sub_center_reg_date = $_POST['sub_center_reg_date'];
    $referred_to = $_POST['referred_to'];

    // Aadhar Details Section
    $child_aadhar_no = $_POST['child_aadhar_no'];
    $mother_aadhar_no = $_POST['mother_aadhar_no'];

    // SQL queries to insert data into database
    $sql = "INSERT INTO mother_child_protection (mother_name, dob, father_name, address, mobile_number, husband_mobile_number, mcts_rch_id,
            last_menstrual_period,expected_delivery_date, number_of_pregnancies, last_delivery_conducted_at, current_delivery,
            child_name, date_of_birth, birth_weight, gender, birth_registration_number, mcts_rch_id_child,
            aww_number, block_village_ward, asha_name, anm_name, clinic, hospital, phc_town, anm_contact_number, hospital_contact_number,
            awc_reg_no, awc_reg_date, sub_center_reg_no, sub_center_reg_date, referred_to, child_aadhar_no, mother_aadhar_no)
            VALUES ('$mother_name', '$dob', '$father_name', '$address', '$mobile_number', '$husband_mobile_number', '$mcts_rch_id',
            '$last_menstrual_period','$expected_delivery_date',  '$number_of_pregnancies', '$last_delivery_conducted_at', '$current_delivery',
            '$child_name', '$date_of_birth', '$birth_weight', '$gender', '$birth_registration_number', '$mcts_rch_id_child',
            '$aww_number', '$block_village_ward', '$asha_name', '$anm_name', '$clinic', '$hospital', '$phc_town', '$anm_contact_number',
            '$hospital_contact_number', '$awc_reg_no', '$awc_reg_date', '$sub_center_reg_no', '$sub_center_reg_date', '$referred_to',
            '$child_aadhar_no', '$mother_aadhar_no')";

    if ($conn->query($sql) === TRUE) {
        finalQr($conn->insert_id);
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
