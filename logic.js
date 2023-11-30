//validation for addacc page 

function validationAcc() {
    console.log("button click");
    var name = document.getElementById("Name").value;
    var dob = documnet.getElementById("DOB").value;
    var address = document.getElementById("Add").value;
    var img = document.getElementById("Img").value;
    var amount = documnet.getElementById("Amount").value;

    if (name == "", dob == "", address == "", img == "", amount == "") {
        alert("Required to fill all input");
        console.log('filed comulsory ');
        return false;
    }

    return true;
    

}