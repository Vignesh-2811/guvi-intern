<?php
include ("config/dbconnection.php");
session_start();

if(isset($_POST['editbtn'])){
  $email = $_SESSION['email'];
    // echo $email;
// Check if the email already exists in the database
$query = $conn->prepare("SELECT * FROM profile WHERE email = :email");
$query->bindParam(':email', $email);
$query->execute();

// If the email exists, update the corresponding row in the database
if ($query->rowCount() > 0) {
  // Replace 'fullname', 'age', 'dob', and 'phonenumber' with the form field fullnames
  $fullname = $_POST['fullname'];
  $age = $_POST['age'];
  $dob = $_POST['dob'];
  $phonenumber = $_POST['phonenumber'];

  $query = $conn->prepare("UPDATE profile SET fullname = :fullname, age = :age, dob = :dob, phonenumber = :phonenumber WHERE email = :email");
  $query->bindParam(':name', $name);
  $query->bindParam(':age', $age);
  $query->bindParam(':dob', $dob);
  $query->bindParam(':phonenumber', $phonenumber);
  $query->bindParam(':email', $email);
  $query->execute();

  echo "Profile updated successfully";
} 
// If the email does not exist, insert a new row into the database
else {
  // Replace 'name', 'age', 'dob', and 'phonenumber' with the form field names
  $name = $_POST['name'];
  $age = $_POST['age'];
  $dob = $_POST['dob'];
  $phonenumber = $_POST['phonenumber'];

  $query = $conn->prepare("INSERT INTO profile (email, fullname, age, dob, phonenumber) VALUES (:email, :fullname, :age, :dob, :phonenumber)");
  $query->bindParam(':email', $email);
  $query->bindParam(':fullname', $fullname);
  $query->bindParam(':age', $age);
  $query->bindParam(':dob', $dob);
  $query->bindParam(':phonenumber', $phonenumber);
  $query->execute();

  echo "Profile added successfully";
}
header("Location: profile.php");
}


?>