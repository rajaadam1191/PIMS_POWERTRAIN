<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EmployeeTask.aspx.cs" Inherits="ProclainPIMSMaster.Form.EmployeeTask" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 

 
       <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
            <link href="../UI/Style/select2.min.css" rel="stylesheet" />     
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
        @media only screen and (max-width: 700px) {
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
       <div class="row">
        <div class="col-lg-4 form-control" style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
             <div class="email-side-nav remain-height ov-h">
                        <div class="layer w-100">
               
                        </div> 
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px;padding-right:10px">
                                <%-- <div class="">--%>

                                <div class="peer fxw-nw bdB cur-p" >
                                 <asp:Repeater ID="MailRepeater" runat="server">
                                     <ItemTemplate>
                                         <div class="ideadiv" style="padding-left:10px">
                                             <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IDeaID")%>' ClientIDMode="Static" hidden></asp:Label>             
                                            <div class="row">
                                                <div class="col-sm-10">
                                                   <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("IDeaID")%>' hidden> </asp:TextBox>
                                  
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-sm-12 form-control" style="border:none!important;color: <%# Eval("Remark5").ToString()=="X"?"#609;":"#0f9aee;" %>" >
                                                    <%# Eval("SendFrom") %>
                                                    <br />
                                                    <%# Eval("Subject") %>
                                                    <br />
                                                    <%# Eval("IDeaID") %>
                                                    <br />
                                                   TargetDate: <%# Eval("Remark4") %>
                                                    <br />
                                                    <hr />
                                                </div>
                                            </div>
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
                                                        <mark  id="SMail" class="fnt"></mark><mark id="SMailTag"></mark>
                                                        
                                                        <hr />

                                                        <mark id="SContentTag" ></mark>
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
                                                                               <%-- <img src="ContentPlaceHolder1_UpLoad3Tag"  id="UpLoad3Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>--%>
                                                                                    </div>
                                                                                      <div id="fileAt3">
                                                                                         <%-- <a href="#" id="attachement3" target="_blank" class="btn btn-info">Download Attachment 3 </a>--%>
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
                                                                <mark id="ResponseTag"  class="fnt"></mark>
                                                        <p id="ResponsePTag" class="textalign"  style="padding-left: 10px"></p>
                                                                    </fieldset>
                                                                 
                                                            </div>
                                                            <p id="SendToUpText" class="textalign"  style="padding-left: 10px" hidden></p>
                                                            <p id="ToNameUpMark" class="textalign"  style="padding-left: 10px"hidden></p>
                                                            <asp:TextBox runat="server" ID="hodid" Visible="false"></asp:TextBox>
                                                            <input type="text" id="hodid2" class="ToUPTextBoxClass" name="hodid" hidden />
                                                              <asp:TextBox ID="txtHODid" CssClass="form-control ToUPTextBoxClass"  runat="server"  Visible="false"></asp:TextBox>
                                                
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
//img2.onclick = function () {
//    modal.style.display = "block";
//    modalImg.src = this.src;
    
//}

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
             <input id="ApproveButton" class="form-control btns" style="height:50%;width:100%;color:white" type="button" value="Response" data-toggle="modal" data-target="#myModalImpIdeaForm"/>
                 
             <%--</div>
             <div class="row">--%>
                 <input id="RejectedButton" class="form-control btns" style="height:33%;width:100%;color:white" type="button" value="Reject" data-toggle="modal" data-target="#myModalUpdate" hidden/>

             <%--</div>--%>
             <input id="UpdatePopButton" class="form-control btns" style="height:50%;width:100%;color:white" type="button" value="Alter" data-toggle="modal" data-target="#myModalUpdate" onclick = "tableKeyPress()" hidden/>
                 
              </div>
             
        </div>
    </div>
    

     

     <div class="container">
        <div class="modal fade" id="myModalImpIdeaForm" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Update</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">


                            <div class="email-compose-body" >
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IMPIdeaIdTextBox"  CssClass="form-control inp IMPIdeaIdClass" placeholder="Idea ID" onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" runat="server"></asp:TextBox>

                                    </div>

                                </div>

            <%--                    <div class="form-group" style="visibility:hidden">
                                    <label>Manager Name</label>
                                        <asp:DropDownList ID="IMPDepaDLists" CssClass="js-example form-control" Width="100%" runat="server" AutoPostBack="false" AppendDataBoundItems="True">
                                            <asp:ListItem>--Select--</asp:ListItem>

                                        </asp:DropDownList>
                                
                                        
                                </div>--%>
                                <asp:TextBox ID="manageremailid" CssClass="form-control inp manageremailid" runat="server" hidden></asp:TextBox>

                                <div class="form-group">
                                    <div class="peers">
                                        <label>To: </label>
                                        <asp:TextBox ID="TOIMPTextBox" CssClass="form-control inp IMPToTextBoxClass" placeholder="To: " runat="server"></asp:TextBox>
                                        
                                        <asp:TextBox ID="EmpIDIMPTextBox" CssClass="form-control inp IMPEmpIDTextBoxClass" placeholder="ID " runat="server" ></asp:TextBox>
                                        <asp:TextBox ID="DupEmpIDIMPTextBox" CssClass="form-control inp" placeholder="ID " runat="server" ClientIDMode="Static" Visible="false"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Mail ID: </label>
                                    <asp:TextBox ID="MailIdIMPTextBox" CssClass="form-control inp IMPmailidtextClass" placeholder="Mail ID"  runat="server"></asp:TextBox>
                                    <asp:TextBox ID="DupMailIdIMPTextBox" CssClass="form-control inp" placeholder="To: " runat="server" ClientIDMode="Static" Visible="false" ></asp:TextBox>
                                    <%--<input id="mailidtext" type="text" class="form-control mailidtextClass" placeholder="Mail ID" />--%>
                                </div>
                                <div class="form-group">
                                    <label>Subject</label>
                                     <asp:TextBox ID="SubjectIMPTextBox" CssClass="form-control inp" placeholder="Mail Subject"  runat="server"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Remark BY Team</label>
                                    <asp:TextBox ID="ContectIMPTextBox" CssClass="form-control inp" runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                   
                                </div>
                                 <div class="form-group">
                                     <div class="row">
                                         <div class="col-md-2"></div>
                                         <div class="col-md-8">
                                             <asp:FileUpload ID="ImageFileUpload3" CssClass="form-control" runat="server" />
                                         </div>
                                         <div class="col-md-2"></div>
                                     </div>
                                     
                                 </div>
 
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="ManagerButton" runat="server" CssClass="form-control apopbtn btn-primary" Text="Send"  style="display:none;"  OnClick="ManagerButton_Click" />
                        <input type="button" class="form-control apopbtn btn-primary" style="width:100%; " value="Send" onclick="sendEmail()" />    <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>
              <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
     
    <script src="../UI/Style/jquery.min.js"></script>
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
             //var Designation= ' < %= Session["Designation"].ToString() %>';
           
            var formData = new FormData();
             var toaddress=document.getElementById('<% = MailIdIMPTextBox.ClientID %>').value;
            var toName=document.getElementById('<% = TOIMPTextBox.ClientID %>').value;
            var toId = document.getElementById('<% = EmpIDIMPTextBox.ClientID %>').value;
            var manemailid= document.getElementById('<% = manageremailid.ClientID %>').value;
            var formData = new FormData();
            formData.append("toAddress", toaddress.split(" ").join(""));
            formData.append("toName",  toName.split(" ").join(""));
            formData.append("toId", toId.split(" ").join(""));
            formData.append("toCCId", manemailid.split(" ").join(""));

            formData.append("subject", "HOS verification -"+document.getElementById('<% = SubjectIMPTextBox.ClientID %>').value);
            formData.append("ideaID", document.getElementById('<% = IMPIdeaIdTextBox.ClientID %>').value);
            formData.append("content",document.getElementById('<% = ContectIMPTextBox.ClientID %>').value);
            formData.append("sender", someSession + ",<br/>" + empid );


            formData.append("resci", "Team");
            formData.append("type", "New");
            formData.append("subTitle", "HOS verification after idea implementation");
            var object = {};
            formData.forEach(function (value, key) {
                object[key] = value;
            });
            var json = JSON.stringify(object);
            $.ajax({
                //   url: 'http://localhost:90/PIMS_emailPHP/email/send_mail.php',
                //url: 'http://10.14.0.150:90/PIMS_emailPHP/email/send_mail.php',
                url: 'http://10.14.0.40/WebEmail/api/Email/pimsEmailCC',
                //url:'http://localhost/EmailApi/api/Email/pimsEmail',pimsEmailCC
                type: 'POST',
                cache: false,
                contentType: 'application/json',
                processData: false,
                data: json,//formData,  
                    
                    success: function (data) {
                        console.log(data);
                      document.getElementById("<%=ManagerButton.ClientID %>").click();
                       //  document.getElementById("Submit").click();
                    },
                    error: function (err) {
                        console.log(err);
                      document.getElementById("<%=ManagerButton.ClientID %>").click(); // document.getElementById("Submit").click();
                    }
                 });
       
        }
    </script>
    <script>
        function tableInputKeyPress(e) {
            // alert('Keypress called');
            e = e || window.event;
            var key = e.keyCode;
            if (key == 13 || key == 9) //Enter
            {

                var empId = $('#SendToUpText').val();

                
                $.ajax({
                    url: 'EmployeeTask.aspx/Checking',
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
            console.log('called-c1');
            //var text = $(this).text();
            var IdeaID = $(this).closest('.ideadiv').find('.IdeaIdclasstxt').val();
            // alert(text);
            //alert(IdeaID);
            console.log(IdeaID);
            var key = 0;
            var t = "";
            console.log("checking");
            if (key == 0) //Enter
            {
                console.log("IDea ID: " + IdeaID);
                $.ajax({
                    url: 'EmployeeTask.aspx/MailContent',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data1) { return data1; },
                    data: '{idea:' + IdeaID + '}',
                    dataType: "json",

                    success: function (data) {
                        
                        console.log("test " + data.d.IdeaIdTag);
                        
                        var st = data.d.Status;
                        document.getElementById("SfromTag").innerHTML = "From : ";
                        document.getElementById("SEIDTag").innerHTML = "TO : ";
                        document.getElementById("SDepTag").innerHTML = "Department : ";
                        document.getElementById("SSubjectTag").innerHTML = data.d.SSubject;
                        document.getElementById("STimeTag").innerHTML = data.d.SDate;
                        document.getElementById("SContent").innerHTML = "---  Suggestion Description  --- ";
                        document.getElementById("SContentTag").innerHTML = data.d.SContent;
                        //document.getElementById("IdeaIdPop1Tag").innerHTML = data.d.IdeaIdTag;
                        //document.getElementById("IdeaIdPop2Tag").innerHTML = data.d.IdeaIdTag;
                      //  document.getElementById("IdeaIdPopUpTag").innerHTML = data.d.IdeaIdTag;
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
                        //document.getElementById("upl3Tag").innerHTML = "FileUpload3 : ";
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
                       <%-- imageAttachmenthandler(data.d.upload3, 'ContentPlaceHolder1_UpLoad3Tag', 'attachement3', 'imgAt3', 'fileAt3');--%>
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
                            document.getElementById("ResponseTag").innerHTML = "Remark By Team: ";
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
                        
                        document.getElementById("SendToUpText").innerHTML = data.d.SenderID;
                        
                        $(".ToUPTextBoxClass").val(data.d.SenderID);
                        console.log('+' + data.d.SenderID);
                        $('#<%= txtHODid.ClientID %>').val(data.d.SenderID);//txtHODid
                      //  document.getElementById("hodid2").value = data.d.SenderID;
                        document.getElementById("ToNameUpMark").innerHTML = data.d.Sempname;
                        $(".ideaidclass").val(data.d.IdeaIdTag);
                        $(".IdeaIDClass").val(data.d.IdeaIdTag);
                        $(".IMPIdeaIdClass").val(data.d.IdeaIdTag);
                       

                        //document.getElementById("ToNameMark").innerHTML = data.d.empname;
                        //document.getElementById("SendToTextMark").innerHTML = data.d.empname;
                        $(".SendToTextBoxclass").val(data.d.empid);
                        getHOD_emailDetails(data.d.SenderID);
                        //$('#fromTag').html("From :");
                        //$('#SubjectTagLabel').html(data.d.subject);


                    },
                    error: function (err) {
                        alert('Error : '+err); console.log(err);
                        tableInputKeyPress(e);
                    }
                });

                return false; //return true to submit, false to do nothing
            }



        });

        function getHOD_emailDetails(hodID)
        {
             $.ajax({
                                url: 'EmployeeTask.aspx/MChecking',
                                method: 'post',
                                contentType: "application/json; charset=utf-8",
                                async: true,
                                dataFilter: function (data) { return data; },
                                data: '{emp:' + JSON.stringify(hodID) + '}',
                                dataType: "json",

                                success: function (data) {
                                    console.log("test1HEID" + data.d.HEmployeeID);
                                    console.log("test1HEN" + data.d.HEmployeeName);
                                    console.log("testHMID" + data.d.Email);
                                    
                            
                                    var fxs = "";
                                    var fzs = "";
                                    fs = data.d.Email;
                                    feids = data.d.HEmployeeID;
                                    var EIDs = $(".IMPEmpIDTextBoxClass").val().toString();
                                    var zs = $(".IMPmailidtextClass").val().toString();
                                    
                                    if (zs == "") {
                                        fxs = zs + " " + fs;
                                        fzs = EIDs + "" + feids;
                                    }
                                    else {
                                        console.log("Textbox" + txts);
                                        fxs = zs + ',' + " " + fs;
                                        fzs = EIDs + ',' + "" + feids;

                                    }
                                    $(".IMPmailidtextClass").val(fxs);
                                    $(".IMPEmpIDTextBoxClass").val(fzs);
                                    $(".IMPToTextBoxClass").val(data.d.HEmployeeName);
                                    $(".manageremailid").val(data.d.CCMail);
                                    

                        },
                        error: function (err) {
                            alert('Error : ' + data); console.log(err);
                            //tableInputKeyPress(e);
                        }
                            });
        }
        //function ConformPsIdeaID() {
                
        //    var lbIdeaID = $(".IdeaIdclasstxt").val();
        //}
    </script>
    <script>
        $(document).ready(function () {
            $("[id*=RepCheckRadioButtonList]").click(function () {
                
                var textbox = "" + $(this).val().toString();
                console.log('first:' + textbox);
                if ((textbox == "InProgress")) {
                    $(this).prop("checked", true);
                    $('#rej').show();
                    //return false;
                    if ($(this).is(":checked") == 0) {
                        console.log("Not Checked " + $('.fes').checked);
                        $('#rej').hide();

                    }
                }
                else if (textbox == "Complete") {

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
                    url: 'EmployeeTask.aspx/CheckingUpdate',
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
                        if (type == "Complete" )
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
                            //$("input[name='']:checked").val("Rejected");
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
