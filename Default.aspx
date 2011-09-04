<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="TestCss.css" />
 <script type="text/javascript" src="jquery.js"></script>
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
            
            <div class="formBxRow">
                <asp:Label ID="lblCompanyDirectors" runat="server" AssociatedControlID="txtCompanyDirectors" Text="Company Directors" />
                <asp:TextBox ID="txtCompanyDirectors" runat="server" MaxLength="200" />
                <div class="msg"></div>
                <div class="info">The directors of the company please</div>
                <div class="vSpace1">&nbsp;</div>
            </div>  
            <div id="pdissapear"><p>If you click on me, I will disappear.</p></div>         
            <div><p>If you click on me, I will NOT disappear.</p></div>
        </div>
    </form>
</body>
 
 <script type="text/javascript">  
    $(document).ready(function() 
    {
      $("#pdissapear").click(function(){
      $(this).hide();
      });
      
//        $("p") selects all <p> elements.
//        $("p.intro") selects all <p> elements with class="intro".
//        $("p#demo") selects all <p> elements with id="demo".  

        //works
      $("a").click(function(){
      $(this).fadeOut();
      });
      
        $("p").click(function(){
        $("p").css("background-color","yellow");
        });
      
        
    });                                    
 </script> 
 
</html>                                                                 
                                                                                                                              
                                                                                                         
