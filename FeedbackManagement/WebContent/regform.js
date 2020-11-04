/**
 * 
 */

 function reform()
 {
	 
	  var name = document.forms["reg"]["name1"];
	  
	  var pass = document.forms["reg"]["pass"];
	  
	  var gen = document.forms["reg"]["gen"];
	  
	  var dob = document.forms["reg"]["dob"];
	  
	  var mobile = document.forms["reg"]["mobile1"];
	  
	  if(name.value == "")
		  {
		  
		    window.alert("Enter User Name");
		    
		    name.focus();
		    
		    return false
		  
		  }
	  
	  else if(dob.value == "")
		  {
		  
		  window.alert("Enter Date Of Birth");
		    
		    dob.focus();
		      
		  
		   return false
		  }
	 
	  return true;
 }