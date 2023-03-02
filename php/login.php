<?php
    include "../php/config/dbconnection.php";

    // retrieve the form data
    $email = $_POST['email'];
    $password = $_POST['password'];

    // validate the form data
    $errors = array();
    if (empty($email)) {
        $errors[] = 'Please enter an email address';
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = 'Please enter a valid email address';
    }
    if (empty($password)) {
        $errors[] = 'Please enter a password';
    }

    // if there are errors, return them to the client
    if (!empty($errors)) {
        $response = array('status' => 'error', 'errors' => $errors);
        echo json_encode($response);
        exit;
    }

    // prepare the SQL statement
    $stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");

    // bind the parameter to the statement
    $stmt->bind_param("s", $email);

    // execute the statement
    $stmt->execute();

    // get the result set
    $result = $stmt->get_result();

    // check if the user exists
    if ($result->num_rows == 0) {
        $errors[] = 'Invalid email or password';
        $response = array('status' => 'error', 'errors' => $errors);
        echo json_encode($response);
        exit;
    }

    // get the user data
    $user = $result->fetch_assoc();

    // verify the password
    if (!password_verify($password, $user['password'])) {
        $errors[] = 'Invalid email or password';
        $response = array('status' => 'error', 'errors' => $errors);
        echo json_encode($response);
        exit;
    }

    // start the session and set the user data
    session_start();
    $_SESSION['user_id'] = $user['id'];
    $_SESSION['user_email'] = $user['email'];

    // redirect to the dashboard page
    $response = array('status' => 'success', 'message' => 'Login successful!');
    echo json_encode($response);
    exit;
?>
