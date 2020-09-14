<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ProclainPIMSMaster.Form.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>


    
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link id="avast_os_ext_custom_font" href="../UI/Style/fonts.css" rel="stylesheet" type="text/css" />
    <script src="../UI/Style/jquery.min.js"></script>   
     <link href="../UI/Style/select2.min.css" rel="stylesheet" />
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
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
            .pY-30 
            {
                padding-top: 30px!important;
                padding-bottom: 30px!important;
            }

            .select2-container--default .select2-selection--single {
    border:0px solid #aaa!important;
}
    .select2-selection__rendered{
      
    padding: 6px 12px;
    
    font-size: 14px!important;
    font-size: .875rem!important;
    line-height: 1.5!important;
    color: #495057!important;
    background-color: #fff!important;
     
    background-clip: padding-box;
       border: 1px solid #ced4da!important;
    border-radius: .25rem!important;
    
    }

    .select2-container--default .select2-selection--single .select2-selection__clear
{
    display:none!important;
    cursor:pointer!important;
    float:right!important;
    font-weight:bold!important

    }
</style>
     <script type="text/javascript">
        // $(".js-example").select2();
         $(document).ready(function () {
             $(".js-example").select2(
                 {

                     placeholder: "Select",
                     allowClear: true
                 });
         });

 
         </script>
     

       
    
</head>
 <body class="app">
    <form id="form1" runat="server">
    <div>
        <div id="loader">
            <div class="spinner"></div>
        </div>
        <script type="43d20950b47f2197532fed15-text/javascript">
            window.addEventListener('load', () => {
        const loader = document.getElementById('loader');
        setTimeout(() => {
          loader.classList.add('fadeOut');
        }, 300);
      });


        </script>
        
        <div class="peers ai-s fxw-nw h-100vh">
            <div class="peer peer-greed h-100 pos-r bgr-n bgpX-c bgpY-c bgsz-cv" style="background-image:url(../UI/assets/static/images/Log.jpg)">
                <div class="pos-a RightXY">
                    <div class="bgc-white bdrs-50p pos-r" style="width:120px;height:120px">
                        <img class="pos-a centerXY" src="../UI/assets/static/images/logo1.png" alt=""/>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 peer pX-40  h-100 bgc-white scrollable pos-r" style="min-width:320px; padding-top: 28px">
                <h4 class="fw-300 c-grey-900 mB-40">Register</h4>
                <div class="form-group">
                        <label class="text-normal text-dark">Employee Id</label>
                        <asp:TextBox ID="HEmployeeIDTextBox" Cssclass="form-control" placeholder="Employee Id" runat="server"></asp:TextBox>
                        
                    </div>
                    <div class="form-group">
                        <label class="text-normal text-dark">Username</label>
                        <asp:TextBox ID="HEmployeeNameTextBox" Cssclass="form-control" placeholder="User Name" runat="server"></asp:TextBox>
                        
                    </div>
                    <div class="form-group">
                         <label class="text-normal text-dark">Department</label>
                        <div class="row">
                            <div class="col-sm-11">
                               
                                    <asp:DropDownList ID="DepartmentDDList" CssClass="js-example form-control" Width="100%"  runat="server" AutoPostBack="false" AppendDataBoundItems="True">  
                                    <asp:ListItem >--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-sm-1" style="padding-left: 0px!important;padding-right: 0px!important" >
                    
                                <img src="/UI/assets/static/images/Icons/Add.jpg" data-toggle="modal" data-target="#myModalDep" style="height:30px;width:30px;;"/>
                            <asp:TextBox ID="DDLTextBox" CssClass="form-control" placeholder ="Department Name" Visible="false" runat="server"></asp:TextBox>
                
                            </div>
                        </div>
                        
                    </div>
                    <div class="form-group">
                        <label class="text-normal text-dark">Designation</label>
                        <div class="row">
                            <div class="col-sm-11">
                               
                        
                        
                        <asp:DropDownList ID="DesignationDDList" CssClass="js-example form-control" Width="100%"  runat="server" AutoPostBack="false" AppendDataBoundItems="True">  
                        
                        <asp:ListItem >--Select--</asp:ListItem>
                   
                    </asp:DropDownList>
                                </div>
                            <div class="col-sm-1" style="padding-left: 0px!important;padding-right: 0px!important" >
                    
                                <img src="/UI/assets/static/images/Icons/Add.jpg" data-toggle="modal" data-target="#myModalDes" style="height:30px;width:30px;;"/>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder ="Designation Name" Visible="false" runat="server"></asp:TextBox>
                
                            </div>
                            </div>

                    </div>
                    <div class="form-group">
                        <label class="text-normal text-dark">Phone Number</label>
                        <asp:TextBox ID="PhoneNoTextBox" Cssclass="form-control" placeholder="00000 00000" runat="server"></asp:TextBox>

                        
                    </div>
                    
                    <div class="form-group">
                        <label class="text-normal text-dark">Email Address</label>
                        <asp:TextBox ID="EmailTextBox" TextMode="Email" Cssclass="form-control" placeholder="name@email.com" runat="server"></asp:TextBox>
                        
                    </div>

                    <div class="form-group">
                        <label class="text-normal text-dark">Password</label>
                        <asp:TextBox ID="PasswordTextBox"  Cssclass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>


                        
                    </div>
                    <div class="form-group">
                        <label class="text-normal text-dark">Confirm Password</label>
                        <asp:TextBox ID="ConformPasswordTextBox"  Cssclass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>

                        
                    </div>
                    <div class="form-group">
                        <div class="peers ai-c jc-sb fxw-nw">
                            <div class="peer">
                                
                                <div class="checkbox checkbox-circle checkbox-info peers ai-c">
                                    <asp:CheckBox ID="RememberMeCheckBox" CSSclass="peer" runat="server" BorderColor="DodgerBlue" />
                                    
                                    <label for="inputCall1" class="peers peer-greed js-sb ai-c">
                                        <span class="peer peer-greed">Remember Me</span>
                                    </label>
                                </div>
                            </div>
                            <div class="peer">
                                <asp:Button ID="SignUpButton" CssClass="form-control" BorderColor="DodgerBlue" runat="server" Text="SignUp" OnClick="SignUpButton_Click"  />
                                
                            </div>
                        </div>
                    </div>
                <asp:Label ID="Label1" runat="server" Visible ="false" Text="Label" ForeColor="Red"></asp:Label>
               
            </div>
        </div>
    </div>
        <script type="43d20950b47f2197532fed15-text/javascript" src="../UI/Script/vendor.js"></script>
        <script type="43d20950b47f2197532fed15-text/javascript" src="../UI/Script/bundle.js"></script>
        <script src="../UI/Script/rocket-loader.min.js" data-cf-settings="43d20950b47f2197532fed15-|49" defer=""></script>
    
<div class="container"> 
    
 <div class="modal fade" id="myModalDep" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"> New Department </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          <label>Enter Department Name</label>
            <asp:TextBox ID="DepDDLPopTextBox" CssClass="form-control bor" placeholder ="Department Name" runat="server"></asp:TextBox>
        </div>
        <div class="modal-footer">
         <asp:Button ID="DepartmentPopButton" CssClass="form-control btns" runat="server" Text="Add Department" OnClick="DepartmentPopButton_Click"/>
        </div>
      </div>
      
    </div>
  </div>

       </div>
        
        
        
        
        
        <div class="container">
    <div class="modal fade" id="myModalDes" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"> New Designation </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          <label>Select Department Name</label>
            <asp:DropDownList ID="DepartmentPopUPDDList" CssClass="js-example form-control" Width="100%"  runat="server" AutoPostBack="false" AppendDataBoundItems="True">  
                     <asp:ListItem>--Select--</asp:ListItem>       
                </asp:DropDownList>
            <br /><br />
          <label>Enter Designation Name</label>
            <asp:TextBox ID="DesDDLPopTextBox" CssClass="form-control bor" placeholder ="Department Name" runat="server"></asp:TextBox>
        </div>
        <div class="modal-footer">
            <asp:Button ID="DesignationPopButton" CssClass="form-control btns" runat="server" Text="Add Designation" OnClick="DesignationPopButton_Click"/>
          
        </div>
      </div>
      </div>
    </div>
  </div>    
    </form>
      
</body>
</html>

