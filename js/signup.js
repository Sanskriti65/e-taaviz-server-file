
function validateInput() {
  var input = document.getElementById("mobile").value;
  var pattern = /^\d{10}$/;
  
  if (pattern.test(input)) {
    alert("Valid input: " + input);
    // You can proceed with further actions here
  } else {
    alert("Invalid input. Please enter 12 numbers.");
    // Optionally, you can clear the input or provide feedback to the user
  }
}
  
   function validateInput() {
    var input = document.getElementById("aadhar").value;
    var pattern = /^\d{12}$/;
    
    if (pattern.test(input)) {
      alert("Valid input: " + input);
      // You can proceed with further actions here
    } else {
      alert("Invalid input. Please enter 12 numbers.");
      // Optionally, you can clear the input or provide feedback to the user
    }
  }


  function validateInput() {
    var input = document.getElementById("abha_id").value;
    var pattern = /^\d{14}$/;
    
    if (pattern.test(input)) {
      alert("Valid input: " + input);
      // You can proceed with further actions here
    } else {
      alert("Invalid input. Please enter 14 numbers.");
      // Optionally, you can clear the input or provide feedback to the user
    }
  }
