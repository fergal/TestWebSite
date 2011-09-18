﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%-- <script src="jquery.autogrowtextarea.js" type="text/javascript"></script>--%>	

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="TestCss.css" />
    <title>Test Page</title>
</head>
<body>
    <form id="formBx" runat="server">
    <div class="formBx">
        <div class="profileCompletionBx">
            <div class="profileCompletionBxTop">
                <div class="progressBarWrapper">
                <div class="progressBarInner" id="divProgressBarInner" runat="server">&nbsp;</div>
            </div>
            <asp:Label class="progressBarOuter" id="divPerCentComplete" runat="server" />
            </div>
                <div class="profileCompletionBxTips">
                <h2>Profile Completion Tips <span>(<a href="">Why do this?</a>)</span></h2>
                <ul> <asp:Literal runat="server" ID="fullList"/></ul>
                </div>
            </div>
            
            <div class="formBxRow">
                <asp:Label ID="lblCompanyDirectors" runat="server" AssociatedControlID="txtCompanyDirectors" Text="Company Directors" />
                <asp:TextBox ID="txtCompanyDirectors" runat="server" TextMode="MultiLine" />
                <div class="msg"></div>
                <div class="info">The directors of the company please</div>
                <div class="vSpace1">&nbsp;</div>
            </div>  
            <div class="formBxRow" id="invisible" runat="server">
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
                    <img src="images/manu.jpg" id="imgswap" alt="hello"/>
                    
            <asp:LinkButton id="LinkButton1" Text="Click me" Command="Command" CommandArgument="CommandArgument" CausesValidation="false" OnClientClick="return validateForm()" PostBackUrl="~/SessionVariable.aspx" runat="server"/>
            <asp:LinkButton id="LinkButton2" Text="Click me qs" Command="Command" CommandArgument="CommandArgument" CausesValidation="false" OOnClientClick="return validateForm()"  runat="server"/>
        </div>
    </form>
</body>
 
<%-- <script type="text/javascript">
  $(document).ready(function(){
    $("#txtInput").autoGrow();
  });
</script>
<textarea id="txtInput" cols="40" rows="5"></textarea>--%>
        <script type="text/javascript" src="jquery-1.2.6.js"></script>
        <script type="text/javascript" src="jquery.autogrowtextarea.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
	         $('#txtCompanyDirectors').autoGrow();
	         })        
	     </script>

<%-- <script type="text/javascript" src="jquery.autogrowtextarea.js">
    $(document).ready(function() 
    {
         $('#txtCompanyDirectors').autoGrow(); 
    }); 
</script>--%>

 
 <%--
 <script type="text/javascript" src="jquery.alphanumeric.pack.js"></script>
<script type="text/javascript">--%>
<%--<script src="jquery-1.2.6.js" type="text/javascript">


    $(document).ready(function() {
        //Global & Default Settings
        $('#txtCompanyDirectors').autoGrow();
        $('#txtYearEstablished').numeric();

        // display info panels and highlight selected element
        $(".formBx input[type=text],input[type=file],input[type=password],textarea,select").focus(function() {
            if ($(this).parent().find(".msg").html() == "") {
                $(this).parent().find(".info").css("display", "block");
            }
            else if ($(this).parent().parent().hasClass("phoneBx")) {
                if ($(this).parent().parent().parent().find(".msg").html() == "") {
                    $(this).parent().parent().parent().find(".info").css("display", "block");
                }
            }
            $(this).addClass("selectedElement");
        })
        
        .blur(function() {
            $(this).parent().find(".info").css("display", "none");
            $(this).parent().parent().parent().find(".info").css("display", "none");
            $(this).removeClass("selectedElement");
        });

        // validate signup form on keyup and submit
        //Custom Validation Method
        jQuery.validator.addMethod(
            "selectNone",
            function(value, element) {
                if (element.value == "-1") {
                    return false;
                }
                else return true;
            },
            "Please select an option."
        );

        //Form Validation Rules
        var validator = $("#aspnetForm").validate({
            rules: {
                txtCompanyDirectors: {
                    required: true,
                    maxlength: 250
                },
                txtYearEstablished: {
                    maxlength: 2000
                }

            },
            messages: {
                txtCompanyDirectors$: "Please enter the directors",
                txtYearEstablished$: "Relevant parent ID"
            },
            // the errorPlacement has to take the table layout into account
            errorPlacement: function(error, element) {
                if (element.is(":radio"))
                    error.appendTo(element.parent().next().next());
                else if (element.is(":checkbox"))
                    error.appendTo(element.next());
                else if (element.parent().parent().hasClass("phoneBx"))
                    error.appendTo(element.parent().parent().parent().find(".msg"));
                else
                    error.appendTo(element.parent().find(".msg"));
            }
        });
    });

    function validateForm() {
        if ($("#aspnetForm").valid())
            return true;
        else
            return false;
    }
</script>--%>
 
 
 
 
<%--  <script type="text/javascript" src="jquery.js"></script>
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
        
         
      $("#txtYearEstablished").keydown(function(event) {
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
 </script> --%>
 
</html>                                                                 
                                                                                                                              
                                                                                                         
