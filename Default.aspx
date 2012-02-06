<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="TestCss.css" />
    <title>Test Page</title>
</head>
<body>
<form id="formBx" runat="server">
</form>
</body>
 
<%--  <script type="text/javascript" src="JS/jquery-1.2.6.js"></script>
  <script type="text/javascript" src="JS/jquery.autogrowtextarea.js"></script>
  <script type="text/javascript" src="JS/jquery.alphanumeric.pack.js"></script>
  <script type="text/javascript" src="JS/jquery.validate.js"></script>   
  <script type="text/javascript">
      $(document).ready(function() {

      $('#txtCompanyDirectors').autoGrow();
      $('#txtYearEstablished').numeric();

          var validator = $("#aspnetForm").validate({
              rules: {
                  $txtCompanyDirectors: {
                      required: true,
                      maxlength: 100
                  }
              },
              messages: {
                  $txtCompanyDirectors: "Please enter the Company Directors"
              },
              // the errorPlacement has to take the table layout into account
              errorPlacement: function(error, element) {
                  error.appendTo(element.parent().find(".msg"));
              }
          });

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

          $("#pdissapear").click(function() {
              $(this).hide();
          });

          //works
          $("input").focus(function() {
              $(this).parent().addClass("curFocus")
          });
          $("input").blur(function() {
              $(this).parent().removeClass("curFocus")
          });
          $("a").click(function() {
              $(this).fadeOut();
          });
          $("p#loadtext").click(function() {
              $("div#showtext").css("background-color", "yellow");
          });
          $("p#loadtext").click(function() {
              $("div#showtext").load('test1.txt');
          });
          $("div#showtext").dblclick(function() {
          $(this).fadeOut();
          });
          $(".flip").click(function() {
              $(".panel").slideToggle("slow");
          });

          $(function() {
              $("#imgswap").hover(function() {
                  this.src = 'images/armagh.jpg';
              }, function() {
                  this.src = 'images/manu.jpg';
              });
          });
          function validateForm() {
              if ($("#aspnetForm").valid())
                  return true;
              else
                  return false;
          }	
      });--%>

 </script> 
 </html>                                                                 
                                                                                                                              
                                                                                                         
