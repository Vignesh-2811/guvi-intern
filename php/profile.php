<?php
require '../vendor/autoload.php'; // Import the MongoDB library

// Set up the MongoDB connection
$mongoClient = new MongoDB\Client("mongodb://localhost:27017");

// Access a database and collection
$collection = $mongoClient->mydatabase->mycollection;

// Update the user's profile information
$result = $collection->updateOne(
    ['username' => 'john.doe'], // Find the user by their username
    ['$set' => [
        'name' => $_POST['name'],
        'age' => $_POST['age'],
        'dob' => $_POST['dob'],
        'contact' => $_POST['contact']
    ]]
);

// Return a success or error message as JSON
if ($result->getModifiedCount() == 1) {
    $response = ['success' => true];
} else {
    $response = ['success' => false];
}
echo json_encode($response);
?>
