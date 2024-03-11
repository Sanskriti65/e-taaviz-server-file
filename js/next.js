function validateForm() {
    var mother_name = document.getElementById("mother_name").value;
    var dob = document.getElementById("dob").value;
    var father_name = document.getElementById("father_name").value;
    var address = document.getElementById("address").value;
    var mobile_number = document.getElementById("mobile_number").value;
    var husband_mobile_number = document.getElementById("husband_mobile_number").value;
    var mcts_rch_id = document.getElementById("mcts_rch_id").value;
   

    var mother_nameError = document.getElementById("mother_nameError");
    var dobError = document.getElementById("dobError");
    var father_nameError = document.getElementById("father_nameError");
    var addressError = document.getElementById("addressError");
    var mobile_numberError = document.getElementById("mobile_numberError");
    var husband_mobile_numberError = document.getElementById("husband_mobile_numberError");
    var mcts_rch_idError = document.getElementById("mcts_rch_idError");
    

    var isValid = true;

    mother_nameError.textContent = "";
    dobError.textContent = "";
    // ageError.textContent = "";
    father_nameError.textContent = "";
    addressError.textContent = "";
    mobile_numberError.textContent = "";
    husband_mobile_numberError.textContent = "";
    mcts_rch_idError.textContent = "";
    

    if (mother_name === "") {
        mother_nameError.textContent = "Name is required";
        isValid = false;
    }

    if (dob === "") {
        dobError.textContent = "Dob is required";
        isValid = false;
    }

    if (father_name === "") {
        father_nameError.textContent = "Husband name is required";
        isValid = false;
    }
    if (address === "") {
        addressError.textContent = "Address is required";
        isValid = false;
    }
    if (mobile_number === "") {
        mobile_numberError.textContent = "Mobile number is required";
        isValid = false;
    }
    if (husband_mobile_number === "") {
        husband_mobile_numberError.textContent = "Husband mobile number is required";
        isValid = false;
    }
    if (mcts_rch_id === "") {
        mcts_rch_idError.textContent = "MCTS /RCH id is required";
        isValid = false;
    }
   if(isValid){
    nextSection(1);
    }
    
    return isValid;
}