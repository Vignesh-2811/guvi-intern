$(document).ready(function() {
	// Load the profile information
	loadProfile();

	// Handle the form submission
	$("#editProfileForm").on("submit", function(event) {
		event.preventDefault();

		// Get the form data
		var formData = $(this).serializeArray();

		// Send an AJAX request to update the profile information
		$.ajax({
			url: "updateProfile.php",
			type: "POST",
			dataType: "json",
			data: formData,
			success: function(data) {
				if (data.success) {
					alert("Profile updated successfully.");
					loadProfile(); // Reload the profile information
				} else {
					alert("Error updating profile.");
				}
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log("Error: " + textStatus);
			}
		});
	});

	function loadProfile() {
		// Load the profile information using AJAX
		$.ajax({
			url: "getProfile.php",
			type: "GET",
			dataType: "json",
			success: function(data) {
				var html = "<ul>";
				html += "<li>Name: " + data.name + "</li>";
				html += "<li>Age: " + data.age + "</li>";
				html += "<li>Date of Birth: " + data.dob + "</li>";
				html += "<li>Contact: " + data.contact + "</li>";
				html += "</ul>";
				$("#profileInfo").html(html);

				// Pre-fill the form with the current profile information
				$("#editProfileForm input[name='name']").val(data.name);
				$("#editProfileForm input[name='age']").val(data.age);
				$("#editProfileForm input[name='dob']").val(data.dob);
				$("#editProfileForm input[name='contact']").val(data.contact);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log("Error: " + textStatus);
			}
		});
	}
});

