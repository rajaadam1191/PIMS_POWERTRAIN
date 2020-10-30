<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProclainPIMSMaster.Form.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sign In</title>
        <style>
            #loader {
                transition: all .3s ease-in-out;
                opacity: 1;
                visibility: visible;
                position: fixed;
                height: 100vh;
                width: 100%;
                background: #fff;
                z-index: 90000
            }

            #loader.fadeOut {
                opacity: 0;
                visibility: hidden
            }

            .spinner {
                width: 40px;
                height: 40px;
                position: absolute;
                top: calc(50% - 20px);
                left: calc(50% - 20px);
                background-color: #333;
                border-radius: 100%;
                -webkit-animation: sk-scaleout 1s infinite ease-in-out;
                animation: sk-scaleout 1s infinite ease-in-out
            }

            @-webkit-keyframes sk-scaleout {
                0% {
                    -webkit-transform: scale(0)
                }

                100% {
                    -webkit-transform: scale(1);
                    opacity: 0
                }
            }

            @keyframes sk-scaleout {
                0% {
                    -webkit-transform: scale(0);
                    transform: scale(0)
                }

                100% {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 0
                }
            }
            .bckimg{
            background-image:url(../UI/assets/static/images/Log1.jpg);
            background-repeat: no-repeat;
            background-size: cover;

            }
        </style>
    
       <script type="43d20950b47f2197532fed15-text/javascript" src="../UI/Script/vendor.js"></script>
        <script type="43d20950b47f2197532fed15-text/javascript" src="../UI/Script/bundle.js"></script>
        <script src="../UI/Script/rocket-loader.min.js" data-cf-settings="43d20950b47f2197532fed15-|49" defer=""></script>
    <script src="../UI/Style/jquery.min.js"></script> 
      <%--  <script src="../UI/Style/jquery-1.10.2.js"></script>  
        <script src="../UI/Style/sweetalert.js"></script>  
    <link href="../UI/Style/sweetalert.css" rel="stylesheet" /> --%>
    <script src="../UI/Style/sweetalert.min.js"></script>
    <link href="../UI/Style/sweetalert2.min.css" rel="stylesheet" />
          <link href="../UI/Style/style.css" rel="stylesheet"/>
    <link href="../UI/Style/sweetalert.min.js" rel="stylesheet"/> 
  
   <script type="text/javascript">
      // $("#btnOpenMod").trigger("click");
       
       function openModal() {
           console.log('inside model method')
           setTimeout(function () {

               $("#btnOpenMod").click();


           }, 2000);
           
          
        }
      
    </script>

    
</head>
<body class="app" onload="myFunction()">
    <form id="form1" runat="server" method="post">
        <%--<asp:ScriptManager runat="server"></asp:ScriptManager>--%>
    
        
        <div id="loader">
            <div class="spinner"></div>
            <p style="text-align:center;">WELCOME TO PIMS..</p>
        </div>
        <script type="43d20950b47f2197532fed15-text/javascript">
            window.addEventListener('load', () => {
             
        const loader = document.getElementById('loader');
        setTimeout(() => {
          loader.classList.add('fadeOut');
            
        }, 600);
      });
        </script>
        <script>
            function myFunction() {
              //  alert("Welcome To PIMS...")
                // ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Welcome To Pims','','Success')", true);
               // document.getElementById("Exam").innerHTML = "WELCOME TO PIMS..";
            }
        </script>

       
       
        <p id="Exam" style="color:cornflowerblue"></p>
        <div class="peers ai-s fxw-nw h-100vh">
            <div class="bckimg" style="width:100%;height:100%; ">
                <div class="pos-a Right-centerXY ">
                    <div class="bgc-white bdrs-50p pos-r" style="width:100%;height:100%">
                        <img style="margin-top:35px;margin-left:30px;" class="pos-a centerXY" src="../UI/assets/static/images/logo1.png" alt=""/>
                    </div>
                </div>
                <div class="card" style="opacity:0.8; width:40%;height:40%;margin-left:30%;margin-top:12%;align-content:center;border-radius:10px;">
                      
                
                   <div style="padding-left:15px;">
                       <h3 class="fw-300 c-grey-900 mB-40"><b>Login</b></h3>
                        <div class="row" style="width:100%">
                            <%--<div class="col-md-6" ><label class="text-normal text-dark ">Employee Id</label></div>--%>
                            <div class="col-md-12"><asp:TextBox ID="EmployeeIDTextBox" CssClass="form-control input-append" style="border-radius:20px;margin-right:20%;" placeholder="Type Your Employee ID Here.." runat="server" AutoPostBack="false" ></asp:TextBox></div>
                        </div>
                        
                        
                    <br />
                    
                        <div class="row" style="width:100%">
                            <%--<div class="col-md-6" ><label class="text-normal text-dark">Password</label></div>--%>
                            <div class="col-md-12">
                        <asp:TextBox ID="PasswordTextBox"  Cssclass="form-control" placeholder="Type Your Password Here..." runat="server" style="border-radius:20px;margin-right:20%;" TextMode="Password"></asp:TextBox></div>
                        </div>
                        
                    
                   <br />
                    <br />
                  <hr />
                            <div class="row" style="width:100%">
                            <div class="col-md-12" >
                                

                                <asp:Button ID="SignInButton" CssClass="form-control apopbtn btn-primary" runat="server" style="border-radius:20px;" Text="SignIn" BorderColor="DodgerBlue" OnClick="SignUpButton_Click" />
                                
                            
                            </div>
                                </div>
                    <br />
                    <div class="row" style="width:100%">
                        <div class="col-md-4"></div>
                            <div class="col-md-4"><a href="#" name="" id="change" data-toggle="modal" data-target="#myModalChangePassword"  onclick="clearTextbox()"><u>ChangePassword</u></a></div>
                            <div class="col-md-4"><a href="#" name="" data-toggle="modal" data-target="#myModalUpdate"  onclick="clearTextbox()"><u>ForgotPassword</u></a></div>
                        </div>
                            
                            
                  </div> 
                            </div>  
                               
                        
                        
                     <input type="button" class="btn btn-primary" id="btnOpenMod" data-toggle="modal" data-target="#myModalChangePassword" style="visibility:hidden" value="open"/> 
    
                </div>
            
           <%-- <div class="d-n@sm- peer peer-greed h-100 pos-r bgr-n bgpX-a bgpY-c bgsz-cv" style="background-image:url(../UI/assets/static/images/Log1.jpg)">
                <div class="pos-a Right-centerXY ">
                    <div class="bgc-white bdrs-50p pos-r" style="width:120px;height:120px">
                        <img class="pos-a centerXY" src="../UI/assets/static/images/logo1.png" alt=""/>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 peer pX-40 pY-80 h-100 bgc-white scrollable pos-r" style="min-width:320px">
                <h4 class="fw-300 c-grey-900 mB-40">Login</h4>
                
                    <div class="form-group">
                        <label class="text-normal text-dark">Employee Id</label>
                        <asp:TextBox ID="EmployeeIDTextBox" CssClass="form-control" placeholder="Employee ID" runat="server" AutoPostBack="false" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="text-normal text-dark">Password</label>
                        <asp:TextBox ID="PasswordTextBox"  Cssclass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <div class="peers ai-c jc-sb fxw-nw">
                         <!--   <div class="peer">
                                <div class="checkbox checkbox-circle checkbox-info peers ai-c" >
                                    <asp:CheckBox ID="RememberMeCheckBox" CSSclass="peer" runat="server" />
                                    <label for="inputCall1" class="peers peer-greed js-sb ai-c" >
                                        <span class="peer peer-greed">Remember Me</span>
                                    </label>
                                </div>
                            </div> -->
                            <div class="peer">

                                <asp:Button ID="SignInButton" CssClass="form-control apopbtn btn-primary" runat="server" Text="SignIn" BorderColor="DodgerBlue" OnClick="SignUpButton_Click" />
                                
                            </div>
                            <div>
                               <a href="#" name="" id="change" data-toggle="modal" data-target="#myModalChangePassword"  onclick="clearTextbox()">ChangePassword</a></div> 
                               <%--<asp:LinkButton ID="SignUpLinkButton1" runat="server">Create Acount</asp:LinkButton>
                               <a href="#" name="" data-toggle="modal" data-target="#myModalUpdate"  onclick="clearTextbox()">ForgotPassword</a></div> 
                        </div>
                        
                     <input type="button" class="btn btn-primary" id="btnOpenMod" data-toggle="modal" data-target="#myModalChangePassword" style="visibility:hidden" value="open"/> 
    

                    </div>
            --%>        
                    <asp:Label ID="Label1" runat="server" Visible="false" Text="Label" ForeColor="Red"></asp:Label>
                    
            </div>
        
        <div class="container" >
        <div class="modal fade" id="myModalUpdate" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">PasswordRecovery</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body" >
                         <ul class="nav nav-tabs" >
                        <li class="nav-item" id="User1" style="width:50%; font-size:100%;  padding-left:2%;">
                            <a class="nav-link active" data-toggle="tab" href="#new1" style="font-weight:bold ;text-align:center;" onclick="clearTextbox()">Generate OTP  <%--&nbsp;<span id="count" class="badge badge-pill badge-primary" runat="server">0</span>--%></a>

                        </li>
                        <li class="nav-item" id="Implement1" style="width:50%; font-size:100%;padding-right:2%; ">
                            <a class="nav-link" data-toggle="tab" href="#assigned1" style="font-weight:bold ;text-align:center;" onclick="clearTextbox()">Set New password <%--&nbsp;<span id="countass" class="badge badge-pill badge-primary" runat="server">0</span>--%></a>

                        </li>
                  </ul>
                <div class="tab-content">
                    <div id="new1" class="container tab-pane active">
                        <label class="text-normal text-dark">Enter Your ID</label>    
                        <asp:TextBox runat="server" ID="Empidforgot" CssClass="form-control" placeholder="Employee Id.."></asp:TextBox>
                         
                        <label class="text-normal text-dark">Enter Your Credentials</label>    
                        <asp:TextBox runat="server" ID="passforgot" CssClass="form-control" placeholder="credential password.."></asp:TextBox><br />
                        
                        <label class="text-normal text-dark">Enter Your Email-Id</label>    
                        <asp:TextBox runat="server" ID="EmailId" CssClass="form-control" placeholder="Email-Id.."></asp:TextBox><br />


                        <asp:Button ID="UpdateButton" runat="server" CssClass="form-control apopbtn btn-primary" Text="Submit" OnClick="UpdateButton_Click" /><br />
                        
                     </div>
                            <div id="assigned1" class="container tab-pane ">
                        <label class="text-normal text-dark">Enter Your ID</label>    
                        <asp:TextBox runat="server" ID="chgempidForgot" CssClass="form-control" placeholder="Employee Id.."></asp:TextBox>
                         
                        <label class="text-normal text-dark">Enter Your OTP Number</label>    
                        <asp:TextBox runat="server" ID="chgoldpassForgot" CssClass="form-control" placeholder="OTP Number.." TextMode="Password"></asp:TextBox>
                        
                            <label class="text-normal text-dark">Enter Your New Password</label>    
                        <asp:TextBox runat="server" ID="chgnewpassForgot" CssClass="form-control" placeholder="New password.." TextMode="Password"></asp:TextBox>
                        
                            <label class="text-normal text-dark">Enter Your Confirm New Password</label>    
                        <asp:TextBox runat="server" ID="chgconpassForgot" CssClass="form-control" placeholder="Confirm password.." TextMode="Password"></asp:TextBox><br />
                            
                        
                        <asp:Button ID="UpdatepasswordForgot" runat="server" CssClass="form-control apopbtn btn-primary" Text="Submit" OnClick="UpdatepasswordForgot_Click"  /><br />
                        
                        
                    </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        
                           
                        
                            
                            <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <script>
            $(".nav-link").on("click", function () {
                console.log('using css');  clearTextbox();
            });
            $('#User').click(function () {
                console.log('using jquery');
                clearTextbox();
            });
            function clearTextbox()
            {
                console.log('called')
                document.getElementById('<%= Empidforgot.ClientID %>').value ="";
                document.getElementById('<%= chgempidForgot.ClientID %>').value = "";
               <%-- document.getElementById('<%= EmpIdOTP.ClientID %>').value = "";
                document.getElementById('<%= chgempid.ClientID %>').value="";--%>
                console.log('end call')
            }
        </script>
        <div class="container" >
        <div class="modal fade" id="myModalChangePassword" role="dialog">
            <div class="modal-dialog"> 

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Change Password</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body" >
                        <%--<ul class="nav nav-tabs" >
                        <li class="nav-item" id="User" style="width:50%; font-size:100%;  padding-left:2%;">
                            <a class="nav-link active" id="linkGenerate" data-toggle="tab" href="#new" style="font-weight:bold ;text-align:center;" onclick="clearTextbox()">Generate OTP  &nbsp;<span id="count" class="badge badge-pill badge-primary" runat="server">0</span></a>

                        </li>
                        <li class="nav-item" id="Implement" style="width:50%; font-size:100%;padding-right:2%; ">
                            <a class="nav-link" data-toggle="tab" href="#assigned" style="font-weight:bold ;text-align:center;">Set New password <%--&nbsp;<span id="countass" class="badge badge-pill badge-primary" runat="server">0</span></a>

                        </li>
                  </ul>
                        <div class="tab-content">
                    <div id="new" class="container tab-pane active">
                        
                        <label class="text-normal text-dark">Enter Your ID</label>    
                        <asp:TextBox runat="server" ID="EmpIdOTP" CssClass="form-control" placeholder="Employee Id.."></asp:TextBox>
                         
                        <label class="text-normal text-dark">Enter Your Old Password</label>    
                        <asp:TextBox runat="server" ID="OldPassOTP" CssClass="form-control" placeholder="Old password.." TextMode="Password"></asp:TextBox><br />
                        
<%--                            <label class="text-normal text-dark">Enter Your New Password</label>    
                        <asp:TextBox runat="server" ID="chgnewpass" CssClass="form-control" placeholder="New password.." TextMode="Password"></asp:TextBox>
                        
                            <label class="text-normal text-dark">Enter Your Confirm New Password</label>    
                        <asp:TextBox runat="server" ID="chgconpass" CssClass="form-control" placeholder="Confirm password.." TextMode="Password"></asp:TextBox>
                            
                           <asp:Button ID="GenerateBeforeOTP" runat="server" CssClass="form-control apopbtn btn-primary" Text="Submit" OnClick="GenerateBeforeOTP_Click" /><br />
                        
                        
                    </div>
                    <div id="assigned" class="container tab-pane ">
                        <label class="text-normal text-dark">Enter Your ID</label>    
                        <asp:TextBox runat="server" ID="chgempid" CssClass="form-control" placeholder="Employee Id.."></asp:TextBox>
                         
                        <label class="text-normal text-dark">Enter Your OTP Number</label>    
                        <asp:TextBox runat="server" ID="chgoldpass" CssClass="form-control" placeholder="OTP Number.." TextMode="Password"></asp:TextBox>
                        
                            <label class="text-normal text-dark">Enter Your New Password</label>    
                        <asp:TextBox runat="server" ID="chgnewpass" CssClass="form-control" placeholder="New password.." TextMode="Password"></asp:TextBox>
                        
                            <label class="text-normal text-dark">Enter Your Confirm New Password</label>    
                        <asp:TextBox runat="server" ID="chgconpass" CssClass="form-control" placeholder="Confirm password.." TextMode="Password"></asp:TextBox><br />
                            
                        
                        <asp:Button ID="Changepassword" runat="server" CssClass="form-control apopbtn btn-primary" Text="Submit" OnClick="Changepassword_Click" /><br />
                        
                        
                    </div>
                    </div>--%>
                        <label class="text-normal text-dark">Enter Your ID</label>    
                        <asp:TextBox runat="server" ID="EmpIdOTP" CssClass="form-control" placeholder="Employee Id.."></asp:TextBox>
                         
                        <label class="text-normal text-dark">Enter Your Old Password</label>    
                        <asp:TextBox runat="server" ID="OldPassOTP" CssClass="form-control" placeholder="Old password.." TextMode="Password"></asp:TextBox><br />
                        
						<label class="text-normal text-dark">Enter Your New Password</label>    
                        <asp:TextBox runat="server" ID="chgnewpass" CssClass="form-control" placeholder="New password.." TextMode="Password"></asp:TextBox>
                        
                        <label class="text-normal text-dark">Enter Your Confirm New Password</label>    
                        <asp:TextBox runat="server" ID="chgconpass" CssClass="form-control" placeholder="Confirm password.." TextMode="Password"></asp:TextBox>
						
						<asp:Button ID="Changepassword" runat="server" CssClass="form-control apopbtn btn-primary" Text="Submit" OnClick="Changepassword_Click" /><br />
                    </div>

                    <div class="modal-footer">
                        
                           
                        
                        
                            
                            <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
       <%-- <script>
        function showModal() {
            $("[id*=myModalChangePassword]").modal('show');
        }
            </script>--%>
       
    </form>
</body>
</html>



