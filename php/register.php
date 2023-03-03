<?php
    include "../php/config/dbconnection.php";
    // include "";
    // echo formData;
    // retrieve the form data
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirmpassword = $_POST['password2'];

    // validate the form data
    $errors = array();
    if (empty($email)) {
        $errors[] = 'Please enter an email address';
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = 'Please enter a valid email address';
    }
    if (empty($password)) {
        $errors[] = 'Please enter a password';
    } elseif (strlen($password) < 6) {
        $errors[] = 'Password must be at least 6 characters long';
    }

    // if ($password !== $confirmpassword) {
    //     $errors[] = 'Passwords do not match';
    // }

    // if there are errors, return them to the client
    if (!empty($errors)) {
        $response = array('status' => 'error', 'errors' => $errors);
        echo json_encode($response);
        exit;
    }

    // check if the email address already exists in the database
    $stmt = $conn->prepare("SELECT email FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();
    if ($stmt->num_rows > 0) {
        $response = array('status' => 'error', 'errors' => array('Email address already exists'));
        echo json_encode($response);
        exit;
    }

    // prepare the SQL statement
    $stmt = $conn->prepare("INSERT INTO users (email, password) VALUES (?, ?)");

    // bind the parameters to the statement
    $stmt->bind_param("ss", $email, $password_hash);

    // hash the password using the bcrypt algorithm
    $password_hash = password_hash($password, PASSWORD_BCRYPT);

    // execute the statement
    if ($stmt->execute() === TRUE) {
        $response = array('status' => 'success', 'message' => 'Registration successful!');
        // header('Location: ../login.html');
        // $stmt->close();
        // $conn->close();
        // exit;

        echo json_encode($response);
    } else {
        $errors[] = 'Error inserting record: ' . $conn->error;
        $response = array('status' => 'error', 'errors' => $errors);
        echo json_encode($response);
    }

    // close the statement and the database connection
    $stmt->close();
    $conn->close();
    exit;
?>
