$(document).ready(function(){
    $("#registerform").click(function(event){

        event.preventDefault();

        var email = $("#email").val();
        var password = $("#password").val();
        var password2 = $('#password2').val();

        var formData = "email=" + email + "&password=" + password + "&password2=" + password2;

        // var formData = $(this).serialize();
        // console.log(formData);

        $.ajax({
            type: 'POST',
            url: 'php/register.php',
            data: formData,
            success: function(response) {
                // handle the response from the server
                console.log(response);
                // alert(response);
                // window.location.href = 'login.html';
                var result = JSON.parse(response);
                if (result.status == "success"){
                    window.location.href = "login.html";
                    
                } 
                else {
                    alert(response);
                    // console.log(response.trim());

                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                // handle any errors that occur during the Ajax request
                alert('Error: ' + textStatus + ' - ' + errorThrown);
            }
        });
    });
});