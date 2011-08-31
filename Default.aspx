<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

 <script type="text/javascript" src="jquery.js"></script>          
 <script type="text/javascript">                                         
   // we will add our javascript code here
    $(document).ready(function() {
   $("a").click(function() {
     alert("Hello world!");
   });
 });                                     
 </script>  

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- we will add our HTML content here -->  
    <a href="">Link</a>    
    </div>
    </form>
</body>
</html>                                                                 
                                                                                                                              
                                                                                                         
