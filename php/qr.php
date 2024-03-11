<?php

require_once('dataBaseDetails.php');
require_once(__DIR__.'/vendor/autoload.php'); // Adjust the path as needed
require_once('finddatabyidofmother.php');

use Endroid\QrCode\Color\Color;
use Endroid\QrCode\Encoding\Encoding;
use Endroid\QrCode\ErrorCorrectionLevel;
use Endroid\QrCode\QrCode;
use Endroid\QrCode\Label\Label;
use Endroid\QrCode\Logo\Logo;
use Endroid\QrCode\RoundBlockSizeMode;
use Endroid\QrCode\Writer\PngWriter;
use Endroid\QrCode\Writer\ValidationException;
function finalQr($id){
    $writer = new PngWriter();
    // echo "patient_id:",$data['patient_id'];
    $data = json_encode(findDataById($id));
    echo $data;
    // Create QR code
    $qrCode = QrCode::create("$data")
        ->setEncoding(new Encoding('UTF-8'))
        ->setErrorCorrectionLevel(ErrorCorrectionLevel::Low)
        ->setSize(300)
        ->setMargin(10)
        ->setRoundBlockSizeMode(RoundBlockSizeMode::Margin)
        ->setForegroundColor(new Color(64, 244, 89))
        ->setBackgroundColor(new Color(255, 255, 255));

    // Create generic logo

    $logo = Logo::create(__DIR__.'/qr.png')
        ->setResizeToWidth(250)
        ->setPunchoutBackground(false)
    ;

    // // Create generic label
    // $label = Label::create('E-taaviz')
    //     ->setTextColor(new Color(64, 244, 89));

    $result = $writer->write($qrCode, $logo);

    // Validate the result
    // $writer->validateResult($result, "$data");

    // header('Content-Type: '.$result->getMimeType());
    // echo $result->getString();
    
    // Save it to a file
    $result->saveToFile(__DIR__."/qrcode.png");

    // Generate a data URI to include image data inline (i.e. inside an <img> tag)
    // $dataUri = $result->getDataUri();
    // header("Location: ".__DIR__."/qrpage.html");
    echo "<script>    window.location.href = '../qrpage.html'; </script>";
    exit();
}