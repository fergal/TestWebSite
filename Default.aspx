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
            <div class="formBxRow">
                <asp:Label ID="lblYearEstablished" runat="server" AssociatedControlID="txtYearEstablished" Text="Year Established" />
                <asp:TextBox ID="txtYearEstablished" runat="server" MaxLength="200" />
                <div class="msg"></div>
                <div class="info">Year Established</div>
                <div class="vSpace1">&nbsp;</div>
            </div> 
            <div id="pdissapear"><p>If you click on me, I will disappear.</p></div>         
            <div id="showtext"><p id="loadtext">Click here for more JQuery information (loaded from a file)!</p></div>
            <div class="panel">
                <p>This is a paragragh inside a panel.</p>
                <p>This is another paragragh to show the slide transition.</p>
                <p>and yet another!!.</p>
            </div>
                    <p class="flip">Show/Hide Panel</p>
                    <img src="images/manu.jpg" id="imgswap" />
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
      $("input").focus(function() { 
	  $(this).parent().addClass("curFocus")         
      });         
	  $("input").blur(function() {  
	  $(this).parent().removeClass("curFocus") 
      });
      
      
      $("a").click(function(){
      $(this).fadeOut();
      });
      
      $("p#loadtext").click(function(){
      $("div#showtext").css("background-color","yellow");
      });
        
      $("p#loadtext").click(function(){
      $("div#showtext").load('test1.txt');
      });
      
      $(".flip").click(function(){
      $(".panel").slideToggle("slow");
      });
      
        
        $(function () {
            $("#imgswap").hover(function () {
            this.src = 'images/manu.jpg';
            }, function () {
            this.src = 'images/armagh.jpg';
            });
        });
        
         
      $("#txtCompanyDirectors").keydown(function(event) {
        // Allow only backspace and delete
      if ( event.keyCode == 46 || event.keyCode == 8 ) {
            // let it happen, don't do anything
        }
      else {
            // Ensure that it is a number and stop the keypress
          if (event.keyCode < 48 || event.keyCode > 57 ) {
                event.preventDefault(); 
           }   
        }
    });

        
    });                                    
 </script> 
 
</html>                                                                 
                                                                                                                              
                                                                                                         
