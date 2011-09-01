<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<link rel="stylesheet" type="text/css" href="TestCss.css" />
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
    <title>Test Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="profileCompletionBx">
        <div class="profileCompletionBxTop">
            <div class="progressBarWrapper">
            <div class="progressBarInner" id="divProgressBarInner" runat="server">&nbsp;</div>
        </div>
        <asp:Label class="progressBarOuter" id="divPerCentComplete" runat="server" />
        </div>
            <div class="profileCompletionBxTips">
            <h2>Profile Completion Tips <span>(<a href="">Why do this?</a>)</span></h2>
            <ul <asp:Literal runat="server" ID="fullList"/></ul>
            </div>
        </div>    
        </div>
    </form>
</body>
</html>                                                                 
                                                                                                                              
                                                                                                         
