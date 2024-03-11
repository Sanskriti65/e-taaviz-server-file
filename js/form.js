
function nextSection(sectionNumber) {
  var currentSection = document.querySelector('.current');
  // console.log(currentSection);
  if (currentSection) {
    var nextSection = document.getElementById('section' + (sectionNumber));
    if (nextSection) {
      // currentSection.classList.add('hidden');
      nextSection.classList.remove('hidden');
      nextSection.classList.add('current');
    } else {
      // Last section reached, do something (e.g., submit form)
      console.log('Last section reached');
    }
    window.location.hash='section' + (sectionNumber);
    console.log(nextSection);
  } else {
    // Initial case (no section currently shown)
    var firstSection = document.getElementById('section1');
    firstSection.classList.add('current');
    firstSection.classList.remove('hidden');
    window.location.hash='section1';
  }
  console.log(sectionNumber);
}




// js for photo upload

const photo = (event) => {
  const imageFiles = event.target.files;
  const imageFilesLength = imageFiles.length;
  if (imageFilesLength > 0) {
      const imageSrc = URL.createObjectURL(imageFiles[0]);
      const imagePreviewElement = document.querySelector("#text1-");
      imagePreviewElement.src = imageSrc;
      imagePreviewElement.style.display = "block";
  }
  document.getElementById('text').style.display="none";
  console.log(imageFiles)
}




// js for date of birth /age calculation

function calculateAge() {
  var dobInput = document.getElementById("dob").value;
  var dob = new Date(dobInput);
  var today = new Date();
  var age = today.getFullYear() - dob.getFullYear();
  var monthDiff = today.getMonth() - dob.getMonth();
  if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < dob.getDate())) {
    age--;
  }
  document.getElementById("age").value = age;
}





//Js used for next pagee //

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







// js for pregnancy day calculation

document.getElementById("last_menstrual_period").addEventListener("change", function() {
  var lmpInput = document.getElementById("last_menstrual_period");
  var lmpDate = new Date(lmpInput.value);

  var deliveryDate = new Date(lmpDate);
  deliveryDate.setDate(lmpDate.getDate() + 280);

  var currentDate = new Date();

  // Calculate the difference in milliseconds
  var difference = currentDate - lmpDate;

  // Convert milliseconds to weeks
  var weeks = Math.floor(difference / (1000 * 60 * 60 * 24 * 7));

  // Check if weeks is negative
  if (weeks < 0) {
      document.getElementById("expected_delivery_date").value = "Exceptional Case / not pregnant";
      document.getElementById("results").value = "";
      return;
  }

  // Convert weeks to months
  var months = Math.round(weeks / 4.34524); // Average number of weeks in a month

  var formattedLMP = deliveryDate.toLocaleDateString("en-US", { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' });

  if (months > 10) {
      document.getElementById("expected_delivery_date").value = "Exceptional Case / not pregnant"; 
  } else {
      document.getElementById("expected_delivery_date").value = "Expected Delivery Date: " + formattedLMP + " Pregnancy duration: (" + weeks + " weeks), (" + months + " months)";
  }

  // Display days
  document.getElementById("results").value = weeks * 7;
});






