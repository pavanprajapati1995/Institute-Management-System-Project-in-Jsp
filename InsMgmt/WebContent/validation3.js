function valid_form(frm)
{
	if(frm.name.value=="")
	{
		alert("Enter Name:");
		frm.name.focus();
		return false;
	}
	                                                                
	if(frm.username.value=="")
	{
		alert("Enter User Name:");
		frm.username.focus();
		return false;
	}



if(frm.password.value=="")
	{
		alert("Enter Passwor:");
		frm.password.focus();
		return false;
	}

if(frm.cpassword.value=="")
	{
		alert("Enter Confirm Password:");
		frm.cpassword.focus();
		return false;
	}
	if(frm.password.value!=frm.cpassword.value)
	{
		alert("Missmatch Password:");
		frm.cpassword.focus();
		return false;
	}

 
if(frm.phone.value=="")
	{
		alert("Please Enter Your Phone No:");
		frm.phone.focus();
		return false;
}
		

if(frm.designation.value=="select")
	{
		alert("Please Select designation:");
		frm.designation.focus();
		return false;
}
 
	return true;
}

function valid_form1(frm)
{
if(frm.password.value==frm.cpassword.value)
{
frm.cpassword.focus();
return false;
}
	return true;
}