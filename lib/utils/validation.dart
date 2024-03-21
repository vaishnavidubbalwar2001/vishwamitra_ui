// Validation
class Validation{
  isRequired(val){
    if(val== ""||val.isEmpty==true){
      return "This field is required";
    }
    else
      return null;
  }
  emailvalidation(val){
    if (val.isNotEmpty &&
        !RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$').hasMatch(val)) {
      return "Please enter a valid email address";
    } else {
      return null;
    }
  }
  name_validation(val){
    if(val!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(val!)){

      return "Please enter a valid name";
    } else {
      return null;
    }
  }

phoneNo_validation(val){
      if (val!.isEmpty || val.length != 10) {
                          return 'Please enter a valid phone number';
                        } else {
      return null;
    }
  }

}