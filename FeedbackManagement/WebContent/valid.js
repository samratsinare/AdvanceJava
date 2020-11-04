/**
 * 
 */

   function valid() 
   
   
   {
	   
	   var name = document.forms["log"]["name"];
	   
	   var pass = document.forms["log"]["pass"];
	   
	   if(name.value == "")
		   {
		      window.alert("enter StudentId");
		      name.focus();
		      
		      return false;
		   }
	   
	   else if(pass.value == "" )
	   {
	      window.alert("Enter Password");
	      pass.focus();
	      
	      return false;
	   }
	   
	  
	    return true;
	
}