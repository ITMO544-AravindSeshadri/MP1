#!/bin/bash
sudo apt-get update && sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl
touch /tmp/hello.txt
echo "Hello" > /tmp/hello.txt
sudo curl -sS https://getcomposer.org/installer | php
sudo php composer.phar require aws/aws-sdk-php
PW=letmein
export PW


<?php
echo "Hello world"; 
$link = mysqli_connect("ITMO544AravindDb","aravind","password","3306") or die("Error " . mysqli_error($link));

echo "Here is the result: " . $link;


$sql = "CREATE TABLE MP1 
(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
uname VARCHAR(20),
email VARCHAR(20),
phoneforSMS VARCHAR(20),
RawS3URL VARCHAR(256),
FinishedS3URL VARCHAR(256),
jpegfilename VARCHAR(256),
state (0,1,2) pending finished or error TinyInt(3)
DateTime Timestamp 
)";

$con->query($sql);

?>

