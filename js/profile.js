$(document).ready(function() {
	var email = localStorage.getItem("redis_data");
	console.log(email);
	if (email) {
	  $.ajax({
		type: "POST",
		url: "php/profile.php",
		data: { email: email },
		dataType: "json",
		success: function(data) {
		  // Populate the form fields with the retrieved data
		  $("#fullName").val(data.fullname);
		  $("#email").val(data.email);
		  $("#dob").val(data.dob);
		  $("#age").val(data.age);
		  $("#phonenumber").val(data.phonenumber);
		  $("#pincode").val(data.pincode);
		},
		error: function() {
		  alert("Error retrieving user info.");
		}
	  });
	} else {
	  window.location.href = "login.html";
	}
  });

//   $(document).ready(function() {
// local
//   });
  