
// specific mail get reject

let rejectList = [ "vij8922@gmail.com" ];
function rejectEmail()
{
    let emailValue = document.getElementById("email-input").value; 
    
    if(rejectList.indexOf(emailValue) >= 0)
    {
        window.alert("Please fill your own email id")
        document.getElementById("email-input").value = "";
        return false;
    }
return true;
}

// check new password and retype password equal or not and desplay alert

function passCheck()
{
    let pass = document.getElementById("user-pass").value; 
    let repass = document.getElementById("user-repeatpass").value; 
    
    if(pass!=repass)
    {
        window.alert("Password mismatched")
        document.getElementById("user-pass").value = "";
        document.getElementById("user-repeatpass").value = "";
        return false;
    }
return true;
}

// color change of mismatch password
$('#user-pass, #user-repeatpass').on('keyup', function () {
    if ($('#user-pass').val() == $('#user-repeatpass').val()) {
      $('#user-repeatpass').html('Matching').css('color', 'green');
    } else 
      $('#user-repeatpass').html('Not Matching').css('color', 'red');
  });

// hide and show password------------ incomplete code

togglePassword.addEventListener('click', function (e) {
    const togglePassword = document.querySelector('#togglePassword');
    const password = document.querySelector('#password');
    // toggle the type attribute
    const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
    password.setAttribute('type', type);
    // toggle the eye / eye slash icon
    this.classList.toggle('bi-eye');
});
// --------------------------------------------------------------