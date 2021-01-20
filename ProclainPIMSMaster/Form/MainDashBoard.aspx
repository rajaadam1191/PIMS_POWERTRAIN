<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainDashBoard.aspx.cs" Inherits="ProclainPIMSMaster.Form.MainDashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PIMS</title>
    
    <script src="../UI/Style/jquery.min.js"></script>
    <link href="../UI/Style/bootstrap.min.css" rel="stylesheet" />
    <script src="../UI/Style/bootstrap.min.js"></script>
    <script src="../UI/Style/popper.min.js"></script>
    
<style>
    .bgcolor {
        background: linear-gradient(to bottom, #ccccff 0%, #ffccff 100%);
        /*background-image: url("../UI/assets/static/images/mild.jpg") ;*/
        
    }
    .cardbgcolor{
        background: linear-gradient(to right, #006a9c 0%, #66ccff 100%);
       
       
    }
    body{
        
    }
    @media all and (max-width: 640px) {

        .screenresposive {
            width: 100% !important;
        }
    }
    @media all and (max-width: 800px) {

        .screenresposive {
            width: 100% !important;
        }
    }
    @media all and (max-width: 900px) {

        .screenresposive {
            
            width:100% !important;
        }
        }
         @media all and (max-width: 1000px) {

        .screenresposive {
            
            width:100% !important;
        }
        }
         @media all and (max-width: 1300px) {

        .screenresposive {
            
            width:100% !important;
        }
        }
         @media all and (max-width: 1400px) {

        .screenresposive {
            
            width:100% !important;
        }
        }
        
        
         @media all and (max-width: 1600px) {

        .screenresposive {
            
            width:100% !important;
        }
        }
         @media all and (max-width: 1800px) {

        .screenresposive {
            
            width:100% !important;
        }
        }
        @media all and (max-width: 1900px) {

        .screenresposive {
            
            width:100% !important;
        }
        }
        @media all and (max-width: 2000px) {

        .screenresposive {
            
            width:100% !important;
        }
              
    }
    .bckimg {
        background-image: url(../UI/assets/static/images/poster.JPG);
        background-repeat: no-repeat;
        background-size: cover;
         /*background-position: center;*/
    }
</style>
 <style>
  /* Make the image fully responsive */
  .carousel-inner {
    width: 100%;
    height: 100%;
  }
  </style>
  <style style="text/css">
div.slide-up {
  height:200px;
  overflow:hidden;
}
div.slide-up p {
  animation: 10s slide-up;
  margin-top:0%;
}

@keyframes slide-up {
  from {
    margin-top: 100%;
    height: 300%; 
  }

  to {
    margin-top: 0%;
    height: 100%;
  }
}
.carousel-control-prev-icon,
.carousel-control-next-icon {
  height: 50px;
  width: 50px!important;
  
  background-size: 30%, 30%;
 
  background-image: none;
}

.carousel-control-next-icon:after
{
  content: '>';
  font-size: 50px;
  color: red;
  padding-right:0px!important;
 
}

.carousel-control-prev-icon:after {
  content: '<';
  font-size: 50px;
  color: red;
  padding-left:0px!important;
  
  
}
.jumbotron{
padding-top:0% !important;
}

</style>
<style>
        .select2-container--default .select2-selection--single {
            border: 0px solid #aaa !important;
        }

        .select2-selection__rendered {
            padding: 6px 12px;
            font-size: 14px !important;
            font-size: .875rem !important;
            line-height: 1.5 !important;
            color: #495057 !important;
            background-color: #fff !important;
            background-clip: padding-box;
            border: 1px solid #ced4da !important;
            border-radius: .25rem !important;
        }

        .select2-container--default .select2-selection--single .select2-selection__clear {
            display: none !important;
            cursor: pointer !important;
            float: right !important;
            font-weight: bold !important;
        }

        c-grey-902 {
            color: #0200a5;
        }

        body {
            color: #0d196f !important;
        }

        .leftside .rightside {
            height: 100vh;
            width: 50%;
        }

        .list-group-item {
            border: 1px solid rgba(0, 0, 0, 0) !important;
        }

        .linka {
            color: #010101 !important;
        }

        .iconmenu {
            margin-right: 0px;
        }

        .inp {
            border: 1px solid #ced4da !important;
            border-radius: .25rem !important;
        }

        .textalign {
            text-align: justify;
        }


        .fnt {
            font-size: 14px !important;
            color: #72777a !important;
            letter-spacing: .2px !important;
        }

        #ContentPlaceHolder1_UpLoad1Tag {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        #ContentPlaceHolder1_UpLoad2Tag {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        #ContentPlaceHolder1_UpLoad3Tag {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        #ContentPlaceHolder1_UpLoad1Tag:hover {
            opacity: 0.7;
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
        }

        #ContentPlaceHolder1_UpLoad2Tag:hover {
            opacity: 0.7;
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
        }

        #ContentPlaceHolder1_UpLoad3Tag:hover {
            opacity: 0.7;
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
        }

        /* Modal Content (image) */
        .modal-content {
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
        }

        /* Caption of Modal Image */
        #caption {
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
            text-align: center;
            color: #ccc;
            padding: 10px 0;
            height: 150px;
        }

        /* Add Animation */
        .modal-content, #caption {
            -webkit-animation-name: zoom;
            -webkit-animation-duration: 0.6s;
            animation-name: zoom;
            animation-duration: 0.6s;
        }

        @-webkit-keyframes zoom {
            from {
                -webkit-transform: scale(0);
            }

            to {
                -webkit-transform: scale(1);
            }
        }

        @keyframes zoom {
            from {
                transform: scale(0);
            }

            to {
                transform: scale(1);
            }
        }

        /* The Close Button */
        .close {
            position: absolute;
            top: 15px;
            right: 35px;
            color: #f1f1f1;
            font-size: 40px;
            font-weight: bold;
            transition: 0.3s;
        }

            .close:hover,
            .close:focus {
                color: #bbb;
                text-decoration: none;
                cursor: pointer;
            }

        /* 100% Image Width on Smaller Screens */
        @media only screen and (max-width: 700px) {
            .modal-content {
                width: 100%;
            }
        }
    </style>
    <style>
        .card-body {
            display: contents !important;
            padding: 0px;
            background: !important;
        }

        .content-body .container-fluid {
            padding: 15px 30px 0;
        }

        .container-fluid {
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }

        .container-table100 {
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
        }

        .paginate_button.current:hover, .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
            color: #fff !important;
            background: #1e7ee0 !important;
        }

        table.dataTable tbody tr {
            background-color: none !important;
            background: linear-gradient(-68deg, #b4b1b5, #e0d9d9) !important;
        }

        .table100.ver6 table {
            background-color: transparent !important;
        }

        .table100.ver6 {
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
        }

            .table100.ver6 td {
                color: #232121;
            }

            .table100.ver6 th {
                color: #000 !important;
                background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
                /*background-color: lightgrey;*/
            }

        .m-b-110 {
            margin-bottom: 50px !important;
        }

        .reps {
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
        }

        .btns {
            background: linear-gradient(-68deg, #cec9cc, #bdbaba) !important;
            width: 40px !important;
            height: 40px !important;
        }

        .btn-hight {
            width: 40px !important;
            height: 40px !important;
        }

        .dataTables_wrapper .dataTables_filter input {
            border: 1px solid rgba(0,0,0,.0625) !important;
            border-bottom: #101010 !important;
            border-bottom-color: black !important;
            border-left: none !important;
            border-right: none !important;
            border-top: none !important;
            border-bottom-style: double !important;
        }

        input {
            background: none !important;
        }

        .bor {
            border: 1px solid #ced4da !important;
        }

        .apopbtn {
            background: linear-gradient(-68deg, #3618dc, #2b2f5d) !important;
            margin: 10px;
            color: #ffffff !important;
        }

        .fnt .mark, mark {
            background-color: #f0f3f500!important;
        }
        .mail{
        height:30%!important;
        }
    </style>
   
</head>
<body  class=" screenresposive" > 
    <form id="form1"  runat="server" class="jumbotron bckimg">
        <%--<div class="wow fadeIn" data-wow-duration="10s" data-wow-delay=".10s" >
          </div>--%>
            
                 <div class="text-right" style="padding-right:2%;">
                    
                       <b> <asp:LinkButton runat="server" ID="GoSignIn"  OnClick="GoSignIn_Click">Go SignIn</asp:LinkButton></b>
                    
                </div>
                <div class="row " style="height:100%;width:100%;">
                <div class="col-md-3  " style="height:100%;width:100%;" >
               <asp:Label runat="server" Text="CEO Message" style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif"></asp:Label>
               <div class="row" >
               <div class="col-md-12 h-25 mail">
               <div class="leftside no-gutters ">
               <div class="email-side-nav ">
               
                        <div class=" scrollable pos-r">
                            <div class="layer  fxg-1 jumbotron" style="padding-left: 15px; cursor:pointer;height: 250px!important;overflow:hidden;">
                               
                                <div class="peer fxw-nw bdB cur-p mail">
                                
                                <marquee direction="down" onmouseover="this.stop()" onmouseout="this.start()"scrolldelay="100"   style="font-family:Calibri;width:100%;height:300px;">
                                            
                                <asp:Repeater ID="MailRepeater" runat="server" >
                                  
                                    <ItemTemplate>
                                       
                                            <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <%--<asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>--%>             
                                            <div class="row">

                                                <div class="col-sm-12">
                                                    
                                                    <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("CEOMessage")%>' hidden></asp:TextBox>
                                                  
                                                    
                                                    
                                                </div>

                                                
                                                
                                                

                                            </div>
                                            
                                            <div class="row" style="margin-right: 1px;">
                                            
                                                <div id="viewdetail" class="col-sm-12 form-control "  style="border-top:none;border-left:none;border-right:none; border-bottom:none">
                                                    
                                                    <%# Eval("CEOMessage") %>
                                                    <br />
                                                   
                                                    <br />
                                                    <hr />
                                                   
                                                    
                                                </div>
                                                
                                            </div>
                                            
                                                <hr />
                                        </div>

                                    </ItemTemplate>
                                    
                                </asp:Repeater>

                                </marquee>
                                
                               
                                

                                </div>
                               
                            </div>
                        </div>
                    </div>
               </div>
               </div>
               </div>
               <asp:Label runat="server" Text="MD Message" style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif"></asp:Label>
               <div class="row">
               <div class="col-md-12 h-25 mail">
               <div class="leftside no-gutters ">
               <div class="email-side-nav  ">
               
                        <div class=" scrollable pos-r">
                            <div class="layer w-100 fxg-1 jumbotron" style="padding-left: 15px; cursor:pointer;height: 250px!important;overflow:hidden;">
                               
                                <div class="peer fxw-nw bdB cur-p mail">
                                
                                
                                <marquee direction="down" onmouseover="this.stop()" onmouseout="this.start()"scrolldelay="100"   style="height: 300px; width: 100%; font-family:Calibri;">
                                            
                                <asp:Repeater ID="MailRepeaterMD" runat="server" >
                                  
                                    <ItemTemplate>
                                       
                                            <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <%--<asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>--%>             
                                            <div class="row">

                                                <div class="col-sm-12">
                                                    
                                                    <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("MDMessage")%>' hidden></asp:TextBox>
                                                  
                                                    
                                                    
                                                </div>

                                                
                                                
                                                

                                            </div>
                                            
                                            <div class="row" style="margin-right: 1px;">
                                            
                                                <div id="viewdetail" class="col-sm-12 form-control "  style="border-top:none;border-left:none;border-right:none; border-bottom:none">
                                                    
                                                    <%# Eval("MDMessage") %>
                                                    <br />
                                                   
                                                    <br />
                                                    <hr />
                                                   
                                                    
                                                </div>
                                                
                                            </div>
                                            
                                                <hr />
                                        </div>

                                    </ItemTemplate>
                                    
                                </asp:Repeater>

                                </marquee>
                               
                               
                                

                                </div>
                               
                            </div>
                        </div>
                    </div>
               </div>
               </div>
               </div>
               <asp:Label runat="server" Text="Slogan" style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif"></asp:Label>
               <div class="row">
               <div class="col-md-12 h-50 mail">
               <div class="leftside no-gutters  ">
               <div class="email-side-nav ">
               
                        <div class=" scrollable pos-r">
                            <div class="layer w-100 fxg-1  jumbotron" style="padding-left: 15px; cursor:pointer;height: 250px!important;overflow:hidden;">
                               
                                <div class="peer fxw-nw bdB cur-p mail">
                                
                                
                                <marquee direction="down" onmouseover="this.stop()" onmouseout="this.start()"scrolldelay="100"   style="height: 300px; width: 100%; font-family:Calibri;">
                                            
                                <asp:Repeater ID="MailRepeaterSLO" runat="server" >
                                  
                                    <ItemTemplate>
                                       
                                            <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <%--<asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>--%>             
                                            <div class="row">

                                                <div class="col-sm-12">
                                                    
                                                    <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("Slogan")%>' hidden></asp:TextBox>
                                                  
                                                    
                                                    
                                                </div>

                                                
                                                
                                                

                                            </div>
                                            
                                            <div class="row" style="margin-right: 1px;">
                                            
                                                <div id="viewdetail" class="col-sm-12 form-control "  style="border-top:none;border-left:none;border-right:none; border-bottom:none">
                                                    
                                                    <%# Eval("Slogan") %>
                                                    <br />
                                                   
                                                    <br />
                                                    <hr />
                                                   
                                                    
                                                </div>
                                                
                                            </div>
                                            
                                                <hr />
                                        </div>

                                    </ItemTemplate>
                                    
                                </asp:Repeater>

                                </marquee>
                               
                                

                                </div>
                               
                            </div>
                        </div>
                    </div>
               </div>
               </div>
               </div>
                    
                </div>
                <%--bg-light rounded-lg shadow--%>
                <div class="col-md-9 " style="height:100%;width:100%;">
                
                
                <div class="col-md-12" style="height:100%;width:100%;">
                    <div id="demo" class="carousel slide" data-ride="carousel">

                      <!-- Indicators -->
                      <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        
                      </ul>
  
                      <!-- The slideshow -->
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                        <div class="text-center" style="padding-right:2%;">
                    
                           <b><asp:Label runat="server" ID="Month" Style="font-weight:bolder;font-family:'Times New Roman', Times, serif;font-size:x-large;">MONTH</asp:Label></b>
                    
                        </div>
                                <div class="row">
                                                        <div class="col-md-4" >
							                               <div class="card shadow p-3 mb-5 bg-white rounded " style="border-radius:20px;"  >
							                                  <div class="card-header"style="height:100%;width:100%;">
								                                  <h6><center>FIRST</center></h6>
								                              </div>
								                              <div class="card-BODY" style="width:100%;height:160px;">
                                      
                                                                  <img src="../UI/Image/altImg.jpg" class="rounded-circle mx-auto d-block img-fluid" style="width: 62%;margin-left: 21%;height:100%;" runat="server" id="rank1img" />
								                              </div>
                                                               <div class="card-footer"style="height:100%;width:100%;">
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>ID:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank1Id" Font-Bold="true" ></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Name:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank1Name" Font-Bold="true" ></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Idea:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank1count" Font-Bold="true" ></asp:Label></div>
                                                                   </div>
                                      
                                       
                                   
                                                                       </div>
							                               
                                                            
                                                            
						                                    </div>
							                            </div>
							                             <div class="col-md-4" >
							                             <div class="card shadow p-3 mb-5 bg-white rounded " style="border-radius:20px;">
							                                   <div class="card-header"style="height:100%;width:100%;">
								                                  <h6><center>SECOND</center></h6>
								                              </div>
								                              <div class="card-BODY"style="width:100%;height:160px;">
                                                                  <img src="../UI/Image/altImg.jpg" class="rounded-circle mx-auto d-block img-fluid" style="width: 62%;margin-left: 21%;height:100%;" runat="server" id="rank2img"/>
								      
								                              </div>
                                                               <div class="card-footer"style="height:100%;width:100%;">
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>ID:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank2Id" Font-Bold="true" ></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Name:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank2Name" Font-Bold="true" ></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Idea:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank2count" Font-Bold="true" ></asp:Label></div>
                                                                   </div>
                                      
                                           
                                           
                                                               </div>
							                               </div>
						    
							                            </div>
							                             <div class="col-md-4" >
							                             <div class="card shadow p-3 mb-5 bg-white rounded " style="border-radius:20px;">
							                                   <div class="card-header"style="height:100%;width:100%;">
								                                  <h6><center>THIRD</center></h6>
								                              </div>
								                              <div class="card-BODY"style="width:100%;height:160px;">
                                                                  <img src="../UI/Image/altImg.jpg" class="rounded-circle mx-auto d-block img-fluid" style="width: 62%;margin-left: 21%;height:100%;" runat="server" id="rank3img"/>
								      
								                              </div>
                                                               <div class="card-footer"style="height:100%;width:100%;">
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>ID:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank3Id" Font-Bold="true" ></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Name:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank3Name" Font-Bold="true" ></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Idea:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank3count" Font-Bold="true" ></asp:Label></div>
                                                                   </div>
                                     
                                           
                                           
                                                               </div>
							                               </div>
						    
							                            </div>
			                            </div>
                        </div>
                        <div class="carousel-item">
                        <div class="text-center" style="padding-right:2%;">
                    
                            <b> <asp:Label runat="server" ID="year" Style="font-weight:bolder;font-family:'Times New Roman', Times, serif;font-size:x-large;">YEAR</asp:Label></b>
                    
                        </div>
                                 <div class="row">
                                                         <div class="col-md-4" >
							                               <div class="card shadow p-3 mb-5 bg-white rounded " style="border-radius:20px;">
							                                  <div class="card-header" style="height:100%;width:100%;">
								                                  <h6><center>FIRST</center></h6>
								                              </div>
								                              <div class="card-BODY" style="height:160px;width:100%;">
                                                                  <img src="../UI/Image/altImg.jpg" class="rounded-circle mx-auto d-block img-fluid" style="width: 62%;margin-left: 21%;height:100%;" runat="server" id="yearrank1img" />
								                                  
                                       
								                              </div>
                                                               <div class="card-footer" style="height:100%;width:100%;">
                                                                  <div class="row">
                                                                       <div class="col-md-5"><b>ID:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank1yearId" Font-Bold="true"></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Name:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank1yearName" Font-Bold="true"></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Idea:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank1yearcount" Font-Bold="true"></asp:Label></div>
                                                                   </div>
                                      
                                           
                                          
                                                               </div>
							                               </div>
						    
							                            </div>
							                             <div class="col-md-4" >
							                             <div class="card shadow p-3 mb-5 bg-white rounded " style="border-radius:20px;">
							                                   <div class="card-header"style="height:100%;width:100%;">
								                                  <h6><center>SECOND</center></h6>
								                              </div>
								                              <div class="card-BODY"style="width:100%;height:160px;">
                                                                  <img src="../UI/Image/altImg.jpg" class="rounded-circle mx-auto d-block img-fluid" style="width: 62%;margin-left: 21%;height:100%;" runat="server" id="yearrank2img"/>
								      
								                              </div>
                                                               <div class="card-footer"style="height:100%;width:100%;">
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>ID:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank2yearId" Font-Bold="true"></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Name:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank2yearName" Font-Bold="true"></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Idea:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank2yearcount" Font-Bold="true"></asp:Label></div>
                                                                   </div>
                                      
                                           
                                           
                                                               </div>
							                               </div>
						    
							                            </div>
							                             <div class="col-md-4" >
							                             <div class="card shadow p-3 mb-5 bg-white rounded " style="border-radius:20px;">
							                                   <div class="card-header"style="width:100%;">
								                                  <h6><center>THIRD</center></h6>
								                              </div>
								                              <div class="card-BODY"style="width:100%;height:160px;">
                                                                  <img src="../UI/Image/altImg.jpg" class="rounded-circle mx-auto d-block img-fluid" style="width: 62%;margin-left: 21%;height:100%;" runat="server" id="yearrank3img"/>
								      
								                              </div>
                                                               <div class="card-footer"style="height:100%;width:100%;">
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>ID:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank3yearId" Font-Bold="true"></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Name:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank3yearName" Font-Bold="true"></asp:Label></div>
                                                                   </div>
                                                                   <div class="row">
                                                                       <div class="col-md-5"><b>Idea:</b></div>
                                                                       <div class="col-md-7"><asp:Label runat="server" ID="rank3yearcount" Font-Bold="true"></asp:Label></div>
                                                                   </div>
                                       
                                           
                                           
                                                               </div>
							                               </div>
						    
							                            </div>
			                            </div>
                        </div>
                        
                      </div>
  
                      <!-- Left and right controls -->
                      <a class="carousel-control-prev" href="#demo" data-slide="prev" style="color:black">
                        <span class="carousel-control-prev-icon" ></span>
                      </a>
                      <a class="carousel-control-next" href="#demo" data-slide="next" style="color:black">
                        <span class="carousel-control-next-icon" ></span>
                      </a>
                    </div>
                </div>
                <div class="col-md-12" style="height:100%;width:100%;">
                  <div id="demo1" class="carousel slide" data-ride="carousel">

                      <!-- Indicators -->
                      <ul class="carousel-indicators">
                        <li data-target="#demo1" data-slide-to="0" class="active" style="background-color:#b45858;"></li>
                        <li data-target="#demo1" data-slide-to="1" style="background-color:#b45858;"></li>
                        <li data-target="#demo1" data-slide-to="2" style="background-color:#b45858;"></li>
                        <li data-target="#demo1" data-slide-to="3" style="background-color:#b45858;"></li>
                      </ul>
  
                      <!-- The slideshow -->
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                             <div class="row">
                                        <div class="col-md-6">
                                   
                                    <div class="card shadow p-3 mb-5 bg-white rounded  "  >				     
                                            <div id="chartContainer1" class="bgcolor" style="height:400px;width:100%;"></div>
							        </div>
                                        </div>
                                        <div class="col-md-6">
                                   
                                    <div class="card shadow p-3 mb-5 bg-white rounded  "  >				     
                                        <div id="chartContainer2" class="bgcolor" style="height:400px;width:100%;"></div>
							        </div>
                                        </div>
                             </div>
                        </div>
                        <div class="carousel-item">
                                   
                                    <div class="card shadow p-3 mb-5 bg-white rounded  "  >				     
                                        <div id="chartContainer3" class="bgcolor" style="height:400px;width:100%;"></div>
							        </div>
                        </div>
                        <div class="carousel-item">
                                    
                                      				
                                    <div class="card shadow p-3 mb-5 bg-white rounded  "  >				     
                                        <div id="chartContainer4" class="bgcolor" style="height:400px;width:100%;"></div>
							        </div>
                        </div>
                        <div class="carousel-item">
                                    
                                      				
                                    <div class="card shadow p-3 mb-5 bg-white rounded  "  >				     
                                        <div id="chartContainer5" class="bgcolor" style="height:400px;width:100%;"></div>
							        </div>
                        </div>
                      </div>
  
                      <!-- Left and right controls -->
                      <%--<a class="carousel-control-prev" href="#demo1" data-slide="prev" style="color:black;padding-left:0px!important">
                        <span class="carousel-control-prev-icon" ></span>
                      </a>
                      <a class="carousel-control-next" href="#demo1" data-slide="next" style="color:red;padding-right:0px!important">
                        <span class="carousel-control-next-icon" ></span>
                      </a>--%>
                    </div>
             
                </div>
                
                

                </div>
                </div>
	    
                 <script >
                                      				    
                      function BarChartYear(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected) {

                                   		    console.log('method called ',oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected);
                                   		    var totrec = [parseInt(oneyrbrsuggestionreceived)];
                                   		    var accepted = [parseInt(oneyrbraccepted)];
                                   		    var rejected = [parseInt(oneyrbrrejected)];
                                      				          
                                            var myConfig = {
                                                "graphset": [{
                                                    "globals": {
                                                        "font-family": "Lato",
                                                        "title": {
                                                            "text": "Suggestions 2021",

                                                            "backgroundColor": "none",
                                                            "font-size": "22px",
                                                            "alpha": 1,
                                                            "adjust-layout": true,
                                                        },
                                                    },
                                                    "type": "bar",
                                                    '3dAspect': {
                                                        depth: 10,
                                                        true3d: 0,
                                                        yAngle: 10
                                                    },
                                                "background-color": "white",
                                                
                                                "plotarea": {
                                                    "margin": "dynamic"
                                                },
                                               
                                                "plot": {
                                                    "bars-space-left": 0.15,
                                                    "bars-space-right": 0.15,
                                                    "styles": ["#ff9966", "#3399ff", "#ff3300"],
                                                    "animation": {
                                                    "effect": "ANIMATION_SLIDE_BOTTOM",
                                                    "sequence": 0,
                                                    "speed": 800,
                                                    "delay": 800,
                                                    
                                                    }
                                                },
                                               
                                                "scaleX": {
                                                    "values": [
                                                    "Suggestion Received",
                                                    "Accepted",
                                                    "Rejected",
           
									
                                                    ],
                                                    "placement": "default",
                                                    "tick": {
                                                        "size": 58,
                                                        "placement": "cross",
                                                        "alpha":0.3,
                                                    },
                                                    "itemsOverlap": true,
                                                    "item": {
                                                    "offsetY": -55
                                                    }
                                                },
        
                                                "tooltip": {
                                                    "shadow": true,
                                                    "shadowColor": "#424242",
                                                    "backgroundColor": "#212121 #424242",
                                                    "callout": true,
                                                    "calloutPosition": "bottom",
                                                    "offsetY": -20,
                                                    "placement": "node:top",
                                                    "padding": 10,
                                                    "fontSize": 15,
                                                    "color": "#ffffff",
                                                    "borderWidth": 1,
                                                    "borderColor": "#000000",
                                                    
                                                },
                                                "crosshair-x": {
                                                    "line-width": "100%",
                                                    "alpha": 0.18,
                                                    "plot-label": {
                                                    "header-text": "%kv"
                                                    }
                                                },
                                                "series": [{
                                                    "values": [
                                                        parseInt(oneyrbrsuggestionreceived),
                                                        parseInt(oneyrbraccepted),
                                                        parseInt(oneyrbrrejected)
                
			  
                                                    ],
                                                   
                                                   
                                                    "valueBox": [{
                                                        "fontSize": 10,
                                                        "fontWeight": 600,
                                                        "offsetY": -8,
                                                        "jsRule": "rule_series_123_valueBox_0()",
                                                        
                                                    }]
                                                }]
                                                
         
		  
          
                                                
                                                }]
                                            };
 
                                            zingchart.render({
                                                    id: 'chartContainer1',
                                                    data: myConfig,
                                                    height: '100%',
                                                    width: '100%'
                                                });
  
                                      	}
                                      				    
                 </script>

                 <script >
                      function PieChartYear(oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted) {
                                      		//oneyrpiimplemented  oneyrpiaccepted  oneyrpitotalsuggestion
                                      		console.log('zing pie ', oneyrpiimplemented, oneyrpiaccepted, oneyrpitotalsuggestion);
                                      		var myConfig2 = {
                                      		    "globals": {
                                      		        "font-family": "Lato",
                                      		        "title": {
                                      		            "text": "Suggestion vs Implementation"
                                      		        },
                                      		    },
                                      			"type": "ring3d",
                                      			
                                      			//"plot": {
                                      			//    'offset-r': "10%" //provide percentage value

                                      			//},

                                      			"series": [{
                                      				"values": [parseInt(oneyrpiimplemented)],
                                      				"text": "Implemented"
                                      			},
                                                    {
                                                                     
                                                        "values": [parseInt(oneyrpiaccepted)],
                                      				    "text": "Accepted"
                                                    },
                                                    {
                                                                      
                                                        "values": [parseInt(oneyrpitotalsuggestion)],
                                      				    "text":"Total Suggestion"
                                                    },
                                                                  
                                      			]
                                      		};

                                      		zingchart.render({
                                      			id: 'chartContainer2',
                                      			data: myConfig2,
                                      			height: "100%",
                                      			width: "100%"
                                      		});
                                      	}
                                      				    
                 </script>	
                                    
                 <script>
                      function BarChartYearDept(oneyrdeptdepname1, oneyrdepttotalimplement1, oneyrdeptimplemented1, oneyrdeptyettoimplement1, oneyrdeptdepname2, oneyrdepttotalimplement2, oneyrdeptimplemented2, oneyrdeptyettoimplement2, oneyrdeptdepname3, oneyrdepttotalimplement3, oneyrdeptimplemented3, oneyrdeptyettoimplement3, oneyrdeptdepname4, oneyrdepttotalimplement4, oneyrdeptimplemented4, oneyrdeptyettoimplement4, oneyrdeptdepname5, oneyrdepttotalimplement5, oneyrdeptimplemented5, oneyrdeptyettoimplement5, oneyrdeptdepname6, oneyrdepttotalimplement6, oneyrdeptimplemented6, oneyrdeptyettoimplement6, oneyrdeptdepname7, oneyrdepttotalimplement7, oneyrdeptimplemented7, oneyrdeptyettoimplement7, oneyrdeptdepname8, oneyrdepttotalimplement8, oneyrdeptimplemented8, oneyrdeptyettoimplement8, oneyrdeptdepname9, oneyrdepttotalimplement9, oneyrdeptimplemented9, oneyrdeptyettoimplement9, oneyrdeptdepname10, oneyrdepttotalimplement10, oneyrdeptimplemented10, oneyrdeptyettoimplement10, oneyrdeptdepname11, oneyrdepttotalimplement11, oneyrdeptimplemented11, oneyrdeptyettoimplement11, oneyrdeptdepname12, oneyrdepttotalimplement12, oneyrdeptimplemented12, oneyrdeptyettoimplement12, oneyrdeptdepname13, oneyrdepttotalimplement13, oneyrdeptimplemented13, oneyrdeptyettoimplement13, oneyrdeptdepname14, oneyrdepttotalimplement14, oneyrdeptimplemented14, oneyrdeptyettoimplement14, oneyrdeptdepname15, oneyrdepttotalimplement15, oneyrdeptimplemented15, oneyrdeptyettoimplement15, oneyrdeptdepname16, oneyrdepttotalimplement16, oneyrdeptimplemented16, oneyrdeptyettoimplement16, oneyrdeptdepname17, oneyrdepttotalimplement17, oneyrdeptimplemented17, oneyrdeptyettoimplement17, oneyrdeptdepname18, oneyrdepttotalimplement18, oneyrdeptimplemented18, oneyrdeptyettoimplement18, oneyrdeptdepname19, oneyrdepttotalimplement19, oneyrdeptimplemented19, oneyrdeptyettoimplement19) {
                                      			        var myConfig = {
                                      			            "graphset": [{
                                      			                "globals": {
                                      			                    "font-family": "Lato",
                                      			                    "title": {
                                      			                        "text": "Implementation by Dept Wise",

                                      			                        "backgroundColor": "none",
                                      			                        "font-size": "22px",
                                      			                        "alpha": 1,
                                      			                        "adjust-layout": true,
                                      			                    },
                                      			                },
                                      			                "type": "bar",
                                      			                '3dAspect': {
                                      			                    depth: 10,
                                      			                    true3d: 0,
                                      			                    yAngle: 10
                                      			                },
                                      			                "background-color": "white",
                                      			                
                                      			                "plotarea": {
                                      			                    "margin": "dynamic"
                                      			                },
                                      			                "legend": {
                                      			                    "layout": "x3",
                                      			                    "overflow": "page",
                                      			                    "alpha": 0.05,
                                      			                    "shadow": false,
                                      			                    "align": "center",
                                      			                    "adjust-layout": true,
                                      			                    "marker": {
                                      			                        "type": "circle",
                                      			                        "border-color": "none",
                                      			                        "size": "10px"
                                      			                    },
                                      			                    "border-width": 0,
                                      			                    "maxItems": 3,
                                      			                    "toggle-action": "hide",
                                      			                    "pageOn": {
                                      			                        "backgroundColor": "#000",
                                      			                        "size": "10px",
                                      			                        "alpha": 0.65
                                      			                    },
                                      			                    "pageOff": {
                                      			                        "backgroundColor": "#7E7E7E",
                                      			                        "size": "10px",
                                      			                        "alpha": 0.65
                                      			                    },
                                      			                    "pageStatus": {
                                      			                        "color": "black"
                                      			                    }
                                      			                },
                                      			                "plot": {
                                      			                    "bars-space-left": 0.15,
                                      			                    "bars-space-right": 0.15,
                                      			                    "animation": {
                                      			                        "effect": "ANIMATION_SLIDE_BOTTOM",
                                      			                        "sequence": 0,
                                      			                        "speed": 800,
                                      			                        "delay": 800
                                      			                    }
                                      			                },
                                      			                "scale-y": {
                                      			                    "line-color": "#7E7E7E",
                                      			                    "item": {
                                      			                        "font-color": "#7e7e7e"
                                      			                    },
                                      			                    
                                      			                    "guide": {
                                      			                        "visible": true
                                      			                    },
                                      			                    "label": {
                                      			                        "text": "Suggestions",
                                      			                        "font-family": "arial",
                                      			                        "bold": true,
                                      			                        "font-size": "14px",
                                      			                        "font-color": "#7E7E7E",
                                      			                    },
                                      			                },
                                      			                "scaleX": {
                                      			                    "values": [
                                                                      "ADMIN",
                                                                      "AFTMRKT",
                                                                      "APP.ENGG",
                                                                      "FIN",
                                                                      "HR",
                                                                      "INNOV",
                                                                      "IT",
                                                                      "LOG",
                                                                      "MAINT",
                                                                      "MAN.ENGG",
                                                                      "PLT.MGMT",
                                                                      "PROD",
                                                                      "ABU",
                                                                      "MBU",
                                                                      "P.TRAIN",
                                                                      "QUA",
                                                                      "SALE&SUPP",
                                                                      "SOUR",
                                                                      "GNRL.MGMT"

                                      			                    ],
                                      			                    "guide": {
                                      			                        visible: true
                                      			                    },
                                      			                    "placement": "default",
                                      			                    "item": {
                                      			                        "offsetY": 5,
                                      			                        "angle": 270
                                      			                    },
                                      			                    "tick": {
                                      			                        "size": 2
                                      			                    }
                                      			                },

                                      			                "tooltip": {
                                      			                    "visible": false
                                      			                },
                                      			                "crosshair-x": {
                                      			                    "line-width": "100%",
                                      			                    "alpha": 0.18,
                                      			                    "plot-label": {
                                      			                        "header-text": "%kv "
                                      			                    }
                                      			                },
                                      			                "series": [{
                                      			                    "values": [
                                                                     parseInt(oneyrdepttotalimplement1),
                                                                      parseInt(oneyrdepttotalimplement2),
                                                                      parseInt(oneyrdepttotalimplement3),
                                                                      parseInt(oneyrdepttotalimplement4),
                                                                      parseInt(oneyrdepttotalimplement5),
                                                                      parseInt(oneyrdepttotalimplement6),
                                                                      parseInt(oneyrdepttotalimplement7),
                                                                      parseInt(oneyrdepttotalimplement8),
                                                                      parseInt(oneyrdepttotalimplement9),
                                                                      parseInt(oneyrdepttotalimplement10),
                                                                      parseInt(oneyrdepttotalimplement11),
                                                                      parseInt(oneyrdepttotalimplement12),
                                                                      parseInt(oneyrdepttotalimplement13),
                                                                      parseInt(oneyrdepttotalimplement14),
                                                                      parseInt(oneyrdepttotalimplement15),
                                                                      parseInt(oneyrdepttotalimplement16),
                                                                      parseInt(oneyrdepttotalimplement17),
                                                                      parseInt(oneyrdepttotalimplement18),
                                                                      parseInt(oneyrdepttotalimplement19)

                                      			                    ],
                                      			                    "alpha": 0.95,
                                      			                    "borderRadiusTopLeft": 7,
                                      			                    "background-color": "#ff9966",
                                      			                    "text": "Total Implement",
                                      			                    "valueBox": [{
                                      			                        "fontSize": 10,
                                      			                        "fontWeight": 600,
                                      			                        "offsetY": -8,
                                      			                        "jsRule": "rule_series_123_valueBox_0()"
                                      			                    }]
                                      			                },
                                                                  {
                                                                      "values": [
                                                                        parseInt(oneyrdeptimplemented1),
                                                                        parseInt(oneyrdeptimplemented2),
                                                                        parseInt(oneyrdeptimplemented3),
                                                                        parseInt(oneyrdeptimplemented4),
                                                                        parseInt(oneyrdeptimplemented5),
                                                                        parseInt(oneyrdeptimplemented6),
                                                                        parseInt(oneyrdeptimplemented7),
                                                                        parseInt(oneyrdeptimplemented8),
                                                                        parseInt(oneyrdeptimplemented9),
                                                                        parseInt(oneyrdeptimplemented10),
                                                                        parseInt(oneyrdeptimplemented11),
                                                                        parseInt(oneyrdeptimplemented12),
                                                                        parseInt(oneyrdeptimplemented13),
                                                                        parseInt(oneyrdeptimplemented14),
                                                                        parseInt(oneyrdeptimplemented15),
                                                                        parseInt(oneyrdeptimplemented16),
                                                                        parseInt(oneyrdeptimplemented17),
                                                                        parseInt(oneyrdeptimplemented18),
                                                                        parseInt(oneyrdeptimplemented19)
                                                                      ],
                                                                      "borderRadiusTopLeft": 7,
                                                                      "alpha": 0.95,
                                                                      "background-color": "#33cc33",
                                                                      "text": "Implemented",
                                                                      "valueBox": [{
                                                                          "fontSize": 10,
                                                                          "fontWeight": 600,
                                                                          "offsetY": -8,
                                                                          "jsRule": "rule_series_123_valueBox_0()"
                                                                      }]
                                                                  },
                                                                  {
                                                                      "values": [
                                                                        parseInt(oneyrdeptyettoimplement1),
                                                                        parseInt(oneyrdeptyettoimplement2),
                                                                        parseInt(oneyrdeptyettoimplement3),
                                                                        parseInt(oneyrdeptyettoimplement4),
                                                                        parseInt(oneyrdeptyettoimplement5),
                                                                        parseInt(oneyrdeptyettoimplement6),
                                                                        parseInt(oneyrdeptyettoimplement7),
                                                                        parseInt(oneyrdeptyettoimplement8),
                                                                        parseInt(oneyrdeptyettoimplement9),
                                                                        parseInt(oneyrdeptyettoimplement10),
                                                                        parseInt(oneyrdeptyettoimplement11),
                                                                        parseInt(oneyrdeptyettoimplement12),
                                                                        parseInt(oneyrdeptyettoimplement13),
                                                                        parseInt(oneyrdeptyettoimplement14),
                                                                        parseInt(oneyrdeptyettoimplement15),
                                                                        parseInt(oneyrdeptyettoimplement16),
                                                                        parseInt(oneyrdeptyettoimplement17),
                                                                        parseInt(oneyrdeptyettoimplement18),
                                                                        parseInt(oneyrdeptyettoimplement19)
                                                                      ],
                                                                      "alpha": 0.95,
                                                                      "borderRadiusTopLeft": 7,
                                                                      "background-color": "#cc9900",
                                                                      "text": "Yet To Implement",
                                                                      "valueBox": [{
                                                                          "fontSize": 10,
                                                                          "fontWeight": 600,
                                                                          "offsetY": -8,
                                                                          "jsRule": "rule_series_123_valueBox_0()"
                                                                      }]
                                                                  },

                                      			                ]
                                      			            }]
                                      			        };

                                      			        zingchart.render({
                                      			            id: 'chartContainer3',
                                      			            data: myConfig,
                                      			            height: '100%',
                                      			            width: '100%'
                                      			        });
                                      			    }
                 </script>	
                                                
                 <script>
                      function BarChartYearMonth(oneyrmntmonths1, oneyrmntreceived1, oneyrmntaccepted1, oneyrmntreject1, oneyrmnthold1, oneyrmntimplemented1, oneyrmntmonths2, oneyrmntreceived2, oneyrmntaccepted2, oneyrmntreject2, oneyrmnthold2, oneyrmntimplemented2, oneyrmntmonths3, oneyrmntreceived3, oneyrmntaccepted3, oneyrmntreject3, oneyrmnthold3, oneyrmntimplemented3, oneyrmntmonths4, oneyrmntreceived4, oneyrmntaccepted4, oneyrmntreject4, oneyrmnthold4, oneyrmntimplemented4, oneyrmntmonths5, oneyrmntreceived5, oneyrmntaccepted5, oneyrmntreject5, oneyrmnthold5, oneyrmntimplemented5, oneyrmntmonths6, oneyrmntreceived6, oneyrmntaccepted6, oneyrmntreject6, oneyrmnthold6, oneyrmntimplemented6, oneyrmntmonths7, oneyrmntreceived7, oneyrmntaccepted7, oneyrmntreject7, oneyrmnthold7, oneyrmntimplemented7, oneyrmntmonths8, oneyrmntreceived8, oneyrmntaccepted8, oneyrmntreject8, oneyrmnthold8, oneyrmntimplemented8, oneyrmntmonths9, oneyrmntreceived9, oneyrmntaccepted9, oneyrmntreject9, oneyrmnthold9, oneyrmntimplemented9, oneyrmntmonths10, oneyrmntreceived10, oneyrmntaccepted10, oneyrmntreject10, oneyrmnthold10, oneyrmntimplemented10, oneyrmntmonths11, oneyrmntreceived11, oneyrmntaccepted11, oneyrmntreject11, oneyrmnthold11, oneyrmntimplemented11, oneyrmntmonths12, oneyrmntreceived12, oneyrmntaccepted12, oneyrmntreject12, oneyrmnthold12, oneyrmntimplemented12) {

                                                              var chartId = 'myChart';

                                                             
                                                              var dataHold = [
                                                                               parseInt(oneyrmnthold1),
                                                                               parseInt(oneyrmnthold2),
                                                                               parseInt(oneyrmnthold3),
                                                                               parseInt(oneyrmnthold4),
                                                                               parseInt(oneyrmnthold5),
                                                                               parseInt(oneyrmnthold6),
                                                                               parseInt(oneyrmnthold7),
                                                                               parseInt(oneyrmnthold8),
                                                                               parseInt(oneyrmnthold9),
                                                                               parseInt(oneyrmnthold10),
                                                                               parseInt(oneyrmnthold11),
                                                                               parseInt(oneyrmnthold12)

                                                              ];
                                                              var dataRecive = [
                                                                          parseInt(oneyrmntreceived1),
                                                                          parseInt(oneyrmntreceived2),
                                                                          parseInt(oneyrmntreceived3),
                                                                          parseInt(oneyrmntreceived4),
                                                                          parseInt(oneyrmntreceived5),
                                                                          parseInt(oneyrmntreceived6),
                                                                          parseInt(oneyrmntreceived7),
                                                                          parseInt(oneyrmntreceived8),
                                                                          parseInt(oneyrmntreceived9),
                                                                           parseInt(oneyrmntreceived10),
                                                                          parseInt(oneyrmntreceived11),
                                                                          parseInt(oneyrmntreceived12)


                                                              ];
                                                              var dataAcc = [
                                                                          parseInt(oneyrmntaccepted1),
                                                                          parseInt(oneyrmntaccepted2),
                                                                          parseInt(oneyrmntaccepted3),
                                                                          parseInt(oneyrmntaccepted4),
                                                                          parseInt(oneyrmntaccepted5),
                                                                          parseInt(oneyrmntaccepted6),
                                                                          parseInt(oneyrmntaccepted7),
                                                                          parseInt(oneyrmntaccepted8),
                                                                          parseInt(oneyrmntaccepted9),
                                                                          parseInt(oneyrmntaccepted10),
                                                                          parseInt(oneyrmntaccepted11),
                                                                          parseInt(oneyrmntaccepted12)

                                                              ];
                                                              var dataReject = [
                                                                          parseInt(oneyrmntreject1),
                                                                          parseInt(oneyrmntreject2),
                                                                          parseInt(oneyrmntreject3),
                                                                          parseInt(oneyrmntreject4),
                                                                          parseInt(oneyrmntreject5),
                                                                          parseInt(oneyrmntreject6),
                                                                          parseInt(oneyrmntreject7),
                                                                          parseInt(oneyrmntreject8),
                                                                          parseInt(oneyrmntreject9),
                                                                          parseInt(oneyrmntreject10),
                                                                          parseInt(oneyrmntreject11),
                                                                          parseInt(oneyrmntreject12)

                                                              ];
                                                              var dataImp = [
                                                                         parseInt(oneyrmntimplemented1),
                                                                         parseInt(oneyrmntimplemented2),
                                                                         parseInt(oneyrmntimplemented3),
                                                                         parseInt(oneyrmntimplemented4),
                                                                         parseInt(oneyrmntimplemented5),
                                                                         parseInt(oneyrmntimplemented6),
                                                                         parseInt(oneyrmntimplemented7),
                                                                         parseInt(oneyrmntimplemented8),
                                                                         parseInt(oneyrmntimplemented9),
                                                                         parseInt(oneyrmntimplemented10),
                                                                         parseInt(oneyrmntimplemented11),
                                                                         parseInt(oneyrmntimplemented12)

                                                              ];
                                                              console.log('myConfigBarChartYearMonth', dataRecive, dataAcc, dataReject, dataHold, dataImp);
                                                              var myConfigBarChartYearMonth = {
                                                                  "graphset": [{
                                                                      "globals": {
                                                                          "font-family": "Lato",

                                                                          "title": {
                                                                              "text": "Suggestions 2021 Report",
                                                                              
                                                                              "backgroundColor": "none",
                                                                              "font-size": "22px",
                                                                              "alpha": 1,
                                                                              "adjust-layout": true,
                                                                          }
                                                                      },
                                                                      type: 'bar',
                                                                      '3dAspect': {
                                                                          depth: 10,
                                                                          true3d: 0,
                                                                          yAngle: 10
                                                                      },
                                                                      "plotarea": {
                                                                          "margin": "dynamic"
                                                                      },
                                                                      "legend": {
                                                                          "layout": "x3",
                                                                          "overflow": "page",
                                                                          "alpha": 0.05,
                                                                          "shadow": false,
                                                                          "align": "center",
                                                                          "adjust-layout": true,
                                                                          "marker": {
                                                                              "type": "circle",
                                                                              "border-color": "none",
                                                                              "size": "10px"
                                                                          },
                                                                          "border-width": 0,
                                                                          "maxItems": 3,
                                                                          "toggle-action": "hide",
                                                                          "pageOn": {
                                                                              "backgroundColor": "#000",
                                                                              "size": "10px",
                                                                              "alpha": 0.65
                                                                          },
                                                                          "pageOff": {
                                                                              "backgroundColor": "#7E7E7E",
                                                                              "size": "10px",
                                                                              "alpha": 0.65
                                                                          },
                                                                          "pageStatus": {
                                                                              "color": "black"
                                                                          }
                                                                      }
                                                                    , "plot": {
                                                                        "bars-space-left": 0.15,
                                                                        "bars-space-right": 0.15,
                                                                        "animation": {
                                                                            "effect": "ANIMATION_SLIDE_BOTTOM",
                                                                            "sequence": 0,
                                                                            "speed": 800,
                                                                            "delay": 800
                                                                        }
                                                                    },
                                                                      "scaleX": {
                                                                          "values": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                                                                          "guide": {
                                                                              visible: true
                                                                          },
                                                                          "item": {
                                                                              "offsetY": 5,
                                                                              "angle": 270
                                                                          },
                                                                          "tick": {
                                                                              "size": 2
                                                                          }
                                                                      },


                                                                      "tooltip": {
                                                                          "shadow": true,
                                                                          "shadowColor": "#424242",
                                                                          "backgroundColor": "#212121 #424242",
                                                                          "callout": true,
                                                                          "calloutPosition": "bottom",
                                                                          "offsetY": -20,
                                                                          "placement": "node:top",
                                                                          "padding": 10,
                                                                          "fontSize": 15,
                                                                          "color": "#ffffff",
                                                                          "borderWidth": 1,
                                                                          "borderColor": "#000000",
                                                                          
                                                                      },
                                                                      "crosshair-x": {
                                                                          "line-width": "100%",
                                                                          "alpha": 0.4,
                                                                      },
                                                                      "series": [
                                                                      {
                                                                          "values": dataRecive,
                                                                          "text": "Received",
                                                                          "background-color": "#ff9966",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      },
                                                                      {
                                                                          "values": dataAcc,
                                                                          "text": "Accepted",
                                                                          "background-color": "#3399ff",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      }, {
                                                                          "values": dataReject,
                                                                          "text": "Reject",
                                                                          "background-color": "#ff3300",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -10,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      }, {
                                                                          "values": dataHold,
                                                                          "text": "Not Feasible",
                                                                          "background-color": "#ff9933",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      }, {
                                                                          "values": dataImp,
                                                                          "text": "Implemented",
                                                                          "background-color": "#33cc33",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      }]
                                                                  }]
                                                              };


                                                              // RENDER CHART
                                                              // -----------------------------
                                                              zingchart.render({
                                                                  id: 'chartContainer4',
                                                                  data: myConfigBarChartYearMonth,
                                                                  height: '100%',
                                                                  width: '100%'
                                                              });
                                                          }
                 </script>		
                                                      
                 <script>
                     function BarChartYearWiseYearList(yrsuggestionreceived1, yraccepted1, yrreject1, yrimplement1, yrhold1, yrsuggestionreceived2, yraccepted2, yrreject2, yrimplement2, yrhold2, yrsuggestionreceived3, yraccepted3, yrreject3, yrimplement3, yrhold3, yrsuggestionreceived4, yraccepted4, yrreject4, yrimplement4, yrhold4, yrsuggestionreceived5, yraccepted5, yrreject5, yrimplement5, yrhold5, yrsuggestionreceived6, yraccepted6, yrreject6, yrimplement6, yrhold6, yrsuggestionreceived7, yraccepted7, yrreject7, yrimplement7, yrhold7, yrsuggestionreceived8, yraccepted8, yrreject8, yrimplement8, yrhold8, yrsuggestionreceived9, yraccepted9, yrreject9, yrimplement9, yrhold9, yrsuggestionreceived10, yraccepted10, yrreject10, yrimplement10, yrhold10) {

                                                              var chartId = 'myChart';

                                                             
                                                              var yrsuggestionreceived = [
                                                                               parseInt(yrsuggestionreceived1),
                                                                               parseInt(yrsuggestionreceived2),
                                                                               parseInt(yrsuggestionreceived3),
                                                                               parseInt(yrsuggestionreceived4),
                                                                               parseInt(yrsuggestionreceived5),
                                                                               parseInt(yrsuggestionreceived6),
                                                                               parseInt(yrsuggestionreceived7),
                                                                               parseInt(yrsuggestionreceived8),
                                                                               parseInt(yrsuggestionreceived9),
                                                                               parseInt(yrsuggestionreceived10)
                                                                               

                                                              ];
                                                              var yraccepted = [
                                                                          parseInt(yraccepted1),
                                                                          parseInt(yraccepted2),
                                                                          parseInt(yraccepted3),
                                                                          parseInt(yraccepted4),
                                                                          parseInt(yraccepted5),
                                                                          parseInt(yraccepted6),
                                                                          parseInt(yraccepted7),
                                                                          parseInt(yraccepted8),
                                                                          parseInt(yraccepted9),
                                                                           parseInt(yraccepted10)


                                                              ];
                                                              var yrreject = [
                                                                          parseInt(yrreject1),
                                                                          parseInt(yrreject2),
                                                                          parseInt(yrreject3),
                                                                          parseInt(yrreject4),
                                                                          parseInt(yrreject5),
                                                                          parseInt(yrreject6),
                                                                          parseInt(yrreject7),
                                                                          parseInt(yrreject8),
                                                                          parseInt(yrreject9),
                                                                          parseInt(yrreject10)

                                                              ]; 
                                                                var yrimplement = [
                                                                          parseInt(yrimplement1),
                                                                          parseInt(yrimplement2),
                                                                          parseInt(yrimplement3),
                                                                          parseInt(yrimplement4),
                                                                          parseInt(yrimplement5),
                                                                          parseInt(yrimplement6),
                                                                          parseInt(yrimplement7),
                                                                          parseInt(yrimplement8),
                                                                          parseInt(yrimplement9),
                                                                          parseInt(yrimplement10)

                                                                ];
                                                              var yrhold = [
                                                                        parseInt(yrhold1),
                                                                        parseInt(yrhold2),
                                                                        parseInt(yrhold3),
                                                                        parseInt(yrhold4),
                                                                        parseInt(yrhold5),
                                                                        parseInt(yrhold6),
                                                                        parseInt(yrhold7),
                                                                        parseInt(yrhold8),
                                                                        parseInt(yrhold9),
                                                                        parseInt(yrhold10)

                                                              ]; 
                                                              
                                                              console.log('myConfigBarChartYearWiseYearList', yrsuggestionreceived, yraccepted, yrreject);
                                                              var myConfigBarChartYearWiseYearList = {
                                                                  "graphset": [{
                                                                      "globals": {
                                                                          "font-family": "Lato",

                                                                          "title": {
                                                                              "text": "Suggestions Year Wise Report",
                                                                              
                                                                              "backgroundColor": "none",
                                                                              "font-size": "22px",
                                                                              "alpha": 1,
                                                                              "adjust-layout": true,
                                                                          }
                                                                      },
                                                                      type: 'bar',
                                                                      '3dAspect': {
                                                                          depth: 10,
                                                                          true3d: 0,
                                                                          yAngle: 10
                                                                      },
                                                                      "plotarea": {
                                                                          "margin": "dynamic"
                                                                      },
                                                                      "legend": {
                                                                          "layout": "x3",
                                                                          "overflow": "page",
                                                                          "alpha": 0.05,
                                                                          "shadow": false,
                                                                          "align": "center",
                                                                          "adjust-layout": true,
                                                                          "marker": {
                                                                              "type": "circle",
                                                                              "border-color": "none",
                                                                              "size": "10px"
                                                                          },
                                                                          "border-width": 0,
                                                                          "maxItems": 3,
                                                                          "toggle-action": "hide",
                                                                          "pageOn": {
                                                                              "backgroundColor": "#000",
                                                                              "size": "10px",
                                                                              "alpha": 0.65
                                                                          },
                                                                          "pageOff": {
                                                                              "backgroundColor": "#7E7E7E",
                                                                              "size": "10px",
                                                                              "alpha": 0.65
                                                                          },
                                                                          "pageStatus": {
                                                                              "color": "black"
                                                                          }
                                                                      }
                                                                    , "plot": {
                                                                        "bars-space-left": 0.15,
                                                                        "bars-space-right": 0.15,
                                                                        "animation": {
                                                                            "effect": "ANIMATION_SLIDE_BOTTOM",
                                                                            "sequence": 0,
                                                                            "speed": 800,
                                                                            "delay": 800
                                                                        }
                                                                    },
                                                                      "scaleX": {
                                                                          "values": ["2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029"],
                                                                          "guide": {
                                                                              visible: true
                                                                          },
                                                                          "item": {
                                                                              "offsetY": 5,
                                                                              "angle": 270
                                                                          },
                                                                          "tick": {
                                                                              "size": 2
                                                                          }
                                                                      },


                                                                      "tooltip": {
                                                                          "shadow": true,
                                                                          "shadowColor": "#424242",
                                                                          "backgroundColor": "#212121 #424242",
                                                                          "callout": true,
                                                                          "calloutPosition": "bottom",
                                                                          "offsetY": -20,
                                                                          "placement": "node:top",
                                                                          "padding": 10,
                                                                          "fontSize": 15,
                                                                          "color": "#ffffff",
                                                                          "borderWidth": 1,
                                                                          "borderColor": "#000000",
                                                                          
                                                                      },
                                                                      "crosshair-x": {
                                                                          "line-width": "100%",
                                                                          "alpha": 0.4,
                                                                      },
                                                                      "series": [
                                                                      {
                                                                          "values": yrsuggestionreceived,
                                                                          "text": "Received",
                                                                          "background-color": "#ff9966",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      },
                                                                      {
                                                                          "values": yraccepted,
                                                                          "text": "Accepted",
                                                                          "background-color": "#3399ff",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -8,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      },
                                                                      {
                                                                          "values": yrreject,
                                                                          "text": "Reject",
                                                                          "background-color": "#ff3300",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -10,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      },  
                                                                      {
                                                                          "values": yrimplement,
                                                                      "text": "Implement",
                                                                      "background-color": "#33cc33",
                                                                      "valueBox": [{
                                                                          "fontSize": 10,
                                                                          "fontWeight": 600,
                                                                          "offsetY": -10,
                                                                          "jsRule": "rule_series_123_valueBox_0()"
                                                                      }]
                                                                      },
                                                                      {
                                                                          "values": yrhold,
                                                                          "text": "Not Feasible",
                                                                          "background-color": "#ff9933",
                                                                          "valueBox": [{
                                                                              "fontSize": 10,
                                                                              "fontWeight": 600,
                                                                              "offsetY": -10,
                                                                              "jsRule": "rule_series_123_valueBox_0()"
                                                                          }]
                                                                      },      

                                                                      ]
                                                                  }]
                                                              };
                                                              zingchart.bind(null, 'node_click', function (e) {
                                                                  console.log(e);
                                                                  if (e.scaletext === "2020") {
                                                                      console.log("enterbar");
                                                                      year1();
                                                                  }
                                                                  else if (e.scaletext === "2021") {
                                                                      year2();
                                                                  }
                                                                  else if (e.scaletext === "2022") {
                                                                      year3();
                                                                  }
                                                                  else if (e.scaletext === "2023") {
                                                                      year4();
                                                                  }
                                                                  else if (e.scaletext === "2024") {
                                                                      year5();
                                                                  }
                                                                  else if (e.scaletext === "2025") {
                                                                      year6();
                                                                  }
                                                                  else if (e.scaletext === "2026") {
                                                                      year7();
                                                                  }
                                                                  else if (e.scaletext === "2027") {
                                                                      year8();
                                                                  }
                                                                  else if (e.scaletext === "2028") {
                                                                      year9();
                                                                  }
                                                                  else if (e.scaletext === "2029") {
                                                                      year10();
                                                                  }
                                                                  else {
                                                                      alert('Please Click Year In Chart');
                                                                  }


                                                              });


                                                              // RENDER CHART
                                                              // -----------------------------
                                                              zingchart.render({
                                                                  id: 'chartContainer5',
                                                                  data: myConfigBarChartYearWiseYearList,
                                                                  height: '100%',
                                                                  width: '100%'
                                                              });
                                                          }
                                                      </script>		
           

                 <script type="text/javascript">
                                   
                     function bindgraphNew(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected, oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted, oneyrdeptdepname1, oneyrdepttotalimplement1, oneyrdeptimplemented1, oneyrdeptyettoimplement1, oneyrdeptdepname2, oneyrdepttotalimplement2, oneyrdeptimplemented2, oneyrdeptyettoimplement2, oneyrdeptdepname3, oneyrdepttotalimplement3, oneyrdeptimplemented3, oneyrdeptyettoimplement3, oneyrdeptdepname4, oneyrdepttotalimplement4, oneyrdeptimplemented4, oneyrdeptyettoimplement4, oneyrdeptdepname5, oneyrdepttotalimplement5, oneyrdeptimplemented5, oneyrdeptyettoimplement5, oneyrdeptdepname6, oneyrdepttotalimplement6, oneyrdeptimplemented6, oneyrdeptyettoimplement6, oneyrdeptdepname7, oneyrdepttotalimplement7, oneyrdeptimplemented7, oneyrdeptyettoimplement7, oneyrdeptdepname8, oneyrdepttotalimplement8, oneyrdeptimplemented8, oneyrdeptyettoimplement8, oneyrdeptdepname9, oneyrdepttotalimplement9, oneyrdeptimplemented9, oneyrdeptyettoimplement9, oneyrdeptdepname10, oneyrdepttotalimplement10, oneyrdeptimplemented10, oneyrdeptyettoimplement10, oneyrdeptdepname11, oneyrdepttotalimplement11, oneyrdeptimplemented11, oneyrdeptyettoimplement11, oneyrdeptdepname12, oneyrdepttotalimplement12, oneyrdeptimplemented12, oneyrdeptyettoimplement12, oneyrdeptdepname13, oneyrdepttotalimplement13, oneyrdeptimplemented13, oneyrdeptyettoimplement13, oneyrdeptdepname14, oneyrdepttotalimplement14, oneyrdeptimplemented14, oneyrdeptyettoimplement14, oneyrdeptdepname15, oneyrdepttotalimplement15, oneyrdeptimplemented15, oneyrdeptyettoimplement15, oneyrdeptdepname16, oneyrdepttotalimplement16, oneyrdeptimplemented16, oneyrdeptyettoimplement16, oneyrdeptdepname17, oneyrdepttotalimplement17, oneyrdeptimplemented17, oneyrdeptyettoimplement17, oneyrdeptdepname18, oneyrdepttotalimplement18, oneyrdeptimplemented18, oneyrdeptyettoimplement18, oneyrdeptdepname19, oneyrdepttotalimplement19, oneyrdeptimplemented19, oneyrdeptyettoimplement19, oneyrmntmonths1, oneyrmntreceived1, oneyrmntaccepted1, oneyrmntreject1, oneyrmnthold1, oneyrmntimplemented1, oneyrmntmonths2, oneyrmntreceived2, oneyrmntaccepted2, oneyrmntreject2, oneyrmnthold2, oneyrmntimplemented2, oneyrmntmonths3, oneyrmntreceived3, oneyrmntaccepted3, oneyrmntreject3, oneyrmnthold3, oneyrmntimplemented3, oneyrmntmonths4, oneyrmntreceived4, oneyrmntaccepted4, oneyrmntreject4, oneyrmnthold4, oneyrmntimplemented4, oneyrmntmonths5, oneyrmntreceived5, oneyrmntaccepted5, oneyrmntreject5, oneyrmnthold5, oneyrmntimplemented5, oneyrmntmonths6, oneyrmntreceived6, oneyrmntaccepted6, oneyrmntreject6, oneyrmnthold6, oneyrmntimplemented6, oneyrmntmonths7, oneyrmntreceived7, oneyrmntaccepted7, oneyrmntreject7, oneyrmnthold7, oneyrmntimplemented7, oneyrmntmonths8, oneyrmntreceived8, oneyrmntaccepted8, oneyrmntreject8, oneyrmnthold8, oneyrmntimplemented8, oneyrmntmonths9, oneyrmntreceived9, oneyrmntaccepted9, oneyrmntreject9, oneyrmnthold9, oneyrmntimplemented9, oneyrmntmonths10, oneyrmntreceived10, oneyrmntaccepted10, oneyrmntreject10, oneyrmnthold10, oneyrmntimplemented10, oneyrmntmonths11, oneyrmntreceived11, oneyrmntaccepted11, oneyrmntreject11, oneyrmnthold11, oneyrmntimplemented11, oneyrmntmonths12, oneyrmntreceived12, oneyrmntaccepted12, oneyrmntreject12, oneyrmnthold12, oneyrmntimplemented12, yrsuggestionreceived1, yraccepted1, yrreject1, yrimplement1, yrhold1, yrsuggestionreceived2, yraccepted2, yrreject2, yrimplement2, yrhold2, yrsuggestionreceived3, yraccepted3, yrreject3, yrimplement3, yrhold3, yrsuggestionreceived4, yraccepted4, yrreject4, yrimplement4, yrhold4, yrsuggestionreceived5, yraccepted5, yrreject5, yrimplement5, yrhold5, yrsuggestionreceived6, yraccepted6, yrreject6, yrimplement6, yrhold6, yrsuggestionreceived7, yraccepted7, yrreject7, yrimplement7, yrhold7, yrsuggestionreceived8, yraccepted8, yrreject8, yrimplement8, yrhold8, yrsuggestionreceived9, yraccepted9, yrreject9, yrimplement9, yrhold9, yrsuggestionreceived10, yraccepted10, yrreject10, yrimplement10, yrhold10) {
                                        console.log(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected, oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted);
                                        BarChartYear(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected);
                                        PieChartYear(oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted);
                                        BarChartYearDept(oneyrdeptdepname1, oneyrdepttotalimplement1, oneyrdeptimplemented1, oneyrdeptyettoimplement1, oneyrdeptdepname2, oneyrdepttotalimplement2, oneyrdeptimplemented2, oneyrdeptyettoimplement2, oneyrdeptdepname3, oneyrdepttotalimplement3, oneyrdeptimplemented3, oneyrdeptyettoimplement3, oneyrdeptdepname4, oneyrdepttotalimplement4, oneyrdeptimplemented4, oneyrdeptyettoimplement4, oneyrdeptdepname5, oneyrdepttotalimplement5, oneyrdeptimplemented5, oneyrdeptyettoimplement5, oneyrdeptdepname6, oneyrdepttotalimplement6, oneyrdeptimplemented6, oneyrdeptyettoimplement6, oneyrdeptdepname7, oneyrdepttotalimplement7, oneyrdeptimplemented7, oneyrdeptyettoimplement7, oneyrdeptdepname8, oneyrdepttotalimplement8, oneyrdeptimplemented8, oneyrdeptyettoimplement8, oneyrdeptdepname9, oneyrdepttotalimplement9, oneyrdeptimplemented9, oneyrdeptyettoimplement9, oneyrdeptdepname10, oneyrdepttotalimplement10, oneyrdeptimplemented10, oneyrdeptyettoimplement10, oneyrdeptdepname11, oneyrdepttotalimplement11, oneyrdeptimplemented11, oneyrdeptyettoimplement11, oneyrdeptdepname12, oneyrdepttotalimplement12, oneyrdeptimplemented12, oneyrdeptyettoimplement12, oneyrdeptdepname13, oneyrdepttotalimplement13, oneyrdeptimplemented13, oneyrdeptyettoimplement13, oneyrdeptdepname14, oneyrdepttotalimplement14, oneyrdeptimplemented14, oneyrdeptyettoimplement14, oneyrdeptdepname15, oneyrdepttotalimplement15, oneyrdeptimplemented15, oneyrdeptyettoimplement15, oneyrdeptdepname16, oneyrdepttotalimplement16, oneyrdeptimplemented16, oneyrdeptyettoimplement16, oneyrdeptdepname17, oneyrdepttotalimplement17, oneyrdeptimplemented17, oneyrdeptyettoimplement17, oneyrdeptdepname18, oneyrdepttotalimplement18, oneyrdeptimplemented18, oneyrdeptyettoimplement18, oneyrdeptdepname19, oneyrdepttotalimplement19, oneyrdeptimplemented19, oneyrdeptyettoimplement19);
                                        BarChartYearMonth(oneyrmntmonths1, oneyrmntreceived1, oneyrmntaccepted1, oneyrmntreject1, oneyrmnthold1, oneyrmntimplemented1, oneyrmntmonths2, oneyrmntreceived2, oneyrmntaccepted2, oneyrmntreject2, oneyrmnthold2, oneyrmntimplemented2, oneyrmntmonths3, oneyrmntreceived3, oneyrmntaccepted3, oneyrmntreject3, oneyrmnthold3, oneyrmntimplemented3, oneyrmntmonths4, oneyrmntreceived4, oneyrmntaccepted4, oneyrmntreject4, oneyrmnthold4, oneyrmntimplemented4, oneyrmntmonths5, oneyrmntreceived5, oneyrmntaccepted5, oneyrmntreject5, oneyrmnthold5, oneyrmntimplemented5, oneyrmntmonths6, oneyrmntreceived6, oneyrmntaccepted6, oneyrmntreject6, oneyrmnthold6, oneyrmntimplemented6, oneyrmntmonths7, oneyrmntreceived7, oneyrmntaccepted7, oneyrmntreject7, oneyrmnthold7, oneyrmntimplemented7, oneyrmntmonths8, oneyrmntreceived8, oneyrmntaccepted8, oneyrmntreject8, oneyrmnthold8, oneyrmntimplemented8, oneyrmntmonths9, oneyrmntreceived9, oneyrmntaccepted9, oneyrmntreject9, oneyrmnthold9, oneyrmntimplemented9, oneyrmntmonths10, oneyrmntreceived10, oneyrmntaccepted10, oneyrmntreject10, oneyrmnthold10, oneyrmntimplemented10, oneyrmntmonths11, oneyrmntreceived11, oneyrmntaccepted11, oneyrmntreject11, oneyrmnthold11, oneyrmntimplemented11, oneyrmntmonths12, oneyrmntreceived12, oneyrmntaccepted12, oneyrmntreject12, oneyrmnthold12, oneyrmntimplemented12);
                                        BarChartYearWiseYearList(yrsuggestionreceived1, yraccepted1, yrreject1, yrimplement1, yrhold1, yrsuggestionreceived2, yraccepted2, yrreject2, yrimplement2, yrhold2, yrsuggestionreceived3, yraccepted3, yrreject3, yrimplement3, yrhold3, yrsuggestionreceived4, yraccepted4, yrreject4, yrimplement4, yrhold4, yrsuggestionreceived5, yraccepted5, yrreject5, yrimplement5, yrhold5, yrsuggestionreceived6, yraccepted6, yrreject6, yrimplement6, yrhold6, yrsuggestionreceived7, yraccepted7, yrreject7, yrimplement7, yrhold7, yrsuggestionreceived8, yraccepted8, yrreject8, yrimplement8, yrhold8, yrsuggestionreceived9, yraccepted9, yrreject9, yrimplement9, yrhold9, yrsuggestionreceived10, yraccepted10, yrreject10, yrimplement10, yrhold10)
                                        console.log('barchartyearMonth', oneyrmntmonths1, oneyrmntreceived1, oneyrmntaccepted1, oneyrmntreject1, oneyrmnthold1, oneyrmntimplemented1, oneyrmntmonths2, oneyrmntreceived2, oneyrmntaccepted2, oneyrmntreject2, oneyrmnthold2, oneyrmntimplemented2, oneyrmntmonths3, oneyrmntreceived3, oneyrmntaccepted3, oneyrmntreject3, oneyrmnthold3, oneyrmntimplemented3, oneyrmntmonths4, oneyrmntreceived4, oneyrmntaccepted4, oneyrmntreject4, oneyrmnthold4, oneyrmntimplemented4, oneyrmntmonths5, oneyrmntreceived5, oneyrmntaccepted5, oneyrmntreject5, oneyrmnthold5, oneyrmntimplemented5, oneyrmntmonths6, oneyrmntreceived6, oneyrmntaccepted6, oneyrmntreject6, oneyrmnthold6, oneyrmntimplemented6, oneyrmntmonths7, oneyrmntreceived7, oneyrmntaccepted7, oneyrmntreject7, oneyrmnthold7, oneyrmntimplemented7, oneyrmntmonths8, oneyrmntreceived8, oneyrmntaccepted8, oneyrmntreject8, oneyrmnthold8, oneyrmntimplemented8, oneyrmntmonths9, oneyrmntreceived9, oneyrmntaccepted9, oneyrmntreject9, oneyrmnthold9, oneyrmntimplemented9, oneyrmntmonths10, oneyrmntreceived10, oneyrmntaccepted10, oneyrmntreject10, oneyrmnthold10, oneyrmntimplemented10, oneyrmntmonths11, oneyrmntreceived11, oneyrmntaccepted11, oneyrmntreject11, oneyrmnthold11, oneyrmntimplemented11, oneyrmntmonths12, oneyrmntreceived12, oneyrmntaccepted12, oneyrmntreject12, oneyrmnthold12, oneyrmntimplemented12)
                                    }


                                    
                            </script>
    
            <script src="../UI/Style/zingchart.min.js"></script>  
            
<script>
    function year1() {
       
        var k = "year20";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        console.log(k)
        console.log("urlenter");
        window.location.href = url;
        console.log("urlexit");

    }
    function year2() {
        var k = "year21";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;
        
    }
    function year3() {
        var k = "year22";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;
        
    }
    function year4() {

        var k = "year23";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;
       
    }
    function year5() {
        var k = "year24";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;
       
    }
    function year6() {
        var k = "year25";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;
        
    }
    function year7() {
        var k = "year26";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;

    }
    function year8() {

        var k = "year27";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;

    }
    function year9() {
        var k = "year28";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;

    }
    function year10() {
        var k = "year29";
        var url = "GetExcelYearBarChart.aspx?data=" + k;
        window.location.href = url;

    }
</script>
            
            
            
                      
        <script src="../UI/Style/wow.min.js"></script>
                            <script>
                                new WOW().init();
                            </script>
    </form>
</body>
</html>
