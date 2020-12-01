<%@ Page Title="Beneficiary Inbox" Language="C#" MasterPageFile="~/Approval.Master" AutoEventWireup="true" CodeBehind="BeneficiaryDashboard.aspx.cs" Inherits="ProclainPIMSMaster.Form.BeneficiaryDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
    
       <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
     
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />
     
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/bootstrap/Css/bootstrap.min.css" />
    <!--===============================================================================================-->

    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/fonts/font-awesome-4.7.0/Css/font-awesome.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/select2/select2.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/perfect-scrollbar/perfect-scrollbar.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/css/util.css" />
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/css/main.css" />
    <!--===============================================================================================-->
   

<style>
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

    c-grey-902 {
        color: #0200a5;
    }
    body {
        color: #0d196f !important;
    }
    .leftside .rightside{
        height: 100vh;
        width: 50%;
    }
    .list-group-item {
        border: 1px solid rgba(0, 0, 0, 0)!important;
    }
    .linka {
    color: #010101!important;
}
    .iconmenu{
        margin-right: 0px;
    }
    .inp {
        border: 1px solid #ced4da!important;
        border-radius: .25rem!important;
    }

    .textalign{
        text-align: justify;
    }
</style>
      

    <script type="text/javascript">
        function MoveNext(next_ctrl, _key) {

            if (_key == 13) {
                //alert(next_ctrl);
                var _next = document.getElementById(next_ctrl);
                _next.focus();
                return false;
            }

        }
        </script>

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
            background: linear-gradient(-68deg, #cec9cc, #785b5b) !important;
            
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

#ContentPlaceHolder1_UpLoad1Tag:hover {opacity: 0.7;}

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
#ContentPlaceHolder1_UpLoad2Tag:hover {opacity: 0.7;}

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
#ContentPlaceHolder1_UpLoad3Tag:hover {opacity: 0.7;}

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
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
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
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}

        
    </style>
    
      <link href="../UI/Style/all.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
	
     	
#preloader {
	position: fixed;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	z-index: 999999;
	background: rgba(0, 0, 0, 0.5);
}
        #status {
            width: 200px;
            height: 200px;
            position: absolute;
            left: 50%;
            top: 50%;
             background-image: url(../UI/assets/static/images/Spin2-1s-200px.gif);
            background-repeat: no-repeat;
            background-position: center;
            margin: -100px 0 0 -100px;
        }
</style> 
       <div id="preloader">
         <!--
<div id="status"  >&nbsp;</div>-->
         <div class="loadingio-spinner-spin-70jldgjfy3"><div class="ldio-l05zvogs5db">
<div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div>
</div></div>
</div>  
    
<%--<div class="col-12 peer pX-40  h-100 bgc-white scrollable pos-r" style="min-width:320px; padding-top: 28px">--%>
    
   
    <div class="row">
        <div class="col-lg-4 form-control" style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
             <div class="email-side-nav remain-height ov-h">
                        <div class="layer w-100">
                            <div class="bgc-grey-100 peers ai-c jc-sb p-20 fxw-nw">
                             
                                
                                
                            </div>
                        </div>
 
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px;padding-right:10px">
                                <%-- <div class="">--%>

                                <div class="peer fxw-nw bdB cur-p" >

                                <asp:Repeater ID="MailRepeater" runat="server" OnItemCommand="MailRepeater_ItemCommand" > 
                                    <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                    <ItemTemplate>
                                        <%--<div class="pear bdB">--%>
                                        
                                            <%--onclick="linc_click()"--%>
                                           
                                                           <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%> 
                                           <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("ID")%>' ClientIDMode="Static" hidden></asp:Label>             
                                            <div class="row">

                                                <div class="col-sm-10">
                                               
                                                    <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("ID")%>' hidden> </asp:TextBox>
                                                  
                                                    
                                                </div>
                                                

                                            </div>

                                            <div class="row">
                                                <div class="col-sm-12 form-control" style="border:none!important;">
                                                    <%# Eval("SendFrom") %>
                                                    <br />
                                                    <%# Eval("Subject") %>
                                                    <br />
                                                    <%# Eval("IDeaID") %>
                                                    <br />
                                                    <hr />
                                                </div>
                                            </div>
                                            <%--</asp:LinkButton>--%>
                                        </div>

                                    </ItemTemplate>

                                </asp:Repeater>

                                    
                                    </div>

                                <%--</div>--%>
                                <%--</div>--%>
                            </div>
                        </div>
                    </div>
            </div>
            <div class="bTd">

            </div>
       
        </div>
    
    <div class=" col-lg-7 reps" style="padding:15px">
         <div class="rightside no-gutters" >
              <div class="email-wrapper row remain-height ov-h" style="    background-color: #fff0!important;">
             <div class="email-list h-100 layers" style="width: 100%; align-items: initial">
                            <div class="h-100 scrollable pos-r">
                                <div class="bgc-grey-100 peers ai-c jc-sb p-20 fxw-nw d-n@md+">
                                   
                                    
                                </div>
                                <div class="email-content-wrapper">
                                    <div class="peer ai-c jc-sb pY-30" style="padding-left: 10px; padding-right: 20px; padding-bottom: 10px!important">

                                        <div class="peer peer-greed">
                                            <div class="peer" align="right">
                                                <%--<asp:ImageButton ID="PFuthurImageButton" runat="server" ImageUrl="~/UI/assets/static/images/Icons/3-Copy.jpg" Height="25px" Width="25px" align="right" OnClick="PFuthurImageButton_Click" />--%><br />
                                                <%-- <a href="" class="btn btn-danger bdrs-50p p-15 lh-0">
                                                        <i class="fa fa-reply"></i>
                                                    </a>--%>
                                            </div>
                                            <div class="peer mR-20">
                                            </div>
                                            <%--<div class="peer">--%>


                                            <asp:ScriptManager ID="ScriptManager" runat="server" />
                                            <asp:UpdatePanel ID="UpdatePanel1"
                                                UpdateMode="Conditional"
                                                runat="server">
                                                <ContentTemplate>


                                                    <div class="pear">
                                                        <lable ID="SSubjectTaglabel"  ></lable>
                                                        <mark class="form-control" id="SSubjectTag" style="font-size: 20px; border: 0px solid; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px;"></mark>
                                                        <h6 id="STimeTag"></h6>
                                                        <%--<lable id="formtaglable"></lable>--%>
                                                        <mark id="CmtIdTag" class="fnt" hidden></mark>
                                                        <mark id="SfromTag" class="fnt"></mark><mark id="SEmployeeNameTag"></mark>
                                                        <br />
                                                        <mark id="SEIDTag" class="fnt"></mark><mark id="SEmployeeIDTag"></mark>
                                                        <br />  
                                                        <mark  id="SDepTag" class="fnt"></mark><mark id="SDepartmentTag"></mark>
                                                        <br />
                                                        <mark  id="SMail" class="fnt"></mark><mark  id="SMailTag"></mark>
                                                        <br />
                                                        <mark  id="SGrade" class="fnt"></mark><mark style="font-size:large;" id="SGradeTag"></mark>
                                                        <br />
                                                        <mark  id="SBenefitmatrix" class="fnt"></mark><mark style="font-size:large;" id="SBenefitmatrixTag"></mark>
                                                        <br />
                                                         <mark id="ResponseTag"  class="fnt"></mark><mark style="font-size:large;" id="ResponsePTag"></mark>
                                                        
                                                        <hr />

                                                        <mark id="SContentTag"></mark>
                                                        <br />
                                                        <br />
                                                        <mark  id="SContent" class="fnt" style="color:red"></mark>
                                                            <br />
                                                        <div class="pear" style="padding-left:40px" >
                                                        <lable ID="SubjectTaglabel"   ></lable>
                                                        <mark class="form-control textalign "  id="SubjectTag" style="font-size: 20px; border: 0px solid; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px;"></mark>
                                                        <h6 id="TimeTag" ></h6>
                                                        <%--<lable id="formtaglable"></lable>--%>
                                                        <mark id="fromTag"  class="fnt"></mark><mark id="EmployeeNameTag" ></mark>
                                                        <br />
                                                        <mark id="EIDTag"  class="fnt"></mark><mark id="EmployeeIDTag" ></mark>
                                                        <br />
                                                        <mark  id="DepTag"  class="fnt"></mark><mark id="DepartmentTag" ></mark>
                                                        <br />
                                                        <mark  id="DesTag"  class="fnt"></mark><mark  id="DesignationTag" ></mark>
                                                        <br />
                                                        <hr />
                                                        <mark  id="CatTag"  class="fnt"></mark><mark  id="CategoryTag" ></mark>
                                                        <hr />
                                                        <div style="padding-left: 10px!important; padding-right: 20px!important; padding-top: 10px!important; padding-bottom: 10px!important">
                                                        <mark  id="IdIdTag"  class="fnt"></mark><mark id="IdeaIdTag"  style="padding-left: 10px"></mark>
                                                        <asp:TextBox ID="CEideaidTextBox" CssClass="MCideaidclass" runat="server" hidden></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <mark id="BefTag"  class="fnt"></mark>
                                                        <p  id="BeforeTag" class="textalign"  style="padding-left: 10px"></p>
                                                        <br />
                                                        <mark  id="AftTag" " class="fnt"></mark>
                                                        <p  id="AfterTag" class="textalign"  style="padding-left: 10px"></p>
                                                        <br />
                                                        <mark id="BenTag"  class="fnt"></mark>
                                                        <p id="BenefitsTag" class="textalign"  style="padding-left: 10px"></p>
                                                            <br />
                                                            <br />
                                                               <div class="row">
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl1Tag" class="fnt"></mark>
                                                                                </div>
                                                                                <div class="row-md-6">
                                                                                <div id="imgAt1">
                                                                                     <img src="ContentPlaceHolder1_UpLoad1Tag"  id="UpLoad1Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                </div>
                                                                                     <div id="fileAt1">
                                                                                    <a href="#" id="attachement1" target="_blank" class="btn btn-info">Download Attachment 1</a>
                                                                                      </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl2Tag" class="fnt"></mark>
                                                                                </div>
                                                                                <div class="row-md-6">
                                                                                     <div id="imgAt2">
                                                                                <img src="ContentPlaceHolder1_UpLoad2Tag"  id="UpLoad2Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                    </div>
                                                                                     <div id="fileAt2">
                                                                                      <a href="#" id="attachement2" target="_blank" class="btn btn-info">Download Attachment 2</a>
                                                                                         </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl3Tag" class="fnt"></mark>
                                                                            </div>
                                                                                <div class="row-md-6">
                                                                                     <div id="imgAt3">
                                                                                <img src="ContentPlaceHolder1_UpLoad3Tag"  id="UpLoad3Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                    </div>
                                                                                      <div id="fileAt3">
                                                                                          <a href="#" id="attachement3" target="_blank" class="btn btn-info">Download Attachment 3 </a>
                                                                                          </div>
                                                                                </div>
                                                                            </div>
                                                                            <div id="myModal" class="modal">
                                                                                        <span class="close">&times;</span>
                                                                                        <img class="modal-content" id="img01">
                                                                                        <div id="caption"></div>
                                                                                    </div>
                                                                            </div>


                                                            </div>
                                                            <div class="peer" >
                                                                <fieldset style="width: 100%;border: double!important;border-left:none!important;border-right:none!important">
                                                                    <mark id="ReplyTag" class="fnt" style="color:red"></mark>
                                                                    <br />
                                                                    <br />
                                                                   
                                                                <mark  id="StatusTag"  class="fnt" ></mark>
                                                        <mark id="StatusPTag" class="textalign"  style="padding-left: 10px; color:red"></mark>
                                                                    <br /><br />
                                                                <mark id="ReasonTag"  class="fnt"></mark>
                                                        <p id="ReasonPTag" class="textalign"  style="padding-left: 10px"></p>
                                                        <!--        <mark id="ResponseTag"  class="fnt"></mark>
                                                        <p id="ResponsePTag" class="textalign"  style="padding-left: 10px"></p> -->
                                                                    </fieldset>
                                                                 
                                                            </div>

                                                    </div>
                                                        </div>
                                                       <script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById("ContentPlaceHolder1_UpLoad1Tag");
var img1 = document.getElementById("ContentPlaceHolder1_UpLoad2Tag");
var img2 = document.getElementById("ContentPlaceHolder1_UpLoad3Tag");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  
}
img1.onclick = function () {
    modal.style.display = "block";
    modalImg.src = this.src;
    
}
img2.onclick = function () {
    modal.style.display = "block";
    modalImg.src = this.src;
    
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
  modal.style.display = "none";
}
</script>
                                                    <script>
                                                        function imageAttachmenthandler(link,imageid,attachmentid,imagediv,attachmentdiv)
                                                        {
        
                                                            console.log(link);
                                                            var x = document.getElementById(imagediv);
                                                            var y = document.getElementById(attachmentdiv);
 
                                                            if (link != null && link != "../UI/Image/No File") {
                                                                var data = link.split('.').pop();
                                                                if (data == 'jpg') {
                                                                    document.getElementById(imageid).src = link;
                                                                    x.style.display = "block";

                                                                    y.style.display = "none";
                                                                }
                                                                else if (data == 'png') {
                                                                    document.getElementById(imageid).src = link;
                                                                    x.style.display = "block";

                                                                    y.style.display = "none";
                                                                }
                                                                else {
                                                                    document.getElementById(attachmentid).href = link;
                                                                    y.style.display = "block";

                                                                    x.style.display = "none";

                                                                }
                                                            }
                                                            else
                                                            {
                                                                document.getElementById(imageid).src = "../UI/assets/static/images/unpin.png";
                                                                x.style.display = "block";

                                                                y.style.display = "none";
                                                            }
                                                        }
                                                    </script>



                                                </ContentTemplate>


                                            </asp:UpdatePanel>

 
                                        </div>

                                    </div>
                                    <div class="bdT" style="padding-left: 10px!important; padding-right: 20px!important; padding-top: 10px!important; padding-bottom: 10px!important">


                                        <asp:UpdatePanel ID="UpdatePanel2"
                                            UpdateMode="Conditional"
                                            runat="server">
                                            <ContentTemplate>


                                                <div class="pear">
                                                 

                                                </div>




                                            </ContentTemplate>


                                        </asp:UpdatePanel>
                                    </div>
                                </div>
                            </div>

                        </div>
             
                
                 </div>
              </div>
             
        </div>

        <div class=" col-lg-1 reps" style="padding:0px">
         <div class="rightside no-gutters" style="width: 100%;height: 100%;">
             <%--<div class="row">--%>
             <input id="ApproveButton" class="form-control btns" style="height:50%;width:100%;color:white" type="button" value="Response" data-toggle="modal" data-target="#myModalUpdate"/>
                 
             <%--</div>
             <div class="row">--%>
                 <input id="RejectedButton" class="form-control btns" style="height:33%;width:100%;color:white" type="button" value="Reject" data-toggle="modal" data-target="#myModalUpdate" hidden/>

             <%--</div>--%>
             <input id="UpdatePopButton" class="form-control btns" style="height:50%;width:100%;color:white" type="button" value="Alter" data-toggle="modal" data-target="#myModalUpdate" onclick = "tableKeyPress()" hidden/>
                 
              </div>
             
        </div>
    </div>
    
     
    <style>
        @media (min-width: 1200px){
.modal-xl {
    max-width: 1140px;
}
}
@media (min-width: 992px){
.modal-lg, .modal-xl {
    max-width: 800px;
}}
    </style>


       <%--
           MODALS COMMITEE EVALUATION Rejection
    --%>
      <div class="container">
        <div class="modal fade" id="myModalUpdate" role="dialog">
            <div class="modal-dialog modal-xl">

                 
                <div class="modal-content" style="width:100%;">
                    <div class="modal-header">
                        <h4 class="modal-title">Update</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">

                            <div class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                <label>To</label></div>
                                            <div class="col-sm-4">
                                                <input id="SendToUpText" class="form-control bor Emplidclass ToUPTextBoxClass" name="EmployeeIdText" placeholder="Employee ID"   type="text" onkeydown = "return tableInputKeyPress(event);"/>
                                                <asp:TextBox ID="ToUPTextBox" CssClass="form-control inp SendToTextBoxclass"  runat="server" placeholder="Remark BY Team" Visible="false"></asp:TextBox>
                                                
                                            </div>
                                            <div class="col-sm-3"><label>Idea ID:</label>
                                                </div>
                                            <div class="col-sm-3">
                                            <mark id="IdeaIdPopUpTag" style="padding-left: 10px;color:red"></mark>

                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-sm-2">
                                                </div>
                                            <div class="col-sm-10">
                                        <mark id="ToNameUpMark" style="padding-left: 10px;color:red"></mark>
                                                </div>
                                            </div>
                                    
                                    <%--<textarea name="composetextarea" runat="server" class="form-control" placeholder="Remark BY Team" rows="10"></textarea>--%>
                                </div>
                                    <div class="form-group">

                                        <asp:RadioButtonList ID="RepCheckRadioButtonList" runat="server" style="margin-left: 20px;margin-top: 20px;" RepeatDirection="Vertical" RepeatColumns="3">
                                        <asp:ListItem  class="fes">Same</asp:ListItem>
                                        <asp:ListItem >Change</asp:ListItem>
                                        
                                    </asp:RadioButtonList>
                                        

                                    </div>
                                   <div id = "rej">
                                    <div  class="form-group" >
                                       <br />
<input type="button" id="" value="Show/Hide BENEFITS MATRIX" class="btn apopbtn" onclick="showHideTable()"/>
<div id="scoreMatrixdiv" >
                                        
<table class="table table-hover" >

  <tr>
    <th >GRADE</th>
    <th>PRODUCTIVITY</th>
    <th>QUALITY (INTERNATIONAL OF PPM)</th>
	    <th>COST SAVING INR/ANNUM</th>
		    <th>SAFETY & ENVIRONMENT</th>
			 <th>6S</th>
  </tr>
  <tr>
    <td >A</td>
    <td  onclick="putvalue('A','6% & ABOVE','PRODUCTIVITY')">6% & ABOVE</td>
    <td onclick="putvalue('A','<200 PPM','QUALITY')"><200 PPM</td>
	<td onclick="putvalue('A','1,00,000 & ABOVE','COST SAVING')">1,00,000 & ABOVE</td>
	<td  onclick="putvalue('A','PREVENTIVE SIGNIFICANT','SAFETY')">PREVENTIVE SIGNIFICANT</td>
	<td onclick="putvalue('A','SIGNIFICANT','6S')">SIGNIFICANT</td>
	 
  </tr>
  <tr>
      <td>B</td>
    <td  onclick="putvalue('B','2% & ABOVE','PRODUCTIVITY')">2% & ABOVE</td>
    <td onclick="putvalue('B','500-200 PPM','QUALITY')">500-200 PPM</td>
	<td onclick="putvalue('B','50,000-1,00,000','COST SAVING')">50,000-1,00,000</td>
	<td  onclick="putvalue('B','PREVENTIVE MEDIUM','SAFETY')">PREVENTIVE MEDIUM</td>
	<td onclick="putvalue('B','MEDIUM','6S')">MEDIUM</td>
  </tr>
  <tr>
       <td>C</td>
    <td onclick="putvalue('C','<2%','PRODUCTIVITY')"><2%</td>
    <td onclick="putvalue('C','>500 PPM','QUALITY')">>500 PPM</td>
	<td onclick="putvalue('C','LESS THAN 50,000','COST SAVING')">LESS THAN 50,000</td>
	<td onclick="putvalue('C','PREVENTIVE LOW','SAFETY')">PREVENTIVE LOW</td>
	<td onclick="putvalue('C','LOW','6S')">LOW</td>
	    
  </tr>
 
</table>
 </div>
<br/> 
<script> 
function showHideTable() {
    var x = document.getElementById("scoreMatrixdiv");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
} 
    function putvalue(grade, value, sub)
    {
        document.getElementById('fname').value = grade;
        document.getElementById('fname1').value = value;
        document.getElementById('fname2').value = sub;
    }
</script> 
<div class="row">
    <div class="col-md-1 text-nowrap"><b>Grade</b></div>
    <div class="col-md-2"><input type="text" class="form-control  inp SendToTextBoxclass" name="fname"  id="fname"/></div>
     <div class="col-md-2"><b>Subject</b></div>
    <div class="col-md-3"> <input type="text" class="form-control  inp SendToTextBoxclass" name="fname2"  id="fname2"/></div>
    <div class="col-md-1 text-nowrap"><b>Value</b></div>
    <div class="col-md-3">  <input type="text" class="form-control  inp SendToTextBoxclass" name="fname1"  id="fname1"/></div>
   
</div>







                                    
                                </div></div>
                                    

                                </div>

                                
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="UpdateButton" runat="server" CssClass="form-control apopbtn" Text="Send" style="display:none;" OnClick="UpdateButton_Click" />
                              <input type="button" class="form-control apopbtn" style="width:100%; " value="Send" onclick="sendEmail()" />    <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>
         
                        <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div> 




 

    <script src="../UI/Style/jquery.min.js"></script>


     <script>
        function tableInputKeyPress(e) {
            // alert('Keypress called');
            e = e || window.event;
            var key = e.keyCode;
            if (key == 13 || key == 9) //Enter
            {

                var empId = $('#SendToUpText').val();

                
                $.ajax({
                    url: 'BeneficiaryDashboard.aspx/Checking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{emp:' + JSON.stringify(empId) + '}',
                    dataType: "json",

                    success: function (data) {
                        
                        document.getElementById("ToNameUpMark").innerHTML = data.d.empname;
                        //document.getElementById("SendToTextMark").innerHTML = data.d.empname;
                        $(".SendToTextBoxclass").val(data.d.empid);

                        //$(".SendToAppTextBox").val(data.d.empid);


                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                });
                e.preventDefault();
                return false; //return true to submit, false to do nothing
            }

        }
    </script>
    
       <script>
       $(document).ready(function () {
           $("#preloader").hide();
        
       });
   </script>
     <script>
        function sendEmail()
        {
            $("#preloader").show();
             var someSession = '<%= Session["UserName"].ToString() %>';
             var empid= '<%= Session["UserId"].ToString() %>';
             var Designation= 'Beneficiary Team Member';
         
            var formData = new FormData();
            formData.append("toAddress", "vengadessane.nadradjane@poclain.com");
            // formData.append("toAddress", "manikandan.ramsaro@gmail.com");
            formData.append("toName", "Vengadessane");
            formData.append("toId", "PI-242");
            formData.append("subject", "Final DBA verification - From Beneficiary -" + document.getElementById('IdeaIdPopUpTag').innerHTML);
            formData.append("ideaID", document.getElementById('IdeaIdPopUpTag').innerHTML);
            formData.append("content","I validated and given score according to the works and please do the further step");
            formData.append("sender", someSession + ",<br/>" + empid + ",<br/>" + Designation);


            formData.append("resci", "Team");
            formData.append("type", "New");
            formData.append("subTitle", "DBA verification - From Beneficiary");
            var object = {};
            formData.forEach(function (value, key) {
                object[key] = value;
            });
            var json = JSON.stringify(object);
            $.ajax({
                //   url: 'http://localhost:90/PIMS_emailPHP/email/send_mail.php',
                //url: 'http://10.14.0.150:90/PIMS_emailPHP/email/send_mail.php',
                url: 'http://10.14.0.40/WebEmail/api/Email/pimsEmail',
                type: 'POST',
                cache: false,
                contentType: 'application/json',
                processData: false,
                data: json,//formData, 
                    
                    success: function (data) { 
                        document.getElementById("<%=UpdateButton.ClientID %>").click();
                        console.log('button clicked');
                    },
                    error: function (err) {
                        
                         document.getElementById("<%=UpdateButton.ClientID %>").click();
                        console.log('button clicked');
                    }
                 });
           
        }
    </script>
        <script>

            $(document).ready(function () {
                $("#rej").hide();
                
                $("#myModalComiteeEvaluation").on('hidden.bs.modal', function (e) {
                    console.log("modal");
                });
                $("[id*=RepeaterLinkButton]").click(function () {
                    var lbIdeaID = $(".lbIdeaIDClass").text();
                });
            });
        </script>
    <script type ="text/javascript">

        $('.ideadiv').click(function () {

            //var text = $(this).text();
            var IdeaID = $(this).closest('.ideadiv').find('.IdeaIdclasstxt').val();
            // alert(text);
            //alert(IdeaID);
           
            var key = 0;
            var t = "";
            console.log("checking");
            if (key == 0) //Enter
            {
                console.log("IDea ID: " + IdeaID);
                $.ajax({
                    url: 'BeneficiaryDashboard.aspx/MailContent',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{idea:' + IdeaID + '}',
                    dataType: "json",

                    success: function (data) {
                        console.log("test" + data.d.fromTag);
                        var st = data.d.Status;
                        document.getElementById("SfromTag").innerHTML = "From : ";
                        document.getElementById("SEIDTag").innerHTML = "TO : ";
                        document.getElementById("SDepTag").innerHTML = "Department : ";
                        document.getElementById("SSubjectTag").innerHTML = data.d.SSubject;
                        document.getElementById("STimeTag").innerHTML = data.d.SDate;
                        document.getElementById("SContent").innerHTML = "     ---  Suggestion Description  --- ";
                        document.getElementById("SContentTag").innerHTML = data.d.SContent;


                        document.getElementById("SGrade").innerHTML = "Grade : ";
                        document.getElementById("SBenefitmatrix").innerHTML = "BenefitsMatrix : ";
                        document.getElementById("SGradeTag").innerHTML = data.d.grade;
                        document.getElementById("SBenefitmatrixTag").innerHTML = data.d.benmatrix;



                        document.getElementById("IdeaIdPopUpTag").innerHTML = data.d.IdeaIdTag;
                        document.getElementById("CmtIdTag").innerHTML = data.d.cmtid;
                        
                        document.getElementById("SubjectTag").innerHTML = data.d.subject;
                        document.getElementById("SMail").innerHTML = "MailID : ";
                        document.getElementById("SMailTag").innerHTML = data.d.MailID;
                        document.getElementById("SEmployeeNameTag").innerHTML = data.d.Sempname;
                        document.getElementById("SEmployeeIDTag").innerHTML = data.d.Sempid;
                        document.getElementById("SDepartmentTag").innerHTML = data.d.SDepartment;
                        
                        document.getElementById("fromTag").innerHTML = "From : ";
                        document.getElementById("EIDTag").innerHTML = "Employee ID : ";
                        document.getElementById("DepTag").innerHTML = "Department : ";
                        document.getElementById("DesTag").innerHTML = "Designaton : ";
                        document.getElementById("CatTag").innerHTML = "Category : ";
                        document.getElementById("IdIdTag").innerHTML = "Idea ID : ";
                        document.getElementById("BefTag").innerHTML = "Before : ";
                        document.getElementById("AftTag").innerHTML = "After : ";
                        document.getElementById("BenTag").innerHTML = "Benefits : ";
                        document.getElementById("upl1Tag").innerHTML = "FileUpload1 : ";
                        document.getElementById("upl2Tag").innerHTML = "FileUpload2 : ";
                        document.getElementById("upl3Tag").innerHTML = "After Implement : ";
                        document.getElementById("SubjectTag").innerHTML = data.d.subject;

                        document.getElementById("EmployeeNameTag").innerHTML = data.d.empname;
                        document.getElementById("EmployeeIDTag").innerHTML = data.d.empid;
                        document.getElementById("DepartmentTag").innerHTML = data.d.Department;
                        document.getElementById("DesignationTag").innerHTML = data.d.Designation;
                        document.getElementById("TimeTag").innerHTML = data.d.Date;
                        document.getElementById("CategoryTag").innerHTML = data.d.category;
                        document.getElementById("IdeaIdTag").innerHTML = data.d.IdeaIdTag;
                        document.getElementById("BeforeTag").innerHTML = data.d.Before;
                        document.getElementById("AfterTag").innerHTML = data.d.After;
                        document.getElementById("BenefitsTag").innerHTML = data.d.Benifit;
                        imageAttachmenthandler(data.d.upload1, 'ContentPlaceHolder1_UpLoad1Tag', 'attachement1', 'imgAt1', 'fileAt1');
                        imageAttachmenthandler(data.d.upload2, 'ContentPlaceHolder1_UpLoad2Tag', 'attachement2', 'imgAt2', 'fileAt2');
                        imageAttachmenthandler(data.d.upload3, 'ContentPlaceHolder1_UpLoad3Tag', 'attachement3', 'imgAt3', 'fileAt3');
                        if (st != "") {
                            
                       
                            document.getElementById("ReplyTag").innerHTML = " Reply ";
                            document.getElementById("StatusTag").innerHTML = "Status: ";
                            if (st == "Rejected") {
                                document.getElementById("ReasonTag").innerHTML = "Reason: ";
                                document.getElementById("ReasonPTag").innerHTML = data.d.SReason;
                            }
                            else {
                                document.getElementById("ReasonTag").innerHTML = "";
                                document.getElementById("ReasonPTag").innerHTML = "";
                            }
                            document.getElementById("ResponseTag").innerHTML = "Implement Days: ";
                            document.getElementById("StatusPTag").innerHTML = data.d.Status;
                            document.getElementById("ResponsePTag").innerHTML = data.d.SResponse;

                            
                        }
                        else {
                            document.getElementById("ReplyTag").innerHTML = "---Waiting For Response---";
                            
                            document.getElementById("StatusTag").innerHTML = " ";
                            document.getElementById("ReasonTag").innerHTML = "";
                            document.getElementById("ReasonPTag").innerHTML = "";
                            document.getElementById("ResponseTag").innerHTML = " ";
                            document.getElementById("StatusPTag").innerHTML = "";
                            document.getElementById("ResponsePTag").innerHTML = "";
                        }
                        
                        $(".MCideaidclass").val(data.d.IdeaIdTag);
                        //data.d.IdeaIdTag
                        document.getElementById("SendToUpText").innerHTML = 'PI-242';
                        $(".ToUPTextBoxClass").val('PI-242');
                        document.getElementById("ToNameUpMark").innerHTML = 'Vengadessane';
                        $(".ideaidclass").val(data.d.IdeaIdTag);
                        $(".IdeaIDClass").val(data.d.IdeaIdTag);
                        $(".IMPIdeaIdClass").val(data.d.IdeaIdTag);

                        //document.getElementById("ToNameMark").innerHTML = data.d.empname;
                        //document.getElementById("SendToTextMark").innerHTML = data.d.empname;
                        $(".SendToTextBoxclass").val(data.d.empid);

                        //$('#fromTag').html("From :");
                        //$('#SubjectTagLabel').html(data.d.subject);


                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                });

                return false; //return true to submit, false to do nothing
            }



        });


        //function ConformPsIdeaID() {
                
        //    var lbIdeaID = $(".IdeaIdclasstxt").val();
        //}
    </script>
    <script>
        $(document).ready(function () {
            $("[id*=RepCheckRadioButtonList]").click(function () {
                
                var textbox = "" + $(this).val().toString();
                console.log('first:' + textbox);
                if ((textbox == "Change")) {
                    $(this).prop("checked", true);
                    $('#rej').show();
                    //return false;
                    if ($(this).is(":checked") == 0) {
                        console.log("Not Checked " + $('.fes').checked);
                        $('#rej').hide();

                    }
                }
                else if (textbox == "Same") {

                    $('#rej').hide(); 
                }
              
              

            });
            
        });

        
        </script>

    <script>
        function tableKeyPress() {
            // alert('Keypress called');


            var IdeaID = document.getElementById("CmtIdTag").innerHTML;
            console.log(IdeaID);
            if (IdeaID != "" && IdeaID != null) {
                $.ajax({
                    url: 'BeneficiaryDashboard.aspx/CheckingUpdate',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{emp:' + JSON.stringify(IdeaID) + '}',
                    dataType: "json",

                    success: function (data) {
                        document.getElementById("SendToUpText").innerHTML = data.d.Sempid;
                        $(".ToUPTextBoxClass").val(data.d.Sempid);
                        document.getElementById("ToNameUpMark").innerHTML = data.d.Sempname;
                        
                        $(".ResponseTextBoxClass").val(data.d.Response);
                        var che = data.d.Reason;
                        var type = data.d.Type;
                        //var chek = $("#RepCheckRadioButtonList").val().toString;
                        if (type == "Accepted" )
                        {
                            //$('#RepCheckRadioButtonList').find(':radio[value="0"]').prop('checked', true);
                            
                           
                            $('#rej').hide();
                            $('.ReasonRejTextBoxClass').val("");
                            $('.ResponseTextBoxClass').val(data.d.Response);
                        }
                        else
                        {
                            
                            $('#rej').show();
                            $('.ReasonRejTextBoxClass').val(data.d.Reason);
                            $('.ResponseTextBoxClass').val(data.d.Response);
                            //$("input[name='<%=RepCheckRadioButtonList.UniqueID %>']:checked").val("Rejected");
                            //$('#RepCheckRadioButtonList').find('input:radio[value="1"]').prop('checked', true);
                            
                           
                        }




                        //$(".SendToAppTextBox").val(data.d.empid);


                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                });
            }
            else
            {
                console.log("Error Has Been Found");
            }
            return false; //return true to submit, false to do nothing

        }
        
    </script>

</asp:Content>

