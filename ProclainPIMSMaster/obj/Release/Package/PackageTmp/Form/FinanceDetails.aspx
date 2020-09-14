<%@ Page Title="" Language="C#" MasterPageFile="~/FinanacePage.Master" AutoEventWireup="true" CodeBehind="FinanceDetails.aspx.cs" Inherits="ProclainPIMSMaster.Form.FinanceDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/style.css" rel="stylesheet" />




    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />



    <!--===============================================================================================-->


    <!--===============================================================================================-->
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
    <%--'flrtiBp'--%>
    

    <script type="text/javascript">
            function MoveNext(next_ctrl,_key) {
              
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

        
#ContentPlaceHolder1_Img1 {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}
#ContentPlaceHolder1_Img2 {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}
#ContentPlaceHolder1_Img3 {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#ContentPlaceHolder1_Img1:hover {opacity: 0.7;}

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
#ContentPlaceHolder1_Img2:hover {opacity: 0.7;}

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
#ContentPlaceHolder1_Img3:hover {opacity: 0.7;}

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
     var image1, image2, image3;
     function imageSrc(attach1,attach2,attach3)
     {
         console.log(attach1, attach2, attach3)
         imageAttachmenthandler(attach1, 'ContentPlaceHolder1_Img1', 'attachement1', 'imgAt1', 'attachement1');
         imageAttachmenthandler(attach2, 'ContentPlaceHolder1_Img2', 'attachement2', 'imgAt2', 'attachement2')
         imageAttachmenthandler(attach3, 'ContentPlaceHolder1_Img3', 'attachement3', 'imgAt3', 'attachement3')
         image1 = attach1;
         image2 = attach2;
         image3 = attach3;
     }
     function openModel(id,name)
     {
         console.log(image1, image2, image3)
         var modal = document.getElementById("myModal");
         var modalImg = document.getElementById("img01");
         var img1 = document.getElementById(id);
         modal.style.display = "block";
         modalImg.src = img1.src;

         // Get the <span> element that closes the modal
         var span = document.getElementsByClassName("close")[0];

         // When the user clicks on <span> (x), close the modal
         span.onclick = function () {
             modal.style.display = "none";
         }

     }
     var modal = document.getElementById("myModal");

     // Get the image and insert it inside the modal - use its "alt" text as a caption
     var img = document.getElementById("ContentPlaceHolder1_Img1");
     var img1 = document.getElementById("Img2");
     var img2 = document.getElementById("Img3");  //ContentPlaceHolder1_UpLoad3Tag
     var modalImg = document.getElementById("img01");
     var captionText = document.getElementById("caption");
     console.log('image clicked')
     console.log(img1, img2, img)
     img.onclick = function () {
         
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
     span.onclick = function () {
         modal.style.display = "none";
     }
    </script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container-fluid bgc-grey-200">
    <div class="card" style=" margin-left:30%; width:45%; background-color:bgc-grey-200;">
            <div class="card-header">
                <h4 align="center" style="color:gray">Your Suggestion Details..</h4>
            </div>
            <div class="card-body" style="background-color:slategray;">
                <asp:Label runat="server" ID="vpid" Visible="false" />
                <div class="row" style="padding-left:8Px;">
                    <div class="col-3">
                        <asp:Label runat="server" Text="IdeaId:" style="font-weight:bold;" ></asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:Label runat="server" ID="ideaid" ></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row" style="padding-left:8Px;">
                    <div class="col-3">
                        <asp:Label runat="server" Text="Date:" style="font-weight:bold;"></asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:Label runat="server" ID="date" ></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row" style="padding-left:8Px;">
                    <div class="col-3">
                        <asp:Label runat="server" Text="Department:" style="font-weight:bold;"></asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:Label runat="server" ID="dept" ></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row" style="padding-left:8Px;">
                    <div class="col-3">
                        <asp:Label runat="server" Text="Designation:" style="font-weight:bold;"></asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:Label runat="server" ID="desig" ></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row" style="padding-left:8Px;">
                    <div class="col-3">
                        <asp:Label runat="server" Text="Subject:" style="font-weight:bold;"></asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:Label runat="server" ID="sub" ></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row" style="padding-left:8Px;">
                    <div class="col-3">
                        <asp:Label runat="server" Text="Benefits:" style="font-weight:bold;"></asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:Label runat="server" ID="ben" ></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row" style="padding-left:8Px;">
                    <div class="col-3">
                        <asp:Label runat="server" Text="Category:" style="font-weight:bold;"></asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:Label runat="server" ID="cat" ></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row" style="padding-left:8Px;">
                    <div class="col-3">
                        <asp:Label runat="server" Text="Before:" style="font-weight:bold;"></asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:Label runat="server" ID="bfr" ></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row" style="padding-left:8Px;">
                    <div class="col-3">
                        <asp:Label runat="server" Text="After:" style="font-weight:bold;"></asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:Label runat="server" ID="aft" ></asp:Label>
                    </div>
                </div>
                <br />
               <%-- <div class="row" style="padding-left:8Px;">
                    <div class="col-4">
                        
                    </div>
                    <div class="col-4">
                          
                    </div>
                    <div class="col-4">
                    </div>
                </div>--%>

                 <div class="row">
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl1Tag" class="fnt"></mark>
                                                                                </div>
                                                                                <div class="row-md-6">
                                                                                <div id="imgAt1">
                                                                                    
                                                                                  <asp:Label runat="server" Text="FileUpload1:" style="font-weight:bold;"></asp:Label>
                                                                                 <img src=""  id="UpLoad1Tag" class="imageAttachmenthandler" style="Height:100px; Width:100px;display:none"   runat="server" alt="NoAttachment"/>
                                                                               <img src="ContentPlaceHolder1_UpLoad1Tag"  onclick="openModel('ContentPlaceHolder1_Img1','')" id="Img1" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                               
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
                                                                                         
                                                                                           <asp:Label runat="server" Text="FileUpload2:" style="font-weight:bold;"></asp:Label>
                                                                                          <img src=""  id="UpLoad2Tag" class="imageAttachmenthandler" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                        
                                                                                           <img src="ContentPlaceHolder1_UpLoad2Tag"  onclick="openModel('ContentPlaceHolder1_Img2','')" id="Img2" style="Height:100px; Width:100px;display:none;"  runat="server" alt="NoAttachment"/>
                                                                               
                                                                                <%--<img src="ContentPlaceHolder1_UpLoad2Tag"  id="Img3" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                    --%>
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
                                                                                   <asp:Label runat="server" Text="FileUpload3:" style="font-weight:bold;"></asp:Label>
                                                                           <img src=""  id="UpLoad3Tag" class="imageAttachmenthandler" style="Height:100px; Width:100px;display:none;"  runat="server" alt="NoAttachment"/>
                                                                        
                                                                                           <img src="ContentPlaceHolder1_UpLoad3Tag"  id="Img3" onclick="openModel('ContentPlaceHolder1_Img3','')" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                               
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


                 <br />           
                <div class="row" style="padding-left:8Px;">
                    <div class="col-3">
                        <asp:Label runat="server" Text="Status:" style="font-weight:bold;"></asp:Label>
                    </div>
                    <div class="col-9">
                        <asp:Label runat="server" ID="stat" ></asp:Label>
                    </div>
                </div>
                <br />
            </div>
            <div class="card-footer" style="padding-left:43%;">
                <a runat="server" href="javascript:history.go(-1)" class="btn btn-info" style="font-size:large; font-family:Calibri">Back</a>
          <!--     <asp:Button ID="back" runat="server" Text="Back" style="border-radius:20px;font-size:large;background-color:gray; font-family:'Book Antiqua'" ForeColor="SlateBlue"  /> -->
            </div>
        </div>
    
        </div>
 
    <script src="../UI/Style/jquery.min.js"></script>
     <script>

</script>
    <script>
       
                                                        function imageAttachmenthandler(link,imageid,attachmentid,imagediv,attachmentdiv)
                                                        {
        
                                                            console.log(link, imageid, attachmentid, imagediv, attachmentdiv);
                                                            var x = document.getElementById(imagediv);
                                                            var y = document.getElementById(attachmentdiv);
 
                                                            if (link != null && link != "../UI/Image/No File") {
                                                                var data = link.split('.').pop();
                                                                if (data == 'jpg') {
                                                                    console.log(link, imageid);

                                                                    document.getElementById(imageid).src = link;
                                                                    x.style.display = "block";

                                                                    y.style.display = "none";
                                                                }
                                                                else if (data == 'png') {
                                                                    console.log(link, imageid);

                                                                    document.getElementById(imageid).src = link;
                                                                    x.style.display = "block";

                                                                    y.style.display = "none";
                                                                }
                                                                else if (data == 'jpeg') {
                                                                    console.log(link, imageid);

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
                                                                console.log(link, imageid);

                                                                document.getElementById(imageid).src = "../UI/assets/static/images/unpin.png";
                                                                x.style.display = "block";

                                                                y.style.display = "none";
                                                            }
                                                        }
                                                    </script>
    </asp:Content>
