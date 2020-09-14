<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deptdashboardlink.aspx.cs" Inherits="ProclainPIMSMaster.Form.Deptdashboardlink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>RoleBasedDepartment</title>
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
        </style>
        <link href="../UI/Style/style.css" rel="stylesheet"/>
</head>
<body class="app">
    <form id="form1" runat="server" method="post">
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
            <div class="d-n@sm- peer peer-greed h-100 pos-r bgr-n bgpX-a bgpY-c bgsz-cv" style="background-image:url(../UI/assets/static/images/Log1.jpg)">
                <div class="pos-a Right-centerXY ">
                    <div class="bgc-white bdrs-50p pos-r" style="width:120px;height:120px">
                        <img class="pos-a centerXY" src="../UI/assets/static/images/logo1.png" alt=""/>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 peer pX-40 pY-80 h-100 bgc-white scrollable pos-r" style="min-width:320px">
                
    <div class="card" style="height:100%; background-color:bgc-grey-200;">
            <div class="card-header">
                <h4 align="center" style="color:gray">Role Based Dashboard</h4>
            </div>
            <div class="card-body" style="padding-left:30%; padding-top:10%;padding-bottom:10%;text-align:left;background-color:bgc-grey-200;">
                 <div id="rbd6" class="row-md-12">
                <asp:LinkButton runat="server" ID="lnkDBA" Visible="false"    style="border-radius:20px;margin-top:25px;font-style:italic;font-family:Calibri;" class="btn btn-primary" OnClick="lnkDBA_Click">DATA BANK MANAGER</asp:LinkButton></div>
               <br />
                <div id="rbd1" class="row-md-12">
               <asp:LinkButton runat="server" ID="comlogin" Visible="false" OnClick="comlogin_Click"   style="border-radius:20px;font-style:italic;font-family:Calibri;" class="btn btn-primary">COMMITTEE</asp:LinkButton></div>
                <div id="rbd2" class="row-md-12">
                <asp:LinkButton runat="server" ID="hodlogin" Visible="false" OnClick="hodlogin_Click"   style="border-radius:20px;margin-top:25px;font-style:italic;font-family:Calibri;" class="btn btn-primary">Manager</asp:LinkButton></div>
                
                
             <!--   <div id="rbd3" class="row-md-12">
                <asp:LinkButton runat="server" ID="implogin" Visible="false" OnClick="implogin_Click"  style="border-radius:20px;margin-top:25px;font-style:italic;font-family:Calibri;" class="btn btn-primary">IMPLEMENTTEAM</asp:LinkButton></div> -->
                
                <div id="rbd4" class="row-md-12">
                <asp:LinkButton runat="server" ID="hoslogin" Visible="false" OnClick="hoslogin_Click"  style="border-radius:20px;margin-top:25px;font-style:italic;font-family:Calibri;" class="btn btn-primary">HOD</asp:LinkButton></div>
                <div id="rbd5" class="row-md-12">
                <asp:LinkButton runat="server" ID="benlogin" Visible="false" OnClick="benlogin_Click"  style="border-radius:20px;margin-top:25px;font-style:italic;font-family:Calibri;" class="btn btn-primary">PHPVT_CODIR</asp:LinkButton></div>
               
                 <div id="rbd9" class="row-md-12">
                <asp:LinkButton runat="server" ID="benapprovallogin" Visible="false"  OnClick="benapprovallogin_Click"  style="border-radius:20px;margin-top:25px;font-style:italic;font-family:Calibri;" class="btn btn-primary">PHPVT_CODIR_Approval</asp:LinkButton></div>
                
                <div id="rbd8" class="row-md-12">
                <asp:LinkButton runat="server" ID="finlogin" Visible="false" OnClick="finlogin_Click"  style="border-radius:20px;margin-top:25px;font-style:italic;font-family:Calibri;" class="btn btn-primary">FINANCE</asp:LinkButton></div>
                
                <div id="rbd7" class="row-md-12">
                <asp:LinkButton runat="server" ID="emplogin" Visible="false" OnClick="emplogin_Click"  style="border-radius:20px;margin-top:25px;font-style:italic;font-family:Calibri;" class="btn btn-primary">EMPLOYEE</asp:LinkButton></div>
                









            </div>
            <div class="card-footer" style="padding-left:43%;">
                <a runat="server" href="javascript:history.go(-1)" class="btn btn-info" style="font-size:small; font-family:Calibri">Back</a>
                <asp:Button ID="btnLogout"  class="btn btn-danger" runat="server" Text="Logout" OnClick="btnLogout_Click" />
              </div>
        </div>
    
        </div>
</div>
                    <asp:Label ID="Label1" runat="server" Visible="false" Text="Label" ForeColor="Red"></asp:Label>
                
</div>
        
        
        <script type="43d20950b47f2197532fed15-text/javascript" src="../UI/Script/vendor.js"></script>
        <script type="43d20950b47f2197532fed15-text/javascript" src="../UI/Script/bundle.js"></script>
        <script src="../UI/Script/rocket-loader.min.js" data-cf-settings="43d20950b47f2197532fed15-|49" defer=""></script>
    
    
    </form>
</body>
</html>

