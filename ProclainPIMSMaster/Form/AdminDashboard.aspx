<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="ProclainPIMSMaster.Form.AdminDashboard" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

        .fnt {
            font-size: 14px!important;
            color: #72777a!important;
            letter-spacing: .2px!important;
        }

        .card-body {
            display: contents !important;
            padding: 0px;
            background: !important;
        }

        .email-app .email-side-nav {
            width: 350px !important;
            position: inherit !important;
        }

        @media screen and (min-width: 992px) {
            .email-app .email-wrapper {
                margin-left: 350px !important;
            }
        }

        @media screen and (min-width: 992px) {
            .email-app .email-wrapper .email-list {
                width: 100% !important;
            }
        }

        
        @media screen and (max-width: 1439px) and (min-width: 992px) {
            .full-container {
                padding-left: 13px !important;
                padding-right: 13px !important;
            }
        }

        @media (max-width: 575.98px) {
            .resps {
                border: none;
                margin-right: 10%;
            }
        }


        @media (min-width: 576px) and (max-width: 767.98px) {
            .resps {
                border: none !important;
                margin-left: 12%;
            }
        }


        @media (min-width: 768px) and (max-width: 991.98px) {
            .resps {
                border: none !important;
                margin-left: 14%;
            }
        }


        @media (min-width: 992px) and (max-width: 1199.98px) {
            .resps {
                border: none !important;
                margin-left: 15%;
            }
        }


        @media (min-width: 1200px) {
            .resps {
                border: none !important;
                margin-left: 20%;
            }
        }

        .full-container {
          
    top: 21px !important;
    
    bottom: 0px !important;


        }
        .mark, mark {
        background-color: #ffffff00 !important;
        }

        .p-10 {
    padding: 10px!important;

}
        .reps {
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
        }

         .btns {
            background: linear-gradient(-68deg, #cec9cc, #785b5b) !important;
            
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



    <script type="text/javascript">
        // $(".js-example").select2();
        $(document).ready(function () {
            $(".js-example").select2(
                {
                    placeholder: "--Select--",
                    allowClear: true
                });
        });


    </script>

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
    
     <link href="../UI/Style/all.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
   
    <link href="../UI/Style/select2.min.css" rel="stylesheet" />
    
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
     
<style type="text/css">
@keyframes ldio-l05zvogs5db {
  0% {
    opacity: 1;
    backface-visibility: hidden;
    transform: translateZ(0) scale(2.4099999999999997,2.4099999999999997);
  } 100% {
    opacity: 0;
    backface-visibility: hidden;
    transform: translateZ(0) scale(1,1);
  }
}
.ldio-l05zvogs5db div > div {
  position: absolute;
  width: 24px;
  height: 24px;
  border-radius: 50%;
  background: #72c4ff;
  animation: ldio-l05zvogs5db 1s linear infinite;
}.ldio-l05zvogs5db div:nth-child(1) > div {
  left: 148px;
  top: 88px;
  animation-delay: -0.8888888888888888s;
}
.ldio-l05zvogs5db > div:nth-child(1) {
  transform: rotate(0deg);
  transform-origin: 160px 100px;
}.ldio-l05zvogs5db div:nth-child(2) > div {
  left: 134px;
  top: 127px;
  animation-delay: -0.7777777777777778s;
}
.ldio-l05zvogs5db > div:nth-child(2) {
  transform: rotate(40deg);
  transform-origin: 146px 139px;
}.ldio-l05zvogs5db div:nth-child(3) > div {
  left: 98px;
  top: 147px;
  animation-delay: -0.6666666666666666s;
}
.ldio-l05zvogs5db > div:nth-child(3) {
  transform: rotate(80deg);
  transform-origin: 110px 159px;
}.ldio-l05zvogs5db div:nth-child(4) > div {
  left: 58px;
  top: 140px;
  animation-delay: -0.5555555555555556s;
}
.ldio-l05zvogs5db > div:nth-child(4) {
  transform: rotate(120deg);
  transform-origin: 70px 152px;
}.ldio-l05zvogs5db div:nth-child(5) > div {
  left: 32px;
  top: 109px;
  animation-delay: -0.4444444444444444s;
}
.ldio-l05zvogs5db > div:nth-child(5) {
  transform: rotate(160deg);
  transform-origin: 44px 121px;
}.ldio-l05zvogs5db div:nth-child(6) > div {
  left: 32px;
  top: 67px;
  animation-delay: -0.3333333333333333s;
}
.ldio-l05zvogs5db > div:nth-child(6) {
  transform: rotate(200deg);
  transform-origin: 44px 79px;
}.ldio-l05zvogs5db div:nth-child(7) > div {
  left: 58px;
  top: 36px;
  animation-delay: -0.2222222222222222s;
}
.ldio-l05zvogs5db > div:nth-child(7) {
  transform: rotate(240deg);
  transform-origin: 70px 48px;
}.ldio-l05zvogs5db div:nth-child(8) > div {
  left: 98px;
  top: 29px;
  animation-delay: -0.1111111111111111s;
}
.ldio-l05zvogs5db > div:nth-child(8) {
  transform: rotate(280deg);
  transform-origin: 110px 41px;
}.ldio-l05zvogs5db div:nth-child(9) > div {
  left: 134px;
  top: 49px;
  animation-delay: 0s;
}
.ldio-l05zvogs5db > div:nth-child(9) {
  transform: rotate(320deg);
  transform-origin: 146px 61px;
}
.loadingio-spinner-spin-70jldgjfy3 {

   width: 200px;
            height: 200px;
            position: absolute;
            left: 50%;
            top: 50%;
            
            background-repeat: no-repeat;
            background-position: center;
            margin: -100px 0 0 -100px;
}
.ldio-l05zvogs5db {
  width: 100%;
  height: 100%;
  position: relative;
  transform: translateZ(0) scale(1);
  backface-visibility: hidden;
  transform-origin: 0 0; /* see note above */
}
.ldio-l05zvogs5db div { box-sizing: content-box; }
/* generated by https://loading.io/ */
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script>
       $(document).ready(function () {
           $("#preloader").hide();
        
       });
   </script>
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
               
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px; cursor:pointer;">
                                <%-- <div class="">--%>



                                <asp:Repeater ID="MailRepeater" runat="server">
                                   
                                    <ItemTemplate>
                                       
                                            <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <%--<asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>--%>             
                                            <div class="row">

                                                <div class="col-sm-12">
                                                    
                                                    <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("IdeaId")%>' hidden></asp:TextBox>
                                                  
                                                    
                                                    
                                                </div>
                                                
                                                

                                            </div>

                                            <div class="row" style="margin-right: 1px;">
                                                <div id="viewdetail" class="col-sm-9 form-control" style="border-top:none;border-left:none;border-right:none; border-bottom:none">
                                                    
                                                    <%# Eval("EmployeeName") %>
                                                    <br />
                                                    <%# Eval("Subject") %>
                                                    <br />
                                                    <%# Eval("IdeaId") %>
                                                    <br />
                                                   
                                                    
                                                </div>
                                                <div class="col-sm-3 form-control" style="border-top:none;border-left:none;border-right:none; border-bottom:none; align-content:center;">
                                                    
                                                    
                                                   Days: <%# Eval("Datedif") %>
                                                    <br />
                                                    
                                                </div>
                                            </div>
                                                <hr />
                                        </div>

                                    </ItemTemplate>

                                </asp:Repeater>




                                <%--</div>--%>
                                <%--</div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             <div class=" col-lg-7 reps" style="padding-top:15px;" >
         <div class="rightside no-gutters" style="margin-right: 50px;">
                    <div class="email-wrapper row remain-height ov-h" style="    background-color: #fff0!important;">
             <div class="email-list h-100 layers" style="width: 100%; align-items: initial">
                            <div class="h-100 scrollable pos-r">
                   
                                <div class="email-content-wrapper">
                                    <div class="peers ai-c jc-sb pY-30" style="padding-left: 10px; padding-right: 20px; padding-bottom: 10px!important">

                                        <div class="peer peer-greed">
                                            <div class="peer" align="right">
                                                <asp:ImageButton ID="PFuthurImageButton" runat="server" ImageUrl="~/UI/assets/static/images/Icons/3-Copy.jpg" Height="25px" Width="25px" align="right" OnClick="PFuthurImageButton_Click" /><br />
                                             
                                            </div>
                                            <div class="peer mR-20">
                                            </div>
                                           


                                            <asp:ScriptManager ID="ScriptManager" runat="server"  />
                                            <asp:UpdatePanel ID="UpdatePanel1" 
                                                UpdateMode="Conditional"
                                                runat="server" >
                                                <ContentTemplate>


                                                    <div class="pear">
                                                      <div align="center" >  
                                                        <lable ID="SubjectTaglabel"  ></lable>
                                                        <mark class="form-control" id="SubjectTag"  style=" text-align:left; text-transform:uppercase; font-size: 30px; border: 0px solid; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px;"></mark>
                                                        <h6 id="TimeTag" style="text-align:right;"></h6></div>
                                                        
                                                        <table id="viewtbl" align="center" class="table table-bordered" style="border-style:ridge;width:80%;"><!--visibility:hidden;-->
                                                        <div class="row" style="padding-left:15px;">
                                                            <div class="column">
                                                                    <mark id="fromTag" class="fnt"></mark>
                                                                 </div>
                                                            <div class="column">
                                                                    <mark id="EmployeeNameTag"></mark>
                                                                </div>
                                                         </div>
                                                                
                                                        <div class="row" style="padding-left:15px;">
                                                              <div class="column">  
                                                                    <mark id="EIDTag" class="fnt"></mark>
                                                                 </div>
                                                            <div class="column">
                                                                    <mark id="EmployeeIDTag"></mark>
                                                                </div>
                                                        </div>
                                                             
                                                        <tr>
                                                                <td>
                                                                    <mark  id="DepTag" class="fnt"></mark>
                                                                 </td>
                                                                <td>
                                                                    <mark id="DepartmentTag"></mark>
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                                <td>
                                                                    <mark  id="DesTag" class="fnt"></mark>
                                                                 </td>
                                                                <td>
                                                                    <mark  id="DesignationTag"></mark>
                                                                </td>
                                                        </tr>
                                                        

                                                        
                                                        <div align="center" style=" text-align:right;  padding-left: 10px!important; padding-right: 20px!important; padding-top: 10px!important; padding-bottom: 10px!important">
                                                        <mark  id="IdIdTag" class="fnt"></mark><mark id="IdeaIdTag" style="padding-left: 10px"></mark>
                                                        <asp:TextBox ID="CEideaidTextBox" CssClass="ideaidclass" runat="server" hidden></asp:TextBox>
                                                        
                                                        
                                                                
                                                                    <caption>
                                                                        <mark  id="CatTag" class="fnt"></mark><br /><mark  id="CategoryTag"></mark>
                                                                        <br />
                                                                        <br />
                                                                        <mark id="BefTag" class="fnt"></mark><br /><mark id="BeforeTag"></mark>
                                                                        <br />
                                                                        <br />
                                                                        <mark id="AftTag" class="fnt"></mark><br /><mark id="AfterTag"></mark>
                                                                        <br />
                                                                        <br />
                                                                        <mark id="BenTag" class="fnt"></mark><br /><mark id="BenefitsTag"></mark>
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
                                                                                <%--<img src="ContentPlaceHolder1_UpLoad3Tag"  id="UpLoad3Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>--%>
                                                                                    </div>
                                                                                      <div id="fileAt3">
                                                                                          <%--<a href="#" id="attachement3" target="_blank" class="btn btn-info">Download Attachment 3 </a>--%>
                                                                                          </div>
                                                                                </div>
                                                                            </div>
                                                                            <div id="myModal" class="modal">
                                                                                        <span class="close">&times;</span>
                                                                                        <img class="modal-content" id="img01">
                                                                                        <div id="caption"></div>
                                                                                    </div>
                                                                            </div>
                                                            </caption>
                                                        
                                                        
                                                            </div>
                                                        <div class="peer">
                                                            <a id="Image1"></a>
                                                            
                                                        </div>

                                                    </table>
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
img.onclick = function () {
   
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
                                             <script type="text/javascript">
                                                        $(document).ready(function () {
                                                           
                                                                 $("#viewtbl").hide();
                                                             
                                                        });

                                                       
                                                 </script>

                                           
                                        </div>

                                    </div>
                                    
                                </div>
                            </div>

                        </div>
                        
                        </div>
             </div>


                  
                 </div>

              <div class=" col-lg-1 reps" style="padding:0px">
         <div class="rightside no-gutters" style="width: 100%;height: 100%;">
             <input id="committeeButton" class="form-control btns" style="height:50%;width:100%;color:white" type="button" value="Response" data-toggle="modal" data-target="#myModalComiteeEvaluation"/>
                 
 
             </div>
            </div>

                       
                    
        </div>
 
      <div class="container">
        <div class="modal fade" id="myModalComiteeEvaluation" role="dialog">
            <div class="modal-dialog">
     

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Commitee Evaluvation</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">


                            <form class="email-compose-body" >
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IdeaIDTextBox" CssClass="form-control IdeaIDClass" placeholder="Idea ID" onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" runat="server"></asp:TextBox>

                                    </div>
                                     <div class="row errordiv"><div class="col-sm-12">
                                        <asp:Label ID="ErrorLabel" CssClass="ErrorLabelClass" runat="server" style="color:red" ></asp:Label>
        
                                     </div>
                                     </div>

                                </div>

                                <div class="form-group">
                                    <label>Department</label>



                                    <asp:CheckBoxList ID="DepRepCheckBoxList" CssClass="DepJQuery form-control" runat="server" RepeatDirection="Vertical" RepeatColumns="3" RepeatLayout="Table" OnSelectedIndexChanged="DepRepCheckBoxList_SelectedIndexChanged">
                                        <asp:ListItem class="form-control HRClass"  style="border: none;">HR</asp:ListItem>
                                        <asp:ListItem class="form-control LeanClass"  style="border: none;">Lean</asp:ListItem>
                                        <asp:ListItem class="form-control resps HSEClass" >HSE</asp:ListItem>                        
                                        <asp:ListItem class="form-control resps ProductionClass">Production ABU</asp:ListItem>
                                        <asp:ListItem class="form-control resps ProductionClass" >Production MBU</asp:ListItem>
                                        <asp:ListItem class="form-control resps ProductionClass" >Maintenance</asp:ListItem>
                                        
                                    </asp:CheckBoxList>
                                    <div id="go">
                                        <asp:DropDownList ID="DepartmentPopUPDDList" CssClass="js-example form-control DDJQuery DDJClass" Width="100%" runat="server" AutoPostBack="false" AppendDataBoundItems="True">
                                            <asp:ListItem>--Select--</asp:ListItem>

                                        </asp:DropDownList>
                                        <asp:TextBox ID="OthersDepRepTextBox" CssClass="form-control testid" placeholder="Idea ID" runat="server" hidden></asp:TextBox>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="peers">
                                        <label>To: </label>
                                        <asp:TextBox ID="ToTextBox" ReadOnly="True" CssClass="form-control ToTextBoxClass" placeholder="To: " runat="server"></asp:TextBox>
                                        <asp:TextBox ID="EmpDepTextBox"  CssClass="form-control EmpDepTextBoxClass" placeholder="To: " runat="server" hidden></asp:TextBox>
                                        <asp:TextBox ID="EmpNameTextBox" ReadOnly="True" CssClass="form-control EmpNameTextBoxClass" placeholder="To: " runat="server"></asp:TextBox>
                                        <asp:TextBox ID="EmpIDTextBox" ReadOnly="True" CssClass="form-control EmpIDTextBoxClass" placeholder="ID " runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Mail ID: </label>
                                    <asp:TextBox ID="mailidtext" ReadOnly="True" CssClass="form-control mailidtextClass" placeholder="Mail ID"  runat="server"></asp:TextBox>
                                    <%--<input id="mailidtext" type="text" class="form-control mailidtextClass" placeholder="Mail ID" />--%>
                                </div>
                                <div class="form-group">
                                    <label>Subject</label>
                                     <asp:TextBox ID="subjecttext" CssClass="form-control" placeholder="Mail Subject"  runat="server"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Remark BY Team</label>
                                    <asp:TextBox ID="ComposeTextBox" CssClass="form-control"  runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                    <%--<textarea name="composetextarea" runat="server" class="form-control" placeholder="Remark BY Team" rows="10"></textarea>--%>
                                </div>
                                 
                            </form>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="CommitteePopButton" runat="server" CssClass="form-control btn btn-primary" Text="Send" OnClick="CommitteePopButton_Click" style="display:none"   />
                    <input type="button" class="form-control submitBTN" style="width:100%;border-color:dodgerblue" value="Submit" onclick="sendEmail()" /> 
                        
                         <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <script>
        function sendEmail()
        {
            $("#preloader").show();
            
             var someSession = '<%= Session["UserName"].ToString() %>';
             var empid= '<%= Session["UserId"].ToString() %>';
             var Designation= '<%= Session["Designation"].ToString() %>';
           
            var formData = new FormData();
             var toaddress=document.getElementById('<% = mailidtext.ClientID %>').value;
            var toName=document.getElementById('<% = EmpNameTextBox.ClientID %>').value;
            var toId=document.getElementById('<% = EmpIDTextBox.ClientID %>').value;
            var formData = new FormData();
            formData.append("toAddress", toaddress.split(" ").join(""));
            formData.append("toName",  toName.split(" ").join(""));
            formData.append("toId", toId.split(" ").join(""));
           
            formData.append("subject", "Committee Evaluvation -"+document.getElementById('<% = subjecttext.ClientID %>').value);
            formData.append("ideaID", document.getElementById('<% = IdeaIDTextBox.ClientID %>').value);
            formData.append("content",document.getElementById('<% = ComposeTextBox.ClientID %>').value);
            formData.append("sender", someSession + ",<br/>" + empid + ",<br/>" + Designation);


            formData.append("resci", "Team");
            formData.append("type", "New");
            formData.append("subTitle", "Committee Evaluation");
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
                           document.getElementById("<%=CommitteePopButton.ClientID %>").click();
                        console.log('button clicked');
                        
                      
                    },
                    error: function (err) {
                              document.getElementById("<%=CommitteePopButton.ClientID %>").click();
                        console.log('button clicked'); console.log('err',err);
                       
                    }
                 });
            dataView();
        }
    </script>
    <%--
           END OF MODALS COMMITEE EVALUATION
    --%>
    <script>
        function dataView()
        {
            var info = document.getElementById('<%= ToTextBox.ClientID %>').value; 
            document.getElementById('<%= EmpDepTextBox.ClientID %>').value = info;
            //alert(info);
        }
    </script>





    <div class="container">
        <div class="modal fade" id="myModalComiteeEvaluationReply" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Commitee Evaluvation</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">


                            <form class="email-compose-body" >
                                <h4 class="c-grey-900 mB-20">Assigned To</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IdeaIDRepTextBox" CssClass="form-control IdeaIDRepTextBoxClass" style="background:none" Enabled="false" EnableTheming="false" placeholder="Idea ID" runat="server"></asp:TextBox>

                                    </div>
                                    

                                </div>
                               
                                <div class="form-group">
                                    <label>TO: </label>
                                    <asp:TextBox ID="ToRepTextBox" CssClass="form-control ToRepTextBoxClass" placeholder="Employee Name" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="1"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>EmpID: </label>
                                    <asp:TextBox ID="EmpIdRepTextBox" CssClass="form-control EmpIdRepTextBoxClass" placeholder="Employee ID" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="1"></asp:TextBox>
                                </div>
                                  <div class="form-group">
                                    <label>MailID: </label>
                                    <asp:TextBox ID="MailIDRepTextBox" CssClass="form-control MailIDRepTextBoxClass" placeholder="Mail ID" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="1"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>Subject: </label>
                                    <asp:TextBox ID="SubjectRepTextBox" CssClass="form-control SubjectRepTextBoxClass" placeholder="Subject" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="1"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>Discription: </label>
                                    <asp:TextBox ID="ConRepTextBox" CssClass="form-control ConRepTextBoxClass" placeholder="Mail Content" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                                
                            </form>

                        </div>
                    </div>

                    <div class="modal-footer">
 
                    </div>
                </div>
            </div>
        </div>
    </div>
 
      <div class="container">
        <div class="modal fade" id="myModalImpIdeaForm" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Improvement Idea Form</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">


                          <!--  <form class="email-compose-body" action="AdminDashboard.aspx/ManagerInsert">-->
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IMPIdeaIdTextBox" CssClass="form-control IMPIdeaIdClass" placeholder="Idea ID" onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" runat="server"></asp:TextBox>

                                    </div>

                                </div>

                                <div class="form-group">
                                    <label>Manager Name</label>
                                        <asp:DropDownList ID="IMPDepaDLists" CssClass="js-example form-control" Width="100%" runat="server" AutoPostBack="false" AppendDataBoundItems="True">
                                            <asp:ListItem>--Select--</asp:ListItem>

                                        </asp:DropDownList>
                                        
                                </div>


                                <div class="form-group">
                                    <div class="peers">
                                        <label>To: </label>
                                        <asp:TextBox ID="TOIMPTextBox" CssClass="form-control IMPToTextBoxClass" placeholder="To: " runat="server"></asp:TextBox>
                                        
                                        <asp:TextBox ID="EmpIDIMPTextBox" CssClass="form-control IMPEmpIDTextBoxClass" placeholder="ID " runat="server" ></asp:TextBox>
                                        <asp:TextBox ID="DupEmpIDIMPTextBox" CssClass="form-control" placeholder="ID " runat="server" ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Mail ID: </label>
                                    <asp:TextBox ID="MailIdIMPTextBox" CssClass="form-control IMPmailidtextClass" placeholder="Mail ID"  runat="server"></asp:TextBox>
                                    <asp:TextBox ID="DupMailIdIMPTextBox" CssClass="form-control" placeholder="To: " runat="server" ClientIDMode="Static"  ></asp:TextBox>
                                    <%--<input id="mailidtext" type="text" class="form-control mailidtextClass" placeholder="Mail ID" />--%>
                                </div>
                                <div class="form-group">
                                    <label>Subject</label>
                                     <asp:TextBox ID="SubjectIMPTextBox" CssClass="form-control" placeholder="Mail Subject"  runat="server"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Remark BY Team</label>
                                    <asp:TextBox ID="ContectIMPTextBox" CssClass="form-control" runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                    <%--<textarea name="composetextarea" runat="server" class="form-control" placeholder="Remark BY Team" rows="10"></textarea>--%>
                                </div>


                                <%--<div id="compose-area">
                            <div class="text-right mrg-top-30">
                                <button class="btn btn-danger">Send</button>
                            </div>
                     </div>--%>
                           <!-- </form>-->

                        </div>
                    </div>

                    <div class="modal-footer">
                        <input type="button" value="testing post"  class="btn btn-primary" onclick="sendEmail()"/>
                        <asp:Button ID="ImproButton" runat="server" CssClass="form-control btn btn-primary" Text="Send" OnClick="ImproButton_Click" OnClientClick="sendEmail()" />
                        <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
 
 
    <script>
        function ImpdataView()
        {
            var info = document.getElementById('<%= MailIdIMPTextBox.ClientID %>').value; 
            document.getElementById('<%= DupMailIdIMPTextBox.ClientID %>').value = info;
            var info2 = document.getElementById('<%= EmpIDIMPTextBox.ClientID %>').value; 
            document.getElementById('<%= DupEmpIDIMPTextBox.ClientID %>').value = info2;
            alert("info"+info);
            alert("infoID"+info2);
        }
    </script>
    <%--
           END OF MODALS COMMITEE EVALUATION
    --%>
    
    <script src="../UI/Style/jquery.min.js"></script>
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/json2/20130526/json2.min.js"></script>



    





       <script type="text/javascript">

        $(document).ready(function () {
            var finalArray = [];
            function filterData(keyDataFrom) {
                var condition = finalArray.some(function (item) {
                    return item.key == keyDataFrom
                });
                return condition;
            }
            $("[id*=DepRepCheckBoxList]").change(function () {
                //code mani 

                var keyData = $(this).val();
                var checked = [];
                var unchecked = [];

               
                checked = []; unchecked = [];
                if ($("[id*=DepRepCheckBoxList]").is(":checked")) {
                     
                    console.log('checked data from testing side')
                }
                $("[id*=DepRepCheckBoxList]:not(:checked)").each(function () {
                    unchecked.push($(this).val());
                    console.log('item unchecked list', $(this).val())
                    //var con = finalArray.includes($(this).val());
                    console.log(filterData($(this).val()), 'Using Function')
                    console.table(finalArray)
                    if (filterData($(this).val()) == true) {
                        console.table(finalArray)
                        for (var i = 0; i < finalArray.length; i++) {
                            if (finalArray[i].key == $(this).val())
                            {
                                finalArray.splice(i, 1);  // array.splice(index,remove items count) was the parameter

                            }
 
                        }
                        console.log('pop value', $(this).val())
                        //finalArray.pop($(this).val());
                        console.table(finalArray)
                     }                    

                });
                $("[id*=DepRepCheckBoxList]:checked").each(function () {
                    console.log('item checked', $(this).val())
                    checked.push($(this).val());
                    //var con = finalArray.includes($(this).val());
                    //if (con == false) {
                    //    finalArray.push($(this).val());
                    //}

                    // dummyMulti.push({ key: $(this).val(), Name: $(this).val(), email: "", empid: "" });
                });
              
                // code end from mani

                    var textbox = "" + $(this).val().toString();
                    console.log('first:' + textbox);
                    var tt = "";
                    var x = "";
                    if (($(this).val() == "Others")) {
                        $('#go').show();
                        console.log("Others" + $(this).is(":checked"));
                        console.log("Others" + $(this).val());

                        if ($(this).is(":checked") == 0)
                        {
                            console.log("Not Checked " + $('.other').checked);
                            $('#go').hide();

                        }
                        //textbox = "" + $(".DDJQuery").val().toString();
                        return false;


                    }
                    else if (($(this).val() != "Others") && ($(this).is(":checked") != "false")) {
                        //console.log("else" + $(this).val());
                        //console.log($(this).not(":checked"));
                        //textbox = "" + $(this).val().toString();
                        // alert('first:' + textbox);
                        if ($(this).is(":checked") == 1) {
                            //console.log("else" + $(this).is(":checked"));

                            textbox = "" + $(this).val().toString();


                            <%--document.getElementById('<%= ToTextBox.ClientID %>').value+= textbox+',';
                        document.getElementById('<%= ToTextBox.ClientID %>').value = "";--%>
                            console.log("Textbox" + $(this).val().toString());
                        }
                    }
                    if ($(this).is(":checked") == true)
                    {
                    if (textbox != "") {
                        var textbox2 = $(".ToTextBoxClass").val().toString();

                        
                        if (textbox2 == "") {
                            var tt = textbox2 + " " + textbox;
                        }
                        else {
                            console.log("Textbox" + textbox);
                            tt = textbox2 + ',' + " " + textbox;
                               
                        }
                        $(".ToTextBoxClass").val(tt);
                        console.log("TT:" + textbox2 + 'textbox:' + textbox);
                        var k = textbox.toString();
                        var f = "";
                        var feid = "";
                        var e = "";
                        $.ajax({
                            url: 'AdminDashboard.aspx/Checking',
                            method: 'post',
                            contentType: "application/json; charset=utf-8",
                            async: true,
                            dataFilter: function (data) { return data; },
                            data: '{emp:' + JSON.stringify(k) + '}',
                            dataType: "json",
                            
                            success: function (data) {
                                

                                console.log("test1HEID" + data.d.HEmployeeID);
                                console.log("test1HEN" + data.d.HEmployeeName);
                                console.log("testHMID" + data.d.Email);
                                if (filterData(keyData) == false)
                                {
                                    finalArray.push({ key: keyData, Name: data.d.HEmployeeName, email: data.d.Email, empid: data.d.HEmployeeID });
                                }
                                console.log(finalArray)
                                console.table(finalArray)

                                <%--$("#<%=mailidtext.ClientID%>").text(data.d);--%>
                                var fx = "";
                                var fz = "";
                                var fn = "";
                                f = data.d.Email;
                                feid = data.d.HEmployeeID;
                                e = data.d.HEmployeeName;
                                var er = data.d.ErrorLabel;
                                if ((er != 1)&&(feid != null)&&(feid != "")) {
                                    
                                        var EID = $(".EmpIDTextBoxClass").val().toString();
                                        var EName = $(".EmpNameTextBoxClass").val().toString();
                                        var z = $(".mailidtextClass").val().toString();
                                        if (EName == "") {
                                            fn = EName + " " + e;


                                        }
                                        else {
                                            console.log("Textbox" + textbox);
                                            fn = EName + ',' + " " + e;


                                        }
                                        if (z == "") {
                                            fx = z + " " + f;


                                        }
                                        else {
                                            console.log("Textbox" + textbox);
                                            fx = z + ',' + " " + f;


                                        }
                                        if (EID == "") {

                                            fz = EID + " " + feid;

                                        }
                                        else {
                                            console.log("Textbox" + feid);

                                            fz = EID + ',' + " " + feid;

                                        }
                                        
                                        var NameArray = [];
                                        for (var i = 0; i < finalArray.length; i++) {
                                            NameArray.push(finalArray[i].Name);
                                        }
                                        var EmailArray = [];
                                        for (var i = 0; i < finalArray.length; i++) {
                                            EmailArray.push(finalArray[i].email);
                                        }
                                        var IDArray = [];
                                        for (var i = 0; i < finalArray.length; i++) {
                                            IDArray.push(finalArray[i].empid);
                                        }
                                        var userArray = [];
                                        for (var i = 0; i < finalArray.length; i++) {
                                            userArray.push(finalArray[i].key);
                                        }

                                        $(".mailidtextClass").val('');
                                        $(".EmpIDTextBoxClass").val('');
                                        $(".EmpNameTextBoxClass").val('');
                                        $(".ToTextBoxClass").val('');

                                        $(".mailidtextClass").val(EmailArray);
                                        $(".EmpIDTextBoxClass").val(IDArray);
                                        $(".EmpNameTextBoxClass").val(NameArray);
                                        $(".ToTextBoxClass").val(userArray);
                                }
                                else {
                                    $("#ErrorLabel").show();
                                    document.getElementById('<%= ErrorLabel.ClientID %>').value = "Record Not Found";
                                    $('.ErrorLabelClass').text("Record Not Found");

                                }

                                //console.log("test" + data.d.Designation);
                                <%-- document.getElementById('<%= EmployeeNameTextBox.ClientID %>').value = data.d.empname;
                                    document.getElementById('<%= DepartmentTextBox.ClientID %>').value = data.d.Department;
                                    document.getElementById('<%= DesignationTextBox.ClientID %>').value = data.d.Designation;
                        --%>

                            },
                            error: function (err) {
                                alert('Error : ' + data); console.log(err);
                                //tableInputKeyPress(e);
                            }
                        });
                    
                
                        return false;





                
                    }
                    }
                    else
                    {
                        var NameArray = [];
                        for (var i = 0; i < finalArray.length; i++) {
                            NameArray.push(finalArray[i].Name);
                        }
                        var EmailArray = [];
                        for (var i = 0; i < finalArray.length; i++) {
                            EmailArray.push(finalArray[i].email);
                        }
                        var IDArray = [];
                        for (var i = 0; i < finalArray.length; i++) {
                            IDArray.push(finalArray[i].empid);
                        }
                        var userArray = [];
                        for (var i = 0; i < finalArray.length; i++) {
                            userArray.push(finalArray[i].key);
                        }

                        $(".mailidtextClass").val('');
                        $(".EmpIDTextBoxClass").val('');
                        $(".EmpNameTextBoxClass").val('');
                        $(".ToTextBoxClass").val('');

                        $(".mailidtextClass").val(EmailArray);
                        $(".EmpIDTextBoxClass").val(IDArray);
                        $(".EmpNameTextBoxClass").val(NameArray);
                        $(".ToTextBoxClass").val(userArray);
                    }
                });
            


        });


        </script>
    <script>
        $(document).ready(function () {
           
            $("[id*=DepartmentPopUPDDList]").change(function () {
                console.log("Checking :");
                var txt = "" + $(this).children("option:selected").text().toString();
                console.log("Checking :"+  txt);
                if (txt != "--Select--") {
                    if (txt != "") {
                        var textbox2 = $(".ToTextBoxClass").val().toString();
                        if (textbox2 == "") {
                            var tt = textbox2 + " " + txt;
                        }
                        else {
                            console.log("Textbox" + txt);
                            var tt = textbox2 + ',' + " " + txt;

                        }
                        $(".ToTextBoxClass").val(tt);
                        console.log("TT:" + textbox2 + 'textbox:' + txt);
                         var k = txt.toString();
                         var f = "";
                         var feid = "";
                         var e = "";
                            $.ajax({
                                url: 'AdminDashboard.aspx/Checking',
                                method: 'post',
                                contentType: "application/json; charset=utf-8",
                                async: true,
                                dataFilter: function (data) { return data; },
                                data: '{emp:' + JSON.stringify(k) + '}',
                                dataType: "json",

                                success: function (data) {
                                    console.log("test1HEID" + data.d.HEmployeeID);
                                    console.log("test1HEN" + data.d.HEmployeeName);
                                    console.log("testHMID" + data.d.Email);
                            <%--$("#<%=mailidtext.ClientID%>").text(data.d);--%>
                                    var fx = "";
                                    var fz = "";
                                    var fn = "";
                                    var er = data.d.ErrorLabel;
                                    f = data.d.Email;
                                    feid = data.d.HEmployeeID;
                                    e = data.d.HEmployeeName;
                                    if ((er != 1)&&(feid != null)&&(feid != "")) {
                                        var EID = $(".EmpIDTextBoxClass").val().toString();
                                        var EName = $(".EmpNameTextBoxClass").val().toString();
                                        var z = $(".mailidtextClass").val().toString();

                                        if (EName == "") {
                                            fn = e + " " + EName ;


                                        }
                                        else {
                                            //console.log("Textbox" + textbox);
                                            fn = e + ',' + " " + EName;


                                        }
                                        if (f == "") {
                                            fx = f + " " + z;
                                            fz = feid + "" + EID;
                                        }
                                        else {
                                            //console.log("Textbox" + txt);
                                            fx = f + ',' + " " + z;
                                            fz = feid + ',' + " " + EID;


                                        }


                                        $(".mailidtextClass").val(fx);
                                        $(".EmpIDTextBoxClass").val(fz);
                                        $(".EmpNameTextBoxClass").val(fn);

                                        //console.log("test" + data.d.Designation);
                                        <%-- document.getElementById('<%= EmployeeNameTextBox.ClientID %>').value = data.d.empname;
                                    
                        --%>
                                    }
                                    else {
                                        $("#ErrorLabel").show();
                                        document.getElementById('<%= ErrorLabel.ClientID %>').value = "Record Not Found";
                                        $('.ErrorLabelClass').text("Record Not Found");

                                    }

                        },
                        error: function (err) {
                            alert('Error : ' + data); console.log(err);
                            //tableInputKeyPress(e);
                        }
                            });
                        return false;
                    }

                }
               
            });


        });

        </script>
    
    <script>


         $(document).ready(function () {

             $("[id*=IMPDepaDLists]").change(function () {
                 console.log("mailtest1");
                 var txts = "" + $(this).children("option:selected").text().toString();
                 alert(txts);
                console.log("Checking :" + txts);
                if (txts != "--Select--") {
                    if (txts != "") {
                        var textboxs2 = $(".IMPToTextBoxClass").val().toString();
                        if (textboxs2 == "") {
                            var tts = textboxs2 + " " + txts;
                        }
                        else {
                            console.log("Textbox" + txts);
                            var tts = textboxs2 + ',' + " " + txts;

                        }
                        $(".IMPToTextBoxClass").val(tts);
                        console.log("TT:" + textboxs2 + 'textbox:' + txts);

                            var ks = txts.toString();
                            var fs = "";
                            var feids = "";
                            $.ajax({
                                url: 'AdminDashboard.aspx/Checking',
                                method: 'post',
                                contentType: "application/json; charset=utf-8",
                                async: true,
                                dataFilter: function (data) { return data; },
                                data: '{emp:' + JSON.stringify(ks) + '}',
                                dataType: "json",

                                success: function (data) {
                                    console.log("test1HEID" + data.d.HEmployeeID);
                                    console.log("test1HEN" + data.d.HEmployeeName);
                                    console.log("testHMID" + data.d.Email);
                            <%--$("#<%=mailidtext.ClientID%>").text(data.d);--%>
                                    var fxs = "";
                                    var fzs = "";
                                    fs = data.d.Email;
                                    feids = data.d.HEmployeeID;
                                    var EIDs = $(".IMPEmpIDTextBoxClass").val().toString();
                                    var zs = $(".IMPmailidtextClass").val().toString();
                                    if (zs == "") {
                                        fxs = zs + " " + fs;
                                        fzs = feids + "" + EIDs;
                                    }
                                    else {
                                        console.log("Textbox" + txts);
                                        fxs = zs + ',' + " " + fs;
                                        fzs = feids + ',' + "" + EIDs;

                                    }
                                    $(".IMPmailidtextClass").val(fxs);
                                    $(".IMPEmpIDTextBoxClass").val(fzs);

                            

                        },
                        error: function (err) {
                            alert('Error : ' + data); console.log(err);
                            //tableInputKeyPress(e);
                        }
                            });
                        return false;
                   
                    }
                    
               }
            });
         });

    </script>
    
    <script>
        $(document).ready(function () {

            $(".js-example-tags").select2({
                tags: true
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            //alert("asd");
            $("#go").hide();
            $("#ErrorLabel").hide();
            $(".js-example-Newtag").select2({
                createTag: function (params) {
                    var term = $.trim(params.term);

                    if (term === '') {
                        return null;
                    }

                    return {
                        id: term,
                        text: term,
                        newTag: true // add additional parameters
                    }
                }
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $(".js-example-tokenizer").select2({
                tags: true,
                tokenSeparators: [',', ' ']
            });
        });

    </script>
 
    <script>
        $('.ideadiv').click(function () {

            //var text = $(this).text();
            var idvalue = $(this).closest('.ideadiv').find('.IdeaIdclasstxt').val();
            // alert(text);
            console.log(idvalue);
            // do something with the text
        });


    </script>


    <%-- Email Content --%>
    <script>
        $('.ideadiv').click(function () {
            console.log("hi");
            var IdeaID = $(this).closest('.ideadiv').find('.IdeaIdclasstxt').val();
            console.log(IdeaID);
            var key = 0;
            var t = "";
            console.log("checking");
            if (key == 0) //Enter
            {
                console.log("IDea ID: " + IdeaID);
                $.ajax({
                    url: 'AdminDashboard.aspx/MailContent',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{idea:' + IdeaID + '}',
                    dataType: "json",

                    success: function (data) {
                        console.log("test" + data.d.fromTag);
                        //var myObj = JSON.parse(data.d.fromTag);
                        //document.getElementById("fromTag").innerHTML = myObj;
                        //console.log("Input checking " + $('#formtaglable').html("From :"));
                        //console.log("Input checking " + $('#formtaglable').text("From :"));
                        //console.log("Input checking " + document.getElementById("fromTag").innerHTML = "From : ");
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
                     //  document.getElementById("ContentPlaceHolder1_UpLoad1Tag").setAttribute("src", data.d.upload1);
                     //   document.getElementById("ContentPlaceHolder1_UpLoad2Tag").setAttribute("src", data.d.upload2);
                     //   document.getElementById("ContentPlaceHolder1_UpLoad3Tag").setAttribute("src", data.d.upload3);
                        imageAttachmenthandler(data.d.upload1, 'ContentPlaceHolder1_UpLoad1Tag', 'attachement1', 'imgAt1', 'fileAt1');
                        imageAttachmenthandler(data.d.upload2, 'ContentPlaceHolder1_UpLoad2Tag', 'attachement2', 'imgAt2', 'fileAt2');
                        //imageAttachmenthandler(data.d.upload3, 'ContentPlaceHolder1_UpLoad3Tag', 'attachement3', 'imgAt3', 'fileAt3');
                        $(".ideaidclass").val(data.d.IdeaIdTag);
                        $(".IdeaIDClass").val(data.d.IdeaIdTag);
                        $(".IMPIdeaIdClass").val(data.d.IdeaIdTag);
                        
                        $(".IdeaIDRepTextBoxClass").val(data.d.RIdeaID);
                        $(".ToRepTextBoxClass").val(data.d.REmpName);
                        
                        $(".EmpIdRepTextBoxClass").val(data.d.REmpID);
                        $(".MailIDRepTextBoxClass").val(data.d.RMail);
                        $(".SubjectRepTextBoxClass").val(data.d.RSub);
                        $(".ConRepTextBoxClass").val(data.d.RCon);
                        // document.getElementById("").innerHTML = data.d.empname;
                        $("#viewtbl").show();


                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                });
                
                return false; //return true to submit, false to do nothing
            }
        });
    </script>
     <%-- End Email Content --%>

</asp:Content>
