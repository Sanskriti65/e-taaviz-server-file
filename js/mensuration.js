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
  
    var formattedLMP = lmpDate.toLocaleDateString("en-US", { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' });
  
    if (months > 10) {
        document.getElementById("expected_delivery_date").value = "Exceptional Case / not pregnant"; 
    } else {
        document.getElementById("expected_delivery_date").value = "Expected Delivery Date: " + formattedLMP + " Pregnancy duration: (" + weeks + " weeks), (" + months + " months)";
    }

    // Display days
    document.getElementById("results").value = weeks * 7;
});