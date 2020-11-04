<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DBMSent.aspx.cs" Inherits="ProclainPIMSMaster.Form.DBMSent" MasterPageFile="~/AdminMaster.Master"  %>

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


        <%--        function checkBoxListOnClick(elementRef)
            {
               
                var textBoxRef = document.getElementById('<%= OthersDepRepTextBox.ClientID %>').value;
                textBoxRef.disabled = true;
                document.getElementById("demo").innerHTML = textBoxRef;
                var checkBoxArray = elementRef.getElementsByTagName('input');
                alert("asd");
                
                for (var i=0; i<checkBoxArray.length; i++)
                {
                    alert("for1");
                    var checkBoxRef = checkBoxArray[i];
                    if (checkBoxRef.checked == true)
                    {
                        alert("if1");
                        var labelArray = checkBoxRef.parentNode.getElementsByTagName('label');
                        if ((labelArray.length > 0) && (labelArray[0].innerHTML == 'Others'))
                        {
                            alert("if2");
                            textBoxRef.disabled = false;
                            break;
                        }
                    }
                 }

                 return true;




        
        
    }--%>
   
    </script>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
      
     <link href="../UI/Style/all.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
   <script src="../UI/Style/jquery.min.js"></script>
    <link href="../UI/Style/select2.min.css" rel="stylesheet" />
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
         <div class="row">
        <div class="col-lg-4 form-control" style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
                    <div class="email-side-nav remain-height ov-h">
                    <!--    <div class="layer w-100">
                            <div class="bgc-grey-100 peers ai-c jc-sb p-10 fxw-nw">
                                <div class="peer">
                                    <div class="btn-group" role="group">
                                        <button type="button" class="email-side-toggle d-n@md+ btn bgc-white bdrs-2 mR-3 cur-p">
                                            <i class="ti-menu"></i>
                                        </button>
                                        <button type="button" class="btn bgc-white bdrs-2 mR-3 cur-p">
                                            <i class="ti-folder"></i>
                                        </button>
                                        <button type="button" class="btn bgc-white bdrs-2 mR-3 cur-p">
                                            <i class="ti-tag"></i>
                                        </button>
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupDrop1" type="button" class="btn cur-p bgc-white no-after dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ti-more-alt"></i>
                                            </button>
                                            <ul class="dropdown-menu fsz-sm" aria-labelledby="btnGroupDrop1">
                                                <li>
                                                    <a href="" class="d-b td-n pY-5 pX-10 bgcH-grey-100 c-grey-700">
                                                        <i class="ti-trash mR-10"></i>
                                                        <span>Delete</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="" class="d-b td-n pY-5 pX-10 bgcH-grey-100 c-grey-700">
                                                        <i class="ti-alert mR-10"></i>
                                                        <span>Mark as Spam</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="" class="d-b td-n pY-5 pX-10 bgcH-grey-100 c-grey-700">
                                                        <i class="ti-star mR-10"></i>
                                                        <span>Satar</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="peer">
                                    <div class="btn-group" role="group">
                                        <button type="button" class="fsz-xs btn bgc-white bdrs-2 mR-3 cur-p">
                                            <i class="ti-angle-left"></i>
                                        </button>
                                        <button type="button" class="fsz-xs btn bgc-white bdrs-2 mR-3 cur-p">
                                            <i class="ti-angle-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div> 
                        </div>

                        <div class="layer w-100">
                            <div class="bdT bdB">
                                <input type="text" class="form-control m-0 bdw-0 pY-15 pX-20" placeholder="Search...">
                            </div>
                        </div> -->
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px; cursor:pointer;">
                                <%-- <div class="">--%>
                                <div class="container mt-3">
  
  
  <!-- Nav tabs -->
                                  <ul class="nav nav-tabs">
                                    <li class="nav-item active">
                                      <a class="nav-link " id="acom" data-toggle="tab" href="#com">Committee &nbsp;<span id="count"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
                                      <li class="nav-item">
                                      <a class="nav-link" id="ahod" data-toggle="tab" href="#hod">Manager &nbsp;<span id="counthod"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
                                    <li class="nav-item">
                                      <a class="nav-link" id="aimp" data-toggle="tab" href="#imp">For Implementation &nbsp;<span id="countimp"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
                                       <li class="nav-item ">
                                      <a class="nav-link " id="ahos" data-toggle="tab" href="#hos">HOD &nbsp;<span id="counthos"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
                                      <li class="nav-item">
                                      <a class="nav-link" id="aben" data-toggle="tab" href="#ben">CODIR &nbsp;<span id="countben"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
                                    <li class="nav-item" >
                                      <a class="nav-link" id="afin" data-toggle="tab" href="#fin">Finance &nbsp;<span id="countfin"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
    
                                  </ul>
                                        <div class="tab-content">
                            
                                            <div id="com"  class="container tab-pane fade in active">
                                    <asp:Repeater ID="MailRepeaterCom" runat="server">
                                        <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                        <ItemTemplate>
                                            <%--<div class="pear bdB">--%>
                                            <%--<div class="peer fxw-nw p-20 bdB cur-p" onclick="linc_click()">--%>
                                                <%--onclick="linc_click()"--%>
                                                <div class="ideadiv" style="padding-left: 10px;">
                                                  <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                             <%--<asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>--%>             
                                                <div class="row">

                                                    <div class="col-sm-12">
                                                        <%--<input id="lblImageName" class="IdeaIdclass" name="lblImageName" text='<%#Bind("IdeaId")%>' type="text" visible="false"/>--%>
                                                        <%--<asp:TextBox ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' Visible="false"></asp:TextBox>--%>
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
                                    </div>
                                            <div id="hod"  class="container tab-pane fade">
                                             <asp:Repeater ID="MailRepeaterHOD" runat="server">
                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                <ItemTemplate>
                                    <%--<div class="pear bdB">--%>
                                    <%--<div class="peer fxw-nw p-20 bdB cur-p" onclick="linc_click()">--%>
                                        <%--onclick="linc_click()"--%>
                                        <div class="ideadiv" style="padding-left: 10px;">
                                            <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                        <%--<asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>--%>             
                                        <div class="row">

                                            <div class="col-sm-12">
                                                <%--<input id="lblImageName" class="IdeaIdclass" name="lblImageName" text='<%#Bind("IdeaId")%>' type="text" visible="false"/>--%>
                                                <%--<asp:TextBox ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' Visible="false"></asp:TextBox>--%>
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
                            </div>
                                            <div id="imp"  class="container tab-pane fade">
                                <asp:Repeater ID="MailRepeaterimp" runat="server">
                                    <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                    <ItemTemplate>
                                        <%--<div class="pear bdB">--%>
                                        <%--<div class="peer fxw-nw p-20 bdB cur-p" onclick="linc_click()">--%>
                                            <%--onclick="linc_click()"--%>
                                            <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <%--<asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>--%>             
                                            <div class="row">

                                                <div class="col-sm-12">
                                                    <%--<input id="lblImageName" class="IdeaIdclass" name="lblImageName" text='<%#Bind("IdeaId")%>' type="text" visible="false"/>--%>
                                                    <%--<asp:TextBox ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' Visible="false"></asp:TextBox>--%>
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
                                </div>
                                            <div id="hos"  class="container tab-pane fade">
                                <asp:Repeater ID="MailRepeaterHOS" runat="server">
                                    <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                    <ItemTemplate>
                                        <%--<div class="pear bdB">--%>
                                        <%--<div class="peer fxw-nw p-20 bdB cur-p" onclick="linc_click()">--%>
                                            <%--onclick="linc_click()"--%>
                                            <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <%--<asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>--%>             
                                            <div class="row">

                                                <div class="col-sm-12">
                                                    <%--<input id="lblImageName" class="IdeaIdclass" name="lblImageName" text='<%#Bind("IdeaId")%>' type="text" visible="false"/>--%>
                                                    <%--<asp:TextBox ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' Visible="false"></asp:TextBox>--%>
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
                                </div>
                                            <div id="ben"  class="container tab-pane fade">
                                <asp:Repeater ID="MailRepeaterben" runat="server">
                                    <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                    <ItemTemplate>
                                        <%--<div class="pear bdB">--%>
                                        <%--<div class="peer fxw-nw p-20 bdB cur-p" onclick="linc_click()">--%>
                                            <%--onclick="linc_click()"--%>
                                            <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <%--<asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>--%>             
                                            <div class="row">

                                                <div class="col-sm-12">
                                                    <%--<input id="lblImageName" class="IdeaIdclass" name="lblImageName" text='<%#Bind("IdeaId")%>' type="text" visible="false"/>--%>
                                                    <%--<asp:TextBox ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' Visible="false"></asp:TextBox>--%>
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
                                </div>
                                            <div id="fin"  class="container tab-pane fade">
                                            <asp:Repeater ID="MailRepeaterfin" runat="server">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                                <ItemTemplate>
                                                    <%--<div class="pear bdB">--%>
                                                    <%--<div class="peer fxw-nw p-20 bdB cur-p" onclick="linc_click()">--%>
                                                        <%--onclick="linc_click()"--%>
                                                        <div class="ideadiv" style="padding-left: 10px;">
                                                          <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                                     <%--<asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>--%>             
                                                        <div class="row">

                                                            <div class="col-sm-12">
                                                                <%--<input id="lblImageName" class="IdeaIdclass" name="lblImageName" text='<%#Bind("IdeaId")%>' type="text" visible="false"/>--%>
                                                                <%--<asp:TextBox ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' Visible="false"></asp:TextBox>--%>
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
                                            </div>
                                        
                                        
                                        
                                        
                                        
                                        
                                        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div></div>
             <div class=" col-lg-7 reps" style="padding-top:15px;" >
         <div class="rightside no-gutters" style="margin-right: 50px;">
                    <div class="email-wrapper row remain-height ov-h" style="    background-color: #fff0!important;">
             <div class="email-list h-100 layers" style="width: 100%; align-items: initial">
                            <div class="h-100 scrollable pos-r">
                   <!--             <div class="bgc-grey-100 peers ai-c jc-sb p-20 fxw-nw d-n@md+">
                                    <div class="peer">
                                        <div class="btn-group" role="group">
                                            <button type="button" class="back-to-mailbox btn bgc-white bdrs-2 mR-3 cur-p">
                                                <i class="ti-angle-left"></i>
                                            </button>
                                            <button type="button" class="btn bgc-white bdrs-2 mR-3 cur-p">
                                                <i class="ti-folder"></i>
                                            </button>
                                            <button type="button" class="btn bgc-white bdrs-2 mR-3 cur-p">
                                                <i class="ti-tag"></i>
                                            </button>
                                            <div class="btn-group" role="group">
                                                <button id="btnGroupDrop1" type="button" class="btn cur-p bgc-white no-after dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="ti-more-alt"></i>
                                                </button>
                                                <ul class="dropdown-menu fsz-sm" aria-labelledby="btnGroupDrop1">
                                                    <li>
                                                        <a href="" class="d-b td-n pY-5 pX-10 bgcH-grey-100 c-grey-700">
                                                            <i class="ti-trash mR-10"></i>
                                                            <span>Delete</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="" class="d-b td-n pY-5 pX-10 bgcH-grey-100 c-grey-700">
                                                            <i class="ti-alert mR-10"></i>
                                                            <span>Mark as Spam</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="" class="d-b td-n pY-5 pX-10 bgcH-grey-100 c-grey-700">
                                                            <i class="ti-star mR-10"></i>
                                                            <span>Satar</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="peer">
                                        <div class="btn-group" role="group">
                                            <button type="button" class="fsz-xs btn bgc-white bdrs-2 mR-3 cur-p">
                                                <i class="ti-angle-left"></i>
                                            </button>
                                            <button type="button" class="fsz-xs btn bgc-white bdrs-2 mR-3 cur-p">
                                                <i class="ti-angle-right"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div> -->
                                <div class="email-content-wrapper">
                                    <div class="peers ai-c jc-sb pY-30" style="padding-left: 10px; padding-right: 20px; padding-bottom: 10px!important">

                                        <div class="peer peer-greed">
                                                <%-- <div class="peer" align="right">
                                                <asp:ImageButton ID="PFuthurImageButton" runat="server" ImageUrl="~/UI/assets/static/images/Icons/3-Copy.jpg" Height="25px" Width="25px" align="right" /><br />
                                           -- <a href="" class="btn btn-danger bdrs-50p p-15 lh-0">
                                                        <i class="fa fa-reply"></i>
                                                    </a>--
                                            </div>--%>
                                            <div class="peer mR-20">
                                            </div>
                                            <%--<div class="peer">--%>


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
                                                        <%--<lable id="formtaglable"></lable>--%>
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
                                                                        
                                                                        <mark id="StatTag" class="fnt">Status</mark><br /><mark id="StatusTag"></mark>
                                                                       <br />
                                                                        <br />
                                                                          <div class="row">
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl1Tag" class="fnt"></mark>
                                                                                </div>
                                                                                <div class="row-md-6">
                                                                                <img src="ContentPlaceHolder1_UpLoad1Tag"  id="UpLoad1Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                    

                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl2Tag" class="fnt"></mark>
                                                                                </div>
                                                                                <div class="row-md-6">
                                                                                <img src="ContentPlaceHolder1_UpLoad2Tag"  id="UpLoad2Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
                                                                                    
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="row-md-6">
                                                                            <mark id="upl3Tag" class="fnt"></mark>
                                                                            </div>
                                                                                <div class="row-md-6">
                                                                                <img src="ContentPlaceHolder1_UpLoad3Tag"  id="UpLoad3Tag" style="Height:100px; Width:100px;"  runat="server" alt="NoAttachment"/>
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


                                                </ContentTemplate>

                                                
                                            </asp:UpdatePanel>
                                             <script type="text/javascript">
                                                        $(document).ready(function () {
                                                            // $(".ideadiv").click(function () {
                                                                 $("#viewtbl").hide();
                                                             //});
                                                        });

                                                       
                                                 </script>


                                            <%--<small>Nov, 02 2017</small>
                                                        <h5 class="c-grey-900 mB-5">John Doe</h5>
                                                        <span>
                                                                To: <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="2b4e464a42476b4c464a424705484446">[email &#160;protected]</a>
                                                            </span>--%>
                                            <%--</div>--%>
                                        </div>

                                    </div>
                                    <%--<div class="bdT" style="padding-left: 10px!important; padding-right: 20px!important; padding-top: 10px!important; padding-bottom: 10px!important">


                                        <asp:UpdatePanel ID="UpdatePanel2"
                                            UpdateMode="Conditional"
                                            runat="server">
                                            <ContentTemplate>


                                                <div class="pear">
                                                    <%--<mark runat="server" id="IdIdTag"></mark>
                                                    <p runat="server" id="IdeaIdTag"></p>
                                                    <br />
                                                    <mark runat="server" id="BefTag"></mark>
                                                    <p runat="server" id="BeforeTag"></p>
                                                    <br />
                                                    <mark runat="server" id="AftTag"></mark>
                                                    <p runat="server" id="AfterTag"></p>
                                                    <br />
                                                    <mark runat="server" id="BenTag"></mark>
                                                    <p runat="server" id="BenefitsTag" style="padding-left: 20px"></p>

                                                </div>




                                            </ContentTemplate>


                                        </asp:UpdatePanel>
                                    </div>--%>
                                </div>
                            </div>

                        </div>
                        
                        </div>
             </div>

                  <%--<div class="sidebar" style="right: 0px;position: absolute;background-color: #fff0;">
            <div class="sidebar-inner">
                
                <!-- =======================
                      ### $Sidebar Menu ###
                     ======================= -->
                <ul class="sidebar-menu scrollable pos-r" style="text-align: right; color: #f8f8f8 !important">
                    <li class="nav-item mT-30 active" style="color: #f8f8f8 !important">
                        <a href="javascript:void(0)" class="nav-link c-grey-800 cH-blue-500 active color: #f8f8f8 !important" data-toggle="modal" data-target="#myModalComiteeEvaluation">
                            <span class="title">Comitee Evaluation</span>
                            <span class="icon-holder iconmenu">
                                    <i class="c-blue-500 ti-view-list-alt"></i>
                                </span>
                            
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="javascript:void(0)" class="nav-link c-grey-800 cH-blue-500 active" data-toggle="modal" data-target="#myModalImpIdeaForm">
                            <span class="title">Improvement Idea Form </span>
                            <span class="icon-holder iconmenu">
                                    <i class="c-green-500 ti-view-list-alt"></i>
                                </span>
                            
                        </a>
                    </li>
                   
                    
                </ul>
                <!-- ===========================
                      ### $Sidebar Menu End ###
                     =========================== -->
            </div>
        </div>--%>


                 </div>
 

                       
                    
        </div>
     
 <%-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.1.0/bootstrap.min.js"></script> --%>

 

                                            <script type="text/javascript">
                                                $(window).load(function () {
                                                    const queryString = window.location.search;
                                                    console.log(queryString);
                                                    const urlParams = new URLSearchParams(queryString);
                                                    const data = urlParams.get('value');
                                                    //  alert(data);
                                                    document.getElementById('acom').click();
                                                    console.log(data)
                                                            if (data == "com") {
                                                              //  $("#com").show();
                                                                console.log(data, 'com')
                                                                document.getElementById('acom').click();
                                                               // $(this). addClass('active');
                                                            }
                                                            else if (data == "hod") {
                                                                // $("#hod").show(); console.log(data,'hod')
                                                                document.getElementById('ahod').click();
                                                            }
                                                            else if (data == "imp") {
                                                                //  $("#imp").show(); console.log(data,'imp')
                                                                document.getElementById('aimp').click();
                                                        }
                                                            else if (data == "hos") {
                                                                //$("#hos").show(); console.log(data,'hos')
                                                                document.getElementById('ahos').click();
                                                        }
                                                            else if (data == "ben") {
                                                                //   $("#ben").show(); console.log(data,'ben')
                                                                document.getElementById('aben').click();
                                                        }
                                                            else if (data == "fin") {
                                                                //  $("#fin").show();
                                                                console.log(data, 'fin')
                                                                //  $(this.fin). addClass('active');
                                                                //$('.nav-link a[href="#' + data + '"]').tab('show');
                                                              //  $("#afin a").click();
                                                                document.getElementById('afin').click();
                                                            }
                                                            else {
                                                                document.getElementById('acom').click();
                                                            }
                                                           
                                                        });

                                               
                                                 </script>





    <script type="text/javascript">
        $(document).ready(function () {
           
            $("[id*=DepRepCheckBoxList]").change(function () {
                
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


                                        $(".mailidtextClass").val(fx);
                                        $(".EmpIDTextBoxClass").val(fz);
                                        $(".EmpNameTextBoxClass").val(fn);
                                    
                                }
                                else {
                                    $("#ErrorLabel").show();
                                   // document.getElementById('< %= ErrorLabel.ClientID %>').value = "Record Not Found";
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
                                   //     document.getElementById('< %= ErrorLabel.ClientID %>').value = "Record Not Found";
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
   <%--<script>
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
                    url: 'DBMSent.aspx/MailContent',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{idea:' + IdeaID + '}',
                    dataType: "json",

                    success: function (data) {
                        console.log("test" + data.d.fromTag); 
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
                        document.getElementById("upl3Tag").innerHTML = "FileUpload3 : ";
                        document.getElementById("StatTag").innerHTML = "Status : ";
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

                        document.getElementById("StatusTag").innerHTML = data.d.status;
                        
                        document.getElementById("ContentPlaceHolder1_UpLoad1Tag").setAttribute("src", data.d.upload1);
                        document.getElementById("ContentPlaceHolder1_UpLoad2Tag").setAttribute("src", data.d.upload2);
                        document.getElementById("ContentPlaceHolder1_UpLoad3Tag").setAttribute("src", data.d.upload3);

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

</asp:Content>
