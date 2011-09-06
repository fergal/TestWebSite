<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SessionVariable.aspx.cs" Inherits="SessionVariable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href= "TestCss.css" />
 <script type="text/javascript" src="jquery.js"></script>
    <title>Session Variable</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="curDiv">
            <asp:Label ID="lblSessionVar" runat="server" AssociatedControlID="txtSessionVar" Text="Session Variable" />
            <asp:TextBox ID="txtSessionVar" runat="server" MaxLength="200" />
            <div class="msg"></div>
            <div class="info">This is the Session var</div>
            <div class="vSpace1">&nbsp;</div>
        </div>  
    </div>
    </form>
</body>
 <script type="text/javascript">  
    $(document).ready(function() 
    {
      $("input").focus(function() { 
	  $(this).parent().addClass("curFocus")         
      });         
	  $("input").blur(function() {  
	  $(this).parent().removeClass("curFocus") 
      });
            
    });                                    
 </script> 

</html>
