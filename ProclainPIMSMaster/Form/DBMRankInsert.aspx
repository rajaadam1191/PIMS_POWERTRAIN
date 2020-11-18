<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DBMRankInsert.aspx.cs" Inherits="ProclainPIMSMaster.Form.DBMRankInsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <%--<link href="../UI/Style/jqueryui.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>
    <script src="../UI/Script/jquery-ui.js"></script>--%>
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/Style/select2.min.css" rel="stylesheet" />
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/Script/jquery.filtertable.min.js"></script>


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

        .reps:hover {
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
        }

        .btn {
            background: linear-gradient(68deg, #660033, #333300) !important;
            width: 100%;
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
            background-color: #f0f3f500 !important;
        }

        #tblEmployees {
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
            width: 100%;
        }

            #tblEmployees td {
                color: #232121;
            }

            #tblEmployees th {
                color: #000 !important;
                background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
                /*background-color: lightgrey;*/
            }

                #tblEmployees th tr {
                    background-color: none !important;
                    background: linear-gradient(-68deg, #b4b1b5, #e0d9d9) !important;
                }

        .grossamtempbtn {
            color: #fff;
            background-color: #2196f3;
            border-color: #2196f3;
        }

        .grossimpamtbtn {
            color: #fff;
            background-color: #2196f3;
            border-color: #2196f3;
        }

        .form-control {
            background-color: white !important;
        }
        .modal{
        width:100%!important;
      

        }
    </style>

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3" style="width: 100%; height: 100%;">

        <ul class="nav nav-tabs">
            <li class="nav-item" id="User" style="width: 50%; font-size: 100%; padding-left: 2%;">
                <a class="nav-link active" data-toggle="tab" href="#new" style="font-weight: bold; text-align: center;">CEO Message </a>

            </li>
            <li class="nav-item" id="Implement" style="width: 50%; font-size: 100%; padding-right: 2%;">
                <a class="nav-link" data-toggle="tab" href="#assigned" style="font-weight: bold; text-align: center;">Image Upload </a>

            </li>
        </ul>

        <div class="tab-content">
            <div id="new" class="container tab-pane active">
                <div class="row">
                    <div class=" col-md-12 ">
                        <div class="bd bgc-white p-20 cardintab reps">
                            <div class="layers">
                                <div class="table100 ver6 m-b-110 table-responsive">
                                    <div class=" reps  " style="border: none!important;">
                                        <div class="row">
                                            <div class="col-md-3"></div>
                                            <div class="col-md-6">
                                                <div class="row">
                                                    <div class="col-md-6">Enter Your Message:</div>
                                                    <div class="col-md-6" style="width: 100%;">
                                                        <asp:TextBox runat="server" ID="Ceomsg" CssClass="form-control" TextMode="MultiLine"></asp:TextBox><br />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <asp:Button ID="ceomsgupload" Text="CeoMsgUpload" runat="server" CssClass="btn btn-primary" OnClick="ceomsgupload_Click" />
                                                    </div>
                                                    <div class="col-md-4">
                                                    <asp:Button ID="MDmsgupload" Text="MDMsgUpload" runat="server" CssClass="btn btn-primary" OnClick="MDmsgupload_Click"  />
                                                    </div>
                                                    <div class="col-md-4">
                                                    <asp:Button ID="Sloganupload" Text="SloganUpload" runat="server" CssClass="btn btn-primary" OnClick="Sloganupload_Click"  />
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-md-3">
                                                <div class="text-right" style="padding-right:2%;">
                    
                                                    <asp:LinkButton runat="server" ID="Remove" data-toggle="modal" data-target="#RemoveFunc" >Remove</asp:LinkButton>
                    
                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                </div>


                            </div>


                        </div>

                        <!-- ====================
                                    #Todo End
                                 ==================== -->

                    </div>


                </div>


            </div>




            <div id="assigned" class="container tab-pane ">
                <div class="row">
                    <div class=" col-md-12 ">
                        <div class="bd bgc-white p-20 cardintab reps">
                            <div class="layers">
                                <div class="table100 ver6 m-b-110 table-responsive">
                                    <div class=" reps   " style="border: none!important;">
                                        <div class="row">
                                            <div class="col-md-3"></div>
                                            <div class="col-md-6">
                                                <div class="row" style="padding-top: 5px;">
                                                    <div class="col-md-6">
                                                        <%--<asp:TextBox runat="server" ID="EmpId" CssClass="form-control"></asp:TextBox><br />--%>
                                                        
                                                        Employee:<asp:DropDownList runat="server" ID="EmployeeId" CssClass="js-example form-control" Width="100%" AutoPostBack="false" AppendDataBoundItems="True">
                                                            <asp:ListItem>--Select--</asp:ListItem>
                                                        </asp:DropDownList>


                                                    </div>
                                                    <div class="col-md-6" style="width: 100%;">
                                                        <asp:FileUpload ID="ImageFileUpload1" runat="server" CssClass="form-control" /><br />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <asp:Button ID="ImgUpload" Text="Upload" runat="server" CssClass="btn btn-danger" OnClick="ImgUpload_Click" />
                                                    </div>
                                                </div>



                                            </div>
                                            <div class="col-md-3"></div>
                                        </div>

                                    </div>



                                </div>




                            </div>

                        </div>

                    </div>

                </div>


            </div>
        </div>
    </div>
    <div class="modal fade" id="RemoveFunc" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Remove Message</h4>
                        <button type="button" id="span" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                       <ul class="nav nav-tabs">
                            <li class="nav-item" id="CEO" style="width: 50%; font-size: 100%; padding-left: 2%;">
                                <a class="nav-link active" data-toggle="tab" href="#ceomsgrem" style="font-weight: bold; text-align: center;">CEO Message </a>

                            </li>
                            <li class="nav-item" id="MD" style="width: 50%; font-size: 100%; padding-right: 2%;">
                                <a class="nav-link" data-toggle="tab" href="#mdmsgrem" style="font-weight: bold; text-align: center;">MD Message</a>

                            </li>
                            <li class="nav-item" id="Slogan" style="width: 50%; font-size: 100%; padding-right: 2%;">
                                <a class="nav-link" data-toggle="tab" href="#sloganrem" style="font-weight: bold; text-align: center;">Slogan</a>

                            </li>
                        </ul>

                    <div class="tab-content">
                        <div id="ceomsgrem" class="container tab-pane active">
                        <div class="row">
                        <div class="col-md-6">
                        <asp:label runat="server" id="ceodroplbl" hidden></asp:label>
                        <asp:DropDownList runat="server" Class="form-control" ID="ceodrop" onchange="ceoonchange()">

                        </asp:DropDownList>
                        </div>
                        <div class="col-md-6">
                        <asp:Button runat="server" ID="ceobtn" Class="btn btn-primary" text="Remove" OnClick="ceobtn_Click" />
                        
                        </div>
                        </div>
                        
                        </div>
                        <div id="mdmsgrem" class="container tab-pane ">
                        <div class="row">
                        <div class="col-md-6">
                        <asp:label runat="server" id="mddroplbl" hidden></asp:label>
                        <asp:DropDownList runat="server" Class="form-control" ID="mddrop" onchange="mdonchange()">

                        </asp:DropDownList>
                        
                        </div>
                        <div class="col-md-6">

                        <asp:Button runat="server" ID="mdbtn" Class="btn btn-primary" text="Remove" OnClick="mdbtn_Click"/>
                        
                        </div>
                        </div>
                        </div>
                        <div id="sloganrem" class="container tab-pane ">
                        <div class="row">
                        <div class="col-md-6">
                        <asp:label runat="server" id="slogandroplbl" hidden></asp:label>
                        <asp:DropDownList runat="server" Class="form-control" ID="slogandrop" onchange="sloganonchange()">

                        </asp:DropDownList>
                        
                        </div>
                        <div class="col-md-6">
                        <asp:Button runat="server" ID="sloganbtn" Class="btn btn-primary" text="Remove" OnClick="sloganbtn_Click"/>
                        
                        </div>
                        </div>
                        </div>
                    </div>
                        </div>
                    <div class="modal-footer">

                    </div>
                </div>
            </div>
        </div>
        <script>
            function ceoonchange() {

                var value = document.getElementById("<%=ceodrop.ClientID%>");  
               var getvalue = value.options[value.selectedIndex].value;  
               var gettext = value.options[value.selectedIndex].text; 
                
               document.getElementById("<%=ceodroplbl.ClientID%>").value = getvalue;
               console.log(getvalue, gettext);
            }
            function mdonchange() {

                var value = document.getElementById("<%=mddrop.ClientID%>");  
               var getvalue = value.options[value.selectedIndex].value;  
               var gettext = value.options[value.selectedIndex].text; 
                
               document.getElementById("<%=mddroplbl.ClientID%>").value = getvalue;
               console.log(getvalue, gettext);

               
            }
            function sloganonchange() {

                var value = document.getElementById("<%=slogandrop.ClientID%>");  
               var getvalue = value.options[value.selectedIndex].value;  
               var gettext = value.options[value.selectedIndex].text; 
                
               var slolbl = document.getElementById("<%=slogandroplbl.ClientID%>") = getvalue;
               
               console.log(getvalue, gettext);

                
            }
        </script>


       
</asp:Content>
