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
                    localStorage.setItem("email", email);
                    window.location.href = "profile.html";
                    // console.log(result);
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