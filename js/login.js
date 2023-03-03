function generateSessionToken() {
    // Generate a random string of 32 characters
    var chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var token = '';
    for (var i = 0; i < 32; i++) {
      token += chars[Math.floor(Math.random() * chars.length)];
    }
    return token;
  }
  
  $(document).ready(function(){
      $("#loginform").click(function(){
  
          event.preventDefault();
  
          var email = $("#email").val();
          var password = $("#password").val();
          // var password2 = $('#password2').val();
  
          var formData = "email=" + email + "&password=" + password;
  
          // var formData = $(this).serialize();
          console.log(formData);
  
          $.ajax({
              type: 'POST',
              url: 'php/login.php',
              data: formData,
              success: function(response) {
                  // handle the response from the server
                  var result = JSON.parse(response);
                  if (result.status == "success"){
                      // generate and store the session token in local storage
                      var session_id = generateSessionToken();
                      var redis_data = email;
                      localStorage.setItem("session_id", session_id);
                      localStorage.setItem("redis_data", JSON.stringify(redis_data));
                      // redirect to the dashboard page
                      window.location.href = "php/profile.php";
                  } 
                  else {
                      alert(response);
                  }
                  // window.location.href = 'profile.html';
                  // console.log(response);
              },
              error: function(jqXHR, textStatus, errorThrown) {
                  // handle any errors that occur during the Ajax request
                  alert('Error: ' + textStatus + ' - ' + errorThrown);
              }
          });
      });
  });
  