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
        background-color:#006a9c!important;
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
  width: 50px;
  
  background-size: 100%, 100%;
 
  background-image: none;
}

.carousel-control-next-icon:after
{
  content: '>';
  font-size: 55px;
  color: red;
}

.carousel-control-prev-icon:after {
  content: '<';
  font-size: 55px;
  color: red;
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
            background-color: #f0f3f500 !important;
        }
    </style>
   
</head>
<body  class=" screenresposive">
    <form id="form1"  runat="server" class="jumbotron" >
        <div  >
          
            
                 <div class="text-right" style="padding-right:2%;">
                    
                       <b> <asp:LinkButton runat="server" ID="GoSignIn"  OnClick="GoSignIn_Click">Go SignIn</asp:LinkButton></b>
                    
                </div>
                <div class="row">
                <div class="col-lg-3 form-control" style="padding-bottom: 50px;">
               <div class="leftside no-gutters">
                    <div class="email-side-nav remain-height ov-h">
               
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px; cursor:pointer;">
                               
                                <div class="peer fxw-nw bdB cur-p">

                                <marquee direction="down" onmouseover="this.stop()" onmouseout="this.start()"scrolldelay="100"   style="height: 100%; width: 100%; font-family:Calibri;">
                                            
                                <asp:Repeater ID="MailRepeater" runat="server">
                                  
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
                <div class="col-lg-9">
                <div class="row">
                 
                <div class="col-md-12">
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
							                               <div class="card shadow p-3 mb-5 bg-white rounded cardbgcolor" style="border-radius:20px;"  >
							                                  <div class="card-header"style="height:100%;width:100%;">
								                                  <h6><center>RANK-1</center></h6>
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
							                             <div class="card shadow p-3 mb-5 bg-white rounded cardbgcolor" style="border-radius:20px;">
							                                   <div class="card-header"style="height:100%;width:100%;">
								                                  <h6><center>RANK-2</center></h6>
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
							                             <div class="card shadow p-3 mb-5 bg-white rounded cardbgcolor" style="border-radius:20px;">
							                                   <div class="card-header"style="height:100%;width:100%;">
								                                  <h6><center>RANK-3</center></h6>
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
							                               <div class="card shadow p-3 mb-5 bg-white rounded cardbgcolor" style="border-radius:20px;">
							                                  <div class="card-header" style="height:100%;width:100%;">
								                                  <h6><center>RANK-1</center></h6>
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
							                             <div class="card shadow p-3 mb-5 bg-white rounded cardbgcolor" style="border-radius:20px;">
							                                   <div class="card-header"style="height:100%;width:100%;">
								                                  <h6><center>RANK-2</center></h6>
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
							                             <div class="card shadow p-3 mb-5 bg-white rounded cardbgcolor" style="border-radius:20px;">
							                                   <div class="card-header"style="width:100%;">
								                                  <h6><center>RANK-3</center></h6>
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
                </div>
                <div class="row">
                
                <div class="col-md-12">
                    <div id="demo1" class="carousel slide" data-ride="carousel">

                      <!-- Indicators -->
                      <ul class="carousel-indicators">
                        <li data-target="#demo1" data-slide-to="0" class="active"></li>
                        <li data-target="#demo1" data-slide-to="1"></li>
                        <li data-target="#demo1" data-slide-to="2"></li>
                      </ul>
  
                      <!-- The slideshow -->
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                             <div class="row">
                                        <div class="col-md-6">
                                   
                                    <div class="card shadow p-3 mb-5 bg-white rounded  "  >				     
                                            <div id="chartContainer1" class="bgcolor" style="height:300px;width:100%;"></div>
							        </div>
                                        </div>
                                        <div class="col-md-6">
                                   
                                    <div class="card shadow p-3 mb-5 bg-white rounded  "  >				     
                                        <div id="chartContainer2" class="bgcolor" style="height:300px;width:100%;"></div>
							        </div>
                                        </div>
                             </div>
                        </div>
                        <div class="carousel-item">
                                   
                                    <div class="card shadow p-3 mb-5 bg-white rounded  "  >				     
                                        <div id="chartContainer3" class="bgcolor" style="height:300px;width:100%;"></div>
							        </div>
                        </div>
                        <div class="carousel-item">
                                    
                                      				
                                    <div class="card shadow p-3 mb-5 bg-white rounded  "  >				     
                                        <div id="chartContainer4" class="bgcolor" style="height:300px;width:100%;"></div>
							        </div>
                        </div>
                      </div>
  
                      <!-- Left and right controls -->
                      <a class="carousel-control-prev" href="#demo1" data-slide="prev" style="color:black">
                        <span class="carousel-control-prev-icon" ></span>
                      </a>
                      <a class="carousel-control-next" href="#demo1" data-slide="next" style="color:red">
                        <span class="carousel-control-next-icon" style="color:black"></span>
                      </a>
                    </div>
                </div>
                </div>

                </div>
                </div>
				
                 <script >
                                      				    
                                   		function BarChartYear(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected) {

                                   		    console.log('method called ',oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected);
                                   		                    
                                      				          
                                            var myConfig = {
                                                "graphset": [{
                                                "type": "bar",
                                                "background-color": "white",
                                                "title": {
                                                    "text": "Suggestions 2020",
                                                    "font-color": "#7E7E7E",
                                                    "backgroundColor": "none",
                                                    "font-size": "22px",
                                                    "alpha": 1,
                                                    "adjust-layout": true,
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
                                                    "type": "",
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
                                                    "Suggestion Received",
                                                    "Accepted",
                                                    "Rejected",
           
									
                                                    ],
                                                    "placement": "default",
                                                    "tick": {
                                                    "size": 58,
                                                    "placement": "cross"
                                                    },
                                                    "itemsOverlap": true,
                                                    "item": {
                                                    "offsetY": -55
                                                    }
                                                },
        
                                                "tooltip": {
                                                    "visible": false
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
                                                    "alpha": 0.95,
                                                    "borderRadiusTopLeft": 7,
                                                    "background-color": "#8993c7",
                                                    "text": "",
                                                    },
         
		  
          
                                                ]
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
                                      			"type": "ring3d",
                                      			"title": {
                                      				"text": "Suggestion vs Implementation"
                                      			},
                                      			plot: {
                                      				'offset-r': "10%" //provide percentage value
                                      			},
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
                                      			                "type": "bar",
                                      			                "background-color": "white",
                                      			                "title": {
                                      			                    "text": "Implementation by Dept Wise",
                                      			                    "font-color": "#7E7E7E",
                                      			                    "backgroundColor": "none",
                                      			                    "font-size": "22px",
                                      			                    "alpha": 1,
                                      			                    "adjust-layout": true,
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
                                                                      oneyrdeptdepname1,
                                                                      oneyrdeptdepname2,
                                                                      oneyrdeptdepname3,
                                                                      oneyrdeptdepname4,
                                                                      oneyrdeptdepname5,
                                                                      oneyrdeptdepname6,
                                                                      oneyrdeptdepname7,
                                                                      oneyrdeptdepname8,
                                                                      oneyrdeptdepname9,
                                                                      oneyrdeptdepname10,
                                                                      oneyrdeptdepname11,
                                                                      oneyrdeptdepname12,
                                                                      oneyrdeptdepname13,
                                                                      oneyrdeptdepname14,
                                                                      oneyrdeptdepname15,
                                                                      oneyrdeptdepname16,
                                                                      oneyrdeptdepname17,
                                                                      oneyrdeptdepname18,
                                                                      oneyrdeptdepname19

                                      			                    ],
                                      			                    "placement": "default",
                                      			                    "tick": {
                                      			                        "size": 58,
                                      			                        "placement": "cross"
                                      			                    },
                                      			                    "itemsOverlap": true,
                                      			                    "item": {
                                      			                        "offsetY": -55
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
                                                                      oneyrdepttotalimplement1,
                                                                      oneyrdepttotalimplement2,
                                                                      oneyrdepttotalimplement3,
                                                                      oneyrdepttotalimplement4,
                                                                      oneyrdepttotalimplement5,
                                                                      oneyrdepttotalimplement6,
                                                                      oneyrdepttotalimplement7,
                                                                      oneyrdepttotalimplement8,
                                                                      oneyrdepttotalimplement9,
                                                                      oneyrdepttotalimplement10,
                                                                      oneyrdepttotalimplement11,
                                                                      oneyrdepttotalimplement12,
                                                                      oneyrdepttotalimplement13,
                                                                      oneyrdepttotalimplement14,
                                                                      oneyrdepttotalimplement15,
                                                                      oneyrdepttotalimplement16,
                                                                      oneyrdepttotalimplement17,
                                                                      oneyrdepttotalimplement18,
                                                                      oneyrdepttotalimplement19

                                      			                    ],
                                      			                    "alpha": 0.95,
                                      			                    "borderRadiusTopLeft": 7,
                                      			                    "background-color": "#8993c7",
                                      			                    "text": "Total Implement",
                                      			                },
                                                                  {
                                                                      "values": [
                                                                        oneyrdeptimplemented1,
                                                                        oneyrdeptimplemented2,
                                                                        oneyrdeptimplemented3,
                                                                        oneyrdeptimplemented4,
                                                                        oneyrdeptimplemented5,
                                                                        oneyrdeptimplemented6,
                                                                        oneyrdeptimplemented7,
                                                                        oneyrdeptimplemented8,
                                                                        oneyrdeptimplemented9,
                                                                        oneyrdeptimplemented10,
                                                                        oneyrdeptimplemented11,
                                                                        oneyrdeptimplemented12,
                                                                        oneyrdeptimplemented13,
                                                                        oneyrdeptimplemented14,
                                                                        oneyrdeptimplemented15,
                                                                        oneyrdeptimplemented16,
                                                                        oneyrdeptimplemented17,
                                                                        oneyrdeptimplemented18,
                                                                        oneyrdeptimplemented19
                                                                      ],
                                                                      "borderRadiusTopLeft": 7,
                                                                      "alpha": 0.95,
                                                                      "background-color": "#fdb462",
                                                                      "text": "Implemented"
                                                                  },
                                                                  {
                                                                      "values": [
                                                                        oneyrdeptyettoimplement1,
                                                                        oneyrdeptyettoimplement2,
                                                                        oneyrdeptyettoimplement3,
                                                                        oneyrdeptyettoimplement4,
                                                                        oneyrdeptyettoimplement5,
                                                                        oneyrdeptyettoimplement6,
                                                                        oneyrdeptyettoimplement7,
                                                                        oneyrdeptyettoimplement8,
                                                                        oneyrdeptyettoimplement9,
                                                                        oneyrdeptyettoimplement10,
                                                                        oneyrdeptyettoimplement11,
                                                                        oneyrdeptyettoimplement12,
                                                                        oneyrdeptyettoimplement13,
                                                                        oneyrdeptyettoimplement14,
                                                                        oneyrdeptyettoimplement15,
                                                                        oneyrdeptyettoimplement16,
                                                                        oneyrdeptyettoimplement17,
                                                                        oneyrdeptyettoimplement18,
                                                                        oneyrdeptyettoimplement19
                                                                      ],
                                                                      "alpha": 0.95,
                                                                      "borderRadiusTopLeft": 7,
                                                                      "background-color": "#8dd3c7",
                                                                      "text": "Yet To Implement"
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

                                                              var myConfig = {
                                                                  "graphset": [{
                                                                      "type": "bar",
                                                                      "background-color": "white",
                                                                      "title": {
                                                                          "text": "Suggestions 2020 Report",
                                                                          "font-color": "#7E7E7E",
                                                                          "backgroundColor": "none",
                                                                          "font-size": "22px",
                                                                          "alpha": 1,
                                                                          "adjust-layout": true,
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
                                                                            oneyrmntmonths1,
                                                                            oneyrmntmonths2,
                                                                            oneyrmntmonths3,
                                                                            oneyrmntmonths4,
                                                                            oneyrmntmonths5,
                                                                            oneyrmntmonths6,
                                                                            oneyrmntmonths7,
                                                                            oneyrmntmonths8,
                                                                            oneyrmntmonths9,
                                                                            oneyrmntmonths10,
                                                                            oneyrmntmonths11,
                                                                            oneyrmntmonths12

                                                                          ],
                                                                          "placement": "default",
                                                                          "tick": {
                                                                              "size": 58,
                                                                              "placement": "cross"
                                                                          },
                                                                          "itemsOverlap": true,
                                                                          "item": {
                                                                              "offsetY": -55
                                                                          }
                                                                      },

                                                                      "tooltip": {
                                                                          "visible": false
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
                                                                            oneyrmntreceived1,
                                                                            oneyrmntreceived2,
                                                                            oneyrmntreceived3,
                                                                            oneyrmntreceived4,
                                                                            oneyrmntreceived5,
                                                                            oneyrmntreceived6,
                                                                            oneyrmntreceived7,
                                                                            oneyrmntreceived8,
                                                                            oneyrmntreceived9,
                                                                            oneyrmntreceived10,
                                                                            oneyrmntreceived11,
                                                                            oneyrmntreceived12


                                                                          ],
                                                                          "alpha": 0.95,
                                                                          "borderRadiusTopLeft": 7,
                                                                          "background-color": "#8993c7",
                                                                          "text": "Received",
                                                                      },
                                                                        {
                                                                            "values": [
                                                                              oneyrmntaccepted1,
                                                                              oneyrmntaccepted2,
                                                                              oneyrmntaccepted3,
                                                                              oneyrmntaccepted4,
                                                                              oneyrmntaccepted5,
                                                                              oneyrmntaccepted6,
                                                                              oneyrmntaccepted7,
                                                                              oneyrmntaccepted8,
                                                                              oneyrmntaccepted9,
                                                                              oneyrmntaccepted10,
                                                                              oneyrmntaccepted11,
                                                                              oneyrmntaccepted12

                                                                            ],
                                                                            "borderRadiusTopLeft": 7,
                                                                            "alpha": 0.95,
                                                                            "background-color": "#fdb462",
                                                                            "text": "Accepted"
                                                                        },
                                                                        {
                                                                            "values": [
                                                                              oneyrmntreject1,
                                                                              oneyrmntreject2,
                                                                              oneyrmntreject3,
                                                                              oneyrmntreject4,
                                                                              oneyrmntreject5,
                                                                              oneyrmntreject6,
                                                                              oneyrmntreject7,
                                                                              oneyrmntreject8,
                                                                              oneyrmntreject9,
                                                                              oneyrmntreject10,
                                                                              oneyrmntreject11,
                                                                              oneyrmntreject12

                                                                            ],
                                                                            "alpha": 0.95,
                                                                            "borderRadiusTopLeft": 7,
                                                                            "background-color": "#8dd3c7",
                                                                            "text": "Reject"
                                                                        },
                                                                        {
                                                                            "values": [
                                                                              oneyrmnthold1,
                                                                              oneyrmnthold2,
                                                                              oneyrmnthold3,
                                                                              oneyrmnthold4,
                                                                              oneyrmnthold5,
                                                                              oneyrmnthold6,
                                                                              oneyrmnthold7,
                                                                              oneyrmnthold8,
                                                                              oneyrmnthold9,
                                                                              oneyrmnthold10,
                                                                              oneyrmnthold11,
                                                                              oneyrmnthold12

                                                                            ],
                                                                            "borderRadiusTopLeft": 7,
                                                                            "alpha": 0.95,
                                                                            "background-color": "#fb8072",
                                                                            "text": "Hold"
                                                                        },
                                                                        {
                                                                            "values": [
                                                                              oneyrmntimplemented1,
                                                                              oneyrmntimplemented2,
                                                                              oneyrmntimplemented3,
                                                                              oneyrmntimplemented4,
                                                                              oneyrmntimplemented5,
                                                                              oneyrmntimplemented6,
                                                                              oneyrmntimplemented7,
                                                                              oneyrmntimplemented8,
                                                                              oneyrmntimplemented9,
                                                                              oneyrmntimplemented10,
                                                                              oneyrmntimplemented11,
                                                                              oneyrmntimplemented12

                                                                            ],
                                                                            "borderRadiusTopLeft": 7,
                                                                            "alpha": 0.95,
                                                                            "background-color": "#80b1d3",
                                                                            "text": "Implemented"
                                                                        },

                                                                      ]
                                                                  }]
                                                              };

                                                              zingchart.render({
                                                                  id: 'chartContainer4',
                                                                  data: myConfig,
                                                                  height: '100%',
                                                                  width: '100%'
                                                              });
                                                          }
                                                      </script>				
           

                 <script type="text/javascript">
                                   
                                    function bindgraphNew(oneyrbrsuggestionreceived,oneyrbraccepted,oneyrbrrejected,oneyrpitotalsuggestion,oneyrpiimplemented,oneyrpiaccepted,oneyrdeptdepname1,oneyrdepttotalimplement1,oneyrdeptimplemented1,oneyrdeptyettoimplement1,oneyrdeptdepname2,oneyrdepttotalimplement2,oneyrdeptimplemented2,oneyrdeptyettoimplement2,oneyrdeptdepname3,oneyrdepttotalimplement3,oneyrdeptimplemented3,oneyrdeptyettoimplement3,oneyrdeptdepname4,oneyrdepttotalimplement4,oneyrdeptimplemented4,oneyrdeptyettoimplement4,oneyrdeptdepname5,oneyrdepttotalimplement5,oneyrdeptimplemented5,oneyrdeptyettoimplement5,oneyrdeptdepname6,oneyrdepttotalimplement6,oneyrdeptimplemented6,oneyrdeptyettoimplement6,oneyrdeptdepname7,oneyrdepttotalimplement7,oneyrdeptimplemented7,oneyrdeptyettoimplement7,oneyrdeptdepname8,oneyrdepttotalimplement8,oneyrdeptimplemented8,oneyrdeptyettoimplement8,oneyrdeptdepname9,oneyrdepttotalimplement9,oneyrdeptimplemented9,oneyrdeptyettoimplement9,oneyrdeptdepname10,oneyrdepttotalimplement10,oneyrdeptimplemented10,oneyrdeptyettoimplement10,oneyrdeptdepname11,oneyrdepttotalimplement11,oneyrdeptimplemented11,oneyrdeptyettoimplement11,oneyrdeptdepname12,oneyrdepttotalimplement12,oneyrdeptimplemented12,oneyrdeptyettoimplement12,oneyrdeptdepname13,oneyrdepttotalimplement13,oneyrdeptimplemented13,oneyrdeptyettoimplement13,oneyrdeptdepname14,oneyrdepttotalimplement14,oneyrdeptimplemented14,oneyrdeptyettoimplement14,oneyrdeptdepname15,oneyrdepttotalimplement15,oneyrdeptimplemented15,oneyrdeptyettoimplement15,oneyrdeptdepname16,oneyrdepttotalimplement16,oneyrdeptimplemented16,oneyrdeptyettoimplement16,oneyrdeptdepname17,oneyrdepttotalimplement17,oneyrdeptimplemented17,oneyrdeptyettoimplement17,oneyrdeptdepname18,oneyrdepttotalimplement18,oneyrdeptimplemented18,oneyrdeptyettoimplement18,oneyrdeptdepname19,oneyrdepttotalimplement19,oneyrdeptimplemented19,oneyrdeptyettoimplement19,oneyrmntmonths1,oneyrmntreceived1,oneyrmntaccepted1,oneyrmntreject1,oneyrmnthold1,oneyrmntimplemented1,oneyrmntmonths2,oneyrmntreceived2,oneyrmntaccepted2,oneyrmntreject2,oneyrmnthold2,oneyrmntimplemented2,oneyrmntmonths3,oneyrmntreceived3,oneyrmntaccepted3,oneyrmntreject3,oneyrmnthold3,oneyrmntimplemented3,oneyrmntmonths4,oneyrmntreceived4,oneyrmntaccepted4,oneyrmntreject4,oneyrmnthold4,oneyrmntimplemented4,oneyrmntmonths5,oneyrmntreceived5,oneyrmntaccepted5,oneyrmntreject5,oneyrmnthold5,oneyrmntimplemented5,oneyrmntmonths6,oneyrmntreceived6,oneyrmntaccepted6,oneyrmntreject6,oneyrmnthold6,oneyrmntimplemented6,oneyrmntmonths7,oneyrmntreceived7,oneyrmntaccepted7,oneyrmntreject7,oneyrmnthold7,oneyrmntimplemented7,oneyrmntmonths8,oneyrmntreceived8,oneyrmntaccepted8,oneyrmntreject8,oneyrmnthold8,oneyrmntimplemented8,oneyrmntmonths9,oneyrmntreceived9,oneyrmntaccepted9,oneyrmntreject9,oneyrmnthold9,oneyrmntimplemented9,oneyrmntmonths10,oneyrmntreceived10,oneyrmntaccepted10,oneyrmntreject10,oneyrmnthold10,oneyrmntimplemented10,oneyrmntmonths11,oneyrmntreceived11,oneyrmntaccepted11,oneyrmntreject11,oneyrmnthold11,oneyrmntimplemented11,oneyrmntmonths12,oneyrmntreceived12,oneyrmntaccepted12,oneyrmntreject12,oneyrmnthold12,oneyrmntimplemented12 ) {
                                        console.log(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected, oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted);
                                        BarChartYear(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected);
                                        PieChartYear(oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted);
                                        BarChartYearDept(oneyrdeptdepname1, oneyrdepttotalimplement1, oneyrdeptimplemented1, oneyrdeptyettoimplement1, oneyrdeptdepname2, oneyrdepttotalimplement2, oneyrdeptimplemented2, oneyrdeptyettoimplement2, oneyrdeptdepname3, oneyrdepttotalimplement3, oneyrdeptimplemented3, oneyrdeptyettoimplement3, oneyrdeptdepname4, oneyrdepttotalimplement4, oneyrdeptimplemented4, oneyrdeptyettoimplement4, oneyrdeptdepname5, oneyrdepttotalimplement5, oneyrdeptimplemented5, oneyrdeptyettoimplement5, oneyrdeptdepname6, oneyrdepttotalimplement6, oneyrdeptimplemented6, oneyrdeptyettoimplement6, oneyrdeptdepname7, oneyrdepttotalimplement7, oneyrdeptimplemented7, oneyrdeptyettoimplement7, oneyrdeptdepname8, oneyrdepttotalimplement8, oneyrdeptimplemented8, oneyrdeptyettoimplement8, oneyrdeptdepname9, oneyrdepttotalimplement9, oneyrdeptimplemented9, oneyrdeptyettoimplement9, oneyrdeptdepname10, oneyrdepttotalimplement10, oneyrdeptimplemented10, oneyrdeptyettoimplement10, oneyrdeptdepname11, oneyrdepttotalimplement11, oneyrdeptimplemented11, oneyrdeptyettoimplement11, oneyrdeptdepname12, oneyrdepttotalimplement12, oneyrdeptimplemented12, oneyrdeptyettoimplement12, oneyrdeptdepname13, oneyrdepttotalimplement13, oneyrdeptimplemented13, oneyrdeptyettoimplement13, oneyrdeptdepname14, oneyrdepttotalimplement14, oneyrdeptimplemented14, oneyrdeptyettoimplement14, oneyrdeptdepname15, oneyrdepttotalimplement15, oneyrdeptimplemented15, oneyrdeptyettoimplement15, oneyrdeptdepname16, oneyrdepttotalimplement16, oneyrdeptimplemented16, oneyrdeptyettoimplement16, oneyrdeptdepname17, oneyrdepttotalimplement17, oneyrdeptimplemented17, oneyrdeptyettoimplement17, oneyrdeptdepname18, oneyrdepttotalimplement18, oneyrdeptimplemented18, oneyrdeptyettoimplement18, oneyrdeptdepname19, oneyrdepttotalimplement19, oneyrdeptimplemented19, oneyrdeptyettoimplement19);
                                        BarChartYearMonth(oneyrmntmonths1, oneyrmntreceived1, oneyrmntaccepted1, oneyrmntreject1, oneyrmnthold1, oneyrmntimplemented1, oneyrmntmonths2, oneyrmntreceived2, oneyrmntaccepted2, oneyrmntreject2, oneyrmnthold2, oneyrmntimplemented2, oneyrmntmonths3, oneyrmntreceived3, oneyrmntaccepted3, oneyrmntreject3, oneyrmnthold3, oneyrmntimplemented3, oneyrmntmonths4, oneyrmntreceived4, oneyrmntaccepted4, oneyrmntreject4, oneyrmnthold4, oneyrmntimplemented4, oneyrmntmonths5, oneyrmntreceived5, oneyrmntaccepted5, oneyrmntreject5, oneyrmnthold5, oneyrmntimplemented5, oneyrmntmonths6, oneyrmntreceived6, oneyrmntaccepted6, oneyrmntreject6, oneyrmnthold6, oneyrmntimplemented6, oneyrmntmonths7, oneyrmntreceived7, oneyrmntaccepted7, oneyrmntreject7, oneyrmnthold7, oneyrmntimplemented7, oneyrmntmonths8, oneyrmntreceived8, oneyrmntaccepted8, oneyrmntreject8, oneyrmnthold8, oneyrmntimplemented8, oneyrmntmonths9, oneyrmntreceived9, oneyrmntaccepted9, oneyrmntreject9, oneyrmnthold9, oneyrmntimplemented9, oneyrmntmonths10, oneyrmntreceived10, oneyrmntaccepted10, oneyrmntreject10, oneyrmnthold10, oneyrmntimplemented10, oneyrmntmonths11, oneyrmntreceived11, oneyrmntaccepted11, oneyrmntreject11, oneyrmnthold11, oneyrmntimplemented11, oneyrmntmonths12, oneyrmntreceived12, oneyrmntaccepted12, oneyrmntreject12, oneyrmnthold12, oneyrmntimplemented12);
                                    }


                                    
                            </script>
               
    
        </div>
        
        
        <%-- <div class="row " >
			
						<div class="col-md-12 ">
                             <div class=" bgcolor" style="width: 100%;height: 100%;">--%>

                                     <%--<div class="row" style=" ">
                                            <div id="dvTab" class="container mt-3" style="width:100%;height:100%;">

                                              <ul class="nav nav-tabs nav-justified " role="tablist" >
                                                    <li class="nav-item" id="User" style="width:50%; font-size:100%;  padding-left:2%; ">
                                                        <a class="nav-link active" data-toggle="tab" href="#rank1" style="font-weight:bold ;text-align:center;border-color:black;border-radius:20px;" hidden="hidden">MONTHLY</a>

                                                    </li>
                                                    <li class="nav-item" id="Implement" style="width:50%; font-size:100%;padding-right:2%; ">
                                                        <a class="nav-link" data-toggle="tab" href="#rank2" style="font-weight:bold ;text-align:center;border-color:black;border-radius:20px;" hidden="hidden">YEAR</a>

                                                    </li>
                                              </ul>
                                                
                                                
             
                                              <div class="tab-content">
                                                  
                                                <div id="rank1" class="container tab-pane active">
                                                    <div class="text-center" style="padding-right:2%;">
                    
                                                     <b><asp:Label runat="server" ID="Month" Style="font-weight:bolder;font-family:Algerian;font-size:x-large;">MONTH</asp:Label></b>
                    
                                                    </div>
                                                
                                                    			
            	                                </div>
    

    

                                                <div id="rank2" class="container tab-pane">
                                                    <div class="text-center" style="padding-right:2%;">
                    
                                                     <b> <asp:Label runat="server" ID="year" Style="font-weight:bolder;font-family:Algerian;font-size:x-large;">YEAR</asp:Label></b>
                    
                                                    </div>
                                                
                                                   				
                                                 </div>
    
                                              </div>
                                            </div>            

                                     </div>

						 
							         <div class="row" style="margin-right: 5%;margin-left:5%;">
                                                        
                                       <div id="chart" class="container mt-3">

                                              <ul class="nav nav-tabs nav-justified " role="tablist" visible="false">
                                                    <li class="nav-item" id="barpiechart" style="width:50%; font-size:100%;  padding-left:2%; ">
                                                        <a class="nav-link active" data-toggle="tab" href="#chart1" style="font-weight:bold ;text-align:center;border-color:black;border-radius:20px;" hidden="hidden"></a>

                                                    </li>
                                                    <li class="nav-item" id="Departchart" style="width:50%; font-size:100%;padding-right:2%; ">
                                                        <a class="nav-link" data-toggle="tab" href="#chart2" style="font-weight:bold ;text-align:center;border-color:black;border-radius:20px;"hidden="hidden"></a>

                                                    </li>
                                                  <li class="nav-item" id="Monthchart" style="width:50%; font-size:100%;padding-right:2%; ">
                                                        <a class="nav-link" data-toggle="tab" href="#chart3" style="font-weight:bold ;text-align:center;border-color:black;border-radius:20px;"hidden="hidden"></a>

                                                    </li>
                                              </ul>
                                                
                                                
             
                                              <div class="tab-content">
                                                <div id="chart1"   class="container tab-pane fade in active">
                                                   
                                   		           
            	                                </div>
    

    

                                                <div id="chart2"  class="container tab-pane fade ">
                                      			
                                                    
                                                </div>

                                                  <div id="chart3"  class="container tab-pane fade">
                                                     
                                                    
                                                </div>
    
                                              </div>
                                            </div>     


							                
						    
							                           
                          
							  
                            
                                <script type="text/javascript">
                                   
                                    function bindgraphNew(oneyrbrsuggestionreceived,oneyrbraccepted,oneyrbrrejected,oneyrpitotalsuggestion,oneyrpiimplemented,oneyrpiaccepted,oneyrdeptdepname1,oneyrdepttotalimplement1,oneyrdeptimplemented1,oneyrdeptyettoimplement1,oneyrdeptdepname2,oneyrdepttotalimplement2,oneyrdeptimplemented2,oneyrdeptyettoimplement2,oneyrdeptdepname3,oneyrdepttotalimplement3,oneyrdeptimplemented3,oneyrdeptyettoimplement3,oneyrdeptdepname4,oneyrdepttotalimplement4,oneyrdeptimplemented4,oneyrdeptyettoimplement4,oneyrdeptdepname5,oneyrdepttotalimplement5,oneyrdeptimplemented5,oneyrdeptyettoimplement5,oneyrdeptdepname6,oneyrdepttotalimplement6,oneyrdeptimplemented6,oneyrdeptyettoimplement6,oneyrdeptdepname7,oneyrdepttotalimplement7,oneyrdeptimplemented7,oneyrdeptyettoimplement7,oneyrdeptdepname8,oneyrdepttotalimplement8,oneyrdeptimplemented8,oneyrdeptyettoimplement8,oneyrdeptdepname9,oneyrdepttotalimplement9,oneyrdeptimplemented9,oneyrdeptyettoimplement9,oneyrdeptdepname10,oneyrdepttotalimplement10,oneyrdeptimplemented10,oneyrdeptyettoimplement10,oneyrdeptdepname11,oneyrdepttotalimplement11,oneyrdeptimplemented11,oneyrdeptyettoimplement11,oneyrdeptdepname12,oneyrdepttotalimplement12,oneyrdeptimplemented12,oneyrdeptyettoimplement12,oneyrdeptdepname13,oneyrdepttotalimplement13,oneyrdeptimplemented13,oneyrdeptyettoimplement13,oneyrdeptdepname14,oneyrdepttotalimplement14,oneyrdeptimplemented14,oneyrdeptyettoimplement14,oneyrdeptdepname15,oneyrdepttotalimplement15,oneyrdeptimplemented15,oneyrdeptyettoimplement15,oneyrdeptdepname16,oneyrdepttotalimplement16,oneyrdeptimplemented16,oneyrdeptyettoimplement16,oneyrdeptdepname17,oneyrdepttotalimplement17,oneyrdeptimplemented17,oneyrdeptyettoimplement17,oneyrdeptdepname18,oneyrdepttotalimplement18,oneyrdeptimplemented18,oneyrdeptyettoimplement18,oneyrdeptdepname19,oneyrdepttotalimplement19,oneyrdeptimplemented19,oneyrdeptyettoimplement19,oneyrmntmonths1,oneyrmntreceived1,oneyrmntaccepted1,oneyrmntreject1,oneyrmnthold1,oneyrmntimplemented1,oneyrmntmonths2,oneyrmntreceived2,oneyrmntaccepted2,oneyrmntreject2,oneyrmnthold2,oneyrmntimplemented2,oneyrmntmonths3,oneyrmntreceived3,oneyrmntaccepted3,oneyrmntreject3,oneyrmnthold3,oneyrmntimplemented3,oneyrmntmonths4,oneyrmntreceived4,oneyrmntaccepted4,oneyrmntreject4,oneyrmnthold4,oneyrmntimplemented4,oneyrmntmonths5,oneyrmntreceived5,oneyrmntaccepted5,oneyrmntreject5,oneyrmnthold5,oneyrmntimplemented5,oneyrmntmonths6,oneyrmntreceived6,oneyrmntaccepted6,oneyrmntreject6,oneyrmnthold6,oneyrmntimplemented6,oneyrmntmonths7,oneyrmntreceived7,oneyrmntaccepted7,oneyrmntreject7,oneyrmnthold7,oneyrmntimplemented7,oneyrmntmonths8,oneyrmntreceived8,oneyrmntaccepted8,oneyrmntreject8,oneyrmnthold8,oneyrmntimplemented8,oneyrmntmonths9,oneyrmntreceived9,oneyrmntaccepted9,oneyrmntreject9,oneyrmnthold9,oneyrmntimplemented9,oneyrmntmonths10,oneyrmntreceived10,oneyrmntaccepted10,oneyrmntreject10,oneyrmnthold10,oneyrmntimplemented10,oneyrmntmonths11,oneyrmntreceived11,oneyrmntaccepted11,oneyrmntreject11,oneyrmnthold11,oneyrmntimplemented11,oneyrmntmonths12,oneyrmntreceived12,oneyrmntaccepted12,oneyrmntreject12,oneyrmnthold12,oneyrmntimplemented12 ) {
                                        console.log(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected, oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted);
                                        BarChartYear(oneyrbrsuggestionreceived, oneyrbraccepted, oneyrbrrejected);
                                        PieChartYear(oneyrpitotalsuggestion, oneyrpiimplemented, oneyrpiaccepted);
                                        BarChartYearDept(oneyrdeptdepname1, oneyrdepttotalimplement1, oneyrdeptimplemented1, oneyrdeptyettoimplement1, oneyrdeptdepname2, oneyrdepttotalimplement2, oneyrdeptimplemented2, oneyrdeptyettoimplement2, oneyrdeptdepname3, oneyrdepttotalimplement3, oneyrdeptimplemented3, oneyrdeptyettoimplement3, oneyrdeptdepname4, oneyrdepttotalimplement4, oneyrdeptimplemented4, oneyrdeptyettoimplement4, oneyrdeptdepname5, oneyrdepttotalimplement5, oneyrdeptimplemented5, oneyrdeptyettoimplement5, oneyrdeptdepname6, oneyrdepttotalimplement6, oneyrdeptimplemented6, oneyrdeptyettoimplement6, oneyrdeptdepname7, oneyrdepttotalimplement7, oneyrdeptimplemented7, oneyrdeptyettoimplement7, oneyrdeptdepname8, oneyrdepttotalimplement8, oneyrdeptimplemented8, oneyrdeptyettoimplement8, oneyrdeptdepname9, oneyrdepttotalimplement9, oneyrdeptimplemented9, oneyrdeptyettoimplement9, oneyrdeptdepname10, oneyrdepttotalimplement10, oneyrdeptimplemented10, oneyrdeptyettoimplement10, oneyrdeptdepname11, oneyrdepttotalimplement11, oneyrdeptimplemented11, oneyrdeptyettoimplement11, oneyrdeptdepname12, oneyrdepttotalimplement12, oneyrdeptimplemented12, oneyrdeptyettoimplement12, oneyrdeptdepname13, oneyrdepttotalimplement13, oneyrdeptimplemented13, oneyrdeptyettoimplement13, oneyrdeptdepname14, oneyrdepttotalimplement14, oneyrdeptimplemented14, oneyrdeptyettoimplement14, oneyrdeptdepname15, oneyrdepttotalimplement15, oneyrdeptimplemented15, oneyrdeptyettoimplement15, oneyrdeptdepname16, oneyrdepttotalimplement16, oneyrdeptimplemented16, oneyrdeptyettoimplement16, oneyrdeptdepname17, oneyrdepttotalimplement17, oneyrdeptimplemented17, oneyrdeptyettoimplement17, oneyrdeptdepname18, oneyrdepttotalimplement18, oneyrdeptimplemented18, oneyrdeptyettoimplement18, oneyrdeptdepname19, oneyrdepttotalimplement19, oneyrdeptimplemented19, oneyrdeptyettoimplement19);
                                        BarChartYearMonth(oneyrmntmonths1, oneyrmntreceived1, oneyrmntaccepted1, oneyrmntreject1, oneyrmnthold1, oneyrmntimplemented1, oneyrmntmonths2, oneyrmntreceived2, oneyrmntaccepted2, oneyrmntreject2, oneyrmnthold2, oneyrmntimplemented2, oneyrmntmonths3, oneyrmntreceived3, oneyrmntaccepted3, oneyrmntreject3, oneyrmnthold3, oneyrmntimplemented3, oneyrmntmonths4, oneyrmntreceived4, oneyrmntaccepted4, oneyrmntreject4, oneyrmnthold4, oneyrmntimplemented4, oneyrmntmonths5, oneyrmntreceived5, oneyrmntaccepted5, oneyrmntreject5, oneyrmnthold5, oneyrmntimplemented5, oneyrmntmonths6, oneyrmntreceived6, oneyrmntaccepted6, oneyrmntreject6, oneyrmnthold6, oneyrmntimplemented6, oneyrmntmonths7, oneyrmntreceived7, oneyrmntaccepted7, oneyrmntreject7, oneyrmnthold7, oneyrmntimplemented7, oneyrmntmonths8, oneyrmntreceived8, oneyrmntaccepted8, oneyrmntreject8, oneyrmnthold8, oneyrmntimplemented8, oneyrmntmonths9, oneyrmntreceived9, oneyrmntaccepted9, oneyrmntreject9, oneyrmnthold9, oneyrmntimplemented9, oneyrmntmonths10, oneyrmntreceived10, oneyrmntaccepted10, oneyrmntreject10, oneyrmnthold10, oneyrmntimplemented10, oneyrmntmonths11, oneyrmntreceived11, oneyrmntaccepted11, oneyrmntreject11, oneyrmnthold11, oneyrmntimplemented11, oneyrmntmonths12, oneyrmntreceived12, oneyrmntaccepted12, oneyrmntreject12, oneyrmnthold12, oneyrmntimplemented12);
                                    }


                                    
                            </script>

                            
							                               
						    
							
							</div>
							                           
							 </div>
	                     </div>						
				</div>
        <%-- <script>
  var n=0
  var myVar=setInterval(function () {update_news()}, 5000);

  function update_news() {
    n = n+1
    if (n==4) {
       n=1
    }
    //$('#chart' + n).tab('show');
    $('.nav-tabs a[href="#chart' + n + '"]').tab('show')
    $('.nav-tabs a[href="#rank' + n + '"]').tab('show')
  }
  </script>--%>
        <%-- <script>
  var n=0
  var myVar=setInterval(function () {update_news()}, 1000);

  function update_news() {
    n = n+1
    if (n==3) {
       n=1
    }
    //$('#chart' + n).tab('show');
    $('.nav-tabs a[href="#rank' + n + '"]').tab('show')

  }
  </script>--%>
       
            <script src="../UI/Style/zingchart.min.js"></script>            
            
    </form>
</body>
</html>
