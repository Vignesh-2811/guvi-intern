<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Profile Page</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="icon" type="image/x-icon" href="../assets/img/logo.png">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


  <script>
	$(document).ready(function() {
  	var session_token = localStorage.getItem("session_id");
  	if (!session_token) {
    	window.location.href = "../login.html";
  	}
	});
  </script>
  
</head>
<body>
  <div class="container mt-5">
    <div class="row">
      <!-- <div class="col-md-4">
        <div class="card">
          <img src="https://via.placeholder.com/150" class="card-img-top" alt="Profile Picture">
          <div class="card-body">
            <h5 class="card-title">John Doe</h5>
            <p class="card-text">Email: john.doe@example.com</p>
          </div>
        </div>
        <div class="mt-3">
          <a href="#" class="btn btn-primary">Edit Profile</a>
        </div>
      </div> -->

      <?php 
      include "config/dbconnection.php";
      include "functions.php";

      function getByEmail($table, $id)
    {
        global $conn;
        $query = "SELECT * FROM $table WHERE email = '$id' ";
        // return $query;
        return $query_run = mysqli_query($conn, $query);

    }
    //   if (isset($_POST['data'])) {
        // $myData = $_POST['data'];
    //   }
    session_start();
    $email = $_SESSION['email'];
        // echo $email;
        // echo "hi";
        $category = getByEmail("profile", $email);
        $data = mysqli_fetch_array($category);


      ?>
      <div class="col-md-12">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Personal Information</h5>
            <!-- <form action="code.php" method="POST" id="profileForm">  -->
              <div class="form-group">
                <label for="fullName">Full Name</label>
                <input type="text" class="form-control" id="fullName" name="fullname" placeholder="Enter your full name" value="<?= $data['fullname']?>">
              </div>

              <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" value="<?= $data['email']?>">
              </div>

			  <div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label for="DOB">Date of Birth</label>
						<input type="date" class="form-control" id="dob" name="dob" placeholder="Enter your Date of Birth" value="<?= $data['dob']?>">
					  </div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
						<label for="age">Age</label>
						<input type="number" class="form-control" name="age" id="age" placeholder="Enter your Age" value="<?= $data['age']?>">
					  </div>
				</div>
			  </div>
			  
			  <div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label for="phone number">Phone Number</label>
						<input type="number" class="form-control" id="phonenumber" name="phonenumber" placeholder="Enter your Phone Number" value="<?= $data['phonenumber']?>">
					  </div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
						<label for="pincode">Pincode</label>
						<input type="number" class="form-control" id="pincode" name="pincode" placeholder="Enter your pincode" value="<?= $data['pincode']?>">
					  </div>
				</div>
			  </div>

                
              <button type="submit" class="btn btn-primary" name = "editbtn" id = "editbtn">Edit</button>
              <!-- </form> -->
          </div>
        </div>
      </div>
	  <div class="row">
		<div class="col-md-12 mt-3">
		  <button type="button" class="btn btn-danger" id="logoutBtn">Logout</button>
		</div>
	  </div>
	  
    </div>
  </div>
</body>
<footer>
<script>
		document.getElementById('logoutBtn').addEventListener('click', function() {
			localStorage.clear();
			window.location.href = '../login.html';
		})
	  </script>
</footer>
</html>
