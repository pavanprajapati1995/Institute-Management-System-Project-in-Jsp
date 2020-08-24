function valid_form(frm)
{
	if(frm.firstname.value=="")
	{
		alert("Please Enter First Name:");
	    frm.firstname.focus();
		return false;
	}
	if(frm.lastname.value=="")
	{
		alert("Please Enter Last Name:");
	    frm.lastname.focus();
		return false;
	}
	if(frm.fathername.value=="")
	{
		alert("Please Enter father Name:");
	    frm.fathername.focus();
		return false;
	}
	
	
	if(frm.address.value=="")
	{
		alert("Please Enter Address:");
	    frm.address.focus();
		return false;
	}
	if(frm.gender.value=="select")
	{
		alert("Please Select Gender:");
		frm.gender.focus();
		return false;
	}
	if(frm.dateofbirth.value=="")
	{
		alert("Please  Enter  DOB:");
		frm.dateofbirth.focus();
		return false;
	}
	if(frm.dateofjoin.value=="yyyy")
	{
		alert("Please Enter  DOJ:");
		frm.dateofjoin.focus();
		return false;
	}
	if(frm.course.value=="select")
	{
		alert("Please Select Course:");
		frm.course.focus();
		return false;
	}
	if(frm.phoneno.value=="")
	{
		alert("Please Enter Phone Number:");
	    frm.phoneno.focus();
		return false;
	}
	if(frm.email.value=="")
	{
		alert("Please Enter Email-id:");
		frm.email.focus();
		return false;
	}
	if(frm.caste.value=="select")
	{
		alert("Please Select caste:");
		frm.caste.focus();
		return false;
	}
	if(frm.religion.value=="select")
	{
		alert("Please Select Religion:");
		frm.religion.focus();
		return false;
	}
	if(frm.nation.value=="")
	{
		alert("Please Enter Your Country:");
		frm.nation.focus();
		return false;
	}
	if(frm.loginid.value=="")
	{
		alert("Please Enter Login-id:");
		frm.loginid.focus();
		return false;
	}
	
	if(frm.designation.value=="select")
	{
		alert("Please Select caste:");
		frm.designation.focus();
		return false;
	}
	if(frm.password.value=="select")
	{
		alert("Please Enter Your Password:");
		frm.password.focus();
		return false;
	}
	
	
	return true;
}