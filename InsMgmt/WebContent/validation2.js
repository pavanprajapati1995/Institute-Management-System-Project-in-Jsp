function valid_form(frm)
{
	if(frm.studentid.value=="")
	{
		alert("Please Enter Student Id:");
	    frm.studentid.focus();
		return false;
	}
	if(frm.cint.value=="")
	{
		alert("Please Enter Internal Marks:");
	    frm.cint.focus();
		return false;
	}
	if(frm.cex.value=="")
	{
		alert("Please Enter External Marks:");
	    frm.cex.focus();
		return false;
	}
	
	
	if(frm.cdint.value=="")
	{
		alert("Please Enter Internal Marks:");
	    frm.cdint.focus();
		return false;
	}
	
	if(frm.cdex.value=="")
	{
		alert("Please Enter External Marks:");
		frm.cdex.focus();
		return false;
	}
	if(frm.seint.value=="")
	{
		alert("Please  Enter Internal Marks:");
		frm.seint.focus();
		return false;
	}
	if(frm.seex.value=="")
	{
		alert("Please Enter External Marks:");
		frm.seex.focus();
		return false;
	}
	if(frm.dbint.value=="")
	{
		alert("Please Enter Internal Marks:");
		frm.dbint.focus();
		return false;
	}
	if(frm.dbex.value=="")
	{
		alert("Please Enter External Marks:");
	    frm.dbex.focus();
		return false;
	}
	if(frm.javaint.value=="")
	{
		alert("Please Enter Internal Marks:");
		frm.javaint.focus();
		return false;
	}
	if(frm.javaex.value=="select")
	{
		alert("Please Enter External Mark:");
		frm.javaex.focus();
		return false;
	}
	
	
	
	return true;
}