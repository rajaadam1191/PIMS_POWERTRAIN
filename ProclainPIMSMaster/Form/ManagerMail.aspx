<%@ Page Title="Manager Inbox" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ManagerMail.aspx.cs" Inherits="ProclainPIMSMaster.Form.ManagerMail" %>

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
    <link href="../UI/Style/select2.min.css" rel="stylesheet" />
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
        <div class="loadingio-spinner-spin-70jldgjfy3">
            <div class="ldio-l05zvogs5db">
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
                <div>
                    <div></div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4 form-control" style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
                <div class="email-side-nav remain-height ov-h">



                    <div class="h-100 scrollable pos-r">
                        <div class="layer w-100 fxg-1 " style="padding-left: 15px; padding-right: 10px">

                            <div class="peer fxw-nw bdB cur-p">


                                <div class="container mt-3">


                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs">
                                        <li class="nav-item" id="hidenew">
                                            <a class="nav-link active" data-toggle="tab" href="#new">New  &nbsp;<span id="count" class="badge badge-pill badge-primary" runat="server">0</span></a>

                                        </li>
                                        <li class="nav-item" id="hideassign">
                                            <a class="nav-link" data-toggle="tab" href="#assigned">Assigned &nbsp;<span id="countass" class="badge badge-pill badge-primary" runat="server">0</span></a>

                                        </li>
                                        <li class="nav-item" id="hidecomplete">
                                            <a class="nav-link" data-toggle="tab" href="#complete">Completed &nbsp;<span id="countcom" class="badge badge-pill badge-primary" runat="server">0</span></a>
                                        </li>
                                        <li class="nav-item" id="hidehold">
                                            <a class="nav-link" data-toggle="tab" href="#hold">Hold &nbsp;<span id="counthol" class="badge badge-pill badge-primary" runat="server">0</span></a>
                                        </li>
                                        <li class="nav-item" id="hidereject">
                                            <a class="nav-link" data-toggle="tab" href="#reject">Reject &nbsp;<span id="countrej" class="badge badge-pill badge-primary" runat="server">0</span></a>
                                        </li>


                                    </ul>
                                    <div class="tab-content">

                                        <div id="new" class="container tab-pane active">
                                            <asp:Repeater ID="MailRepeater" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                                <ItemTemplate>
                                                    <%--<div class="pear bdB">--%>

                                                    <%--onclick="linc_click()"--%>

                                                    <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%>
                                                    <div class="ideadiv" style="padding-left: 10px;">
                                                        <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                        <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>
                                                        <div class="row">

                                                            <div class="col-sm-10">
                                                                <asp:TextBox ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("IdeaId")%>' hidden></asp:TextBox>


                                                            </div>


                                                        </div>

                                                        <div class="row selectors" style="margin-right: 1px;" id="selectors" runat="server">
                                                            <div class="col-sm-9  "  style="border: none; color: <%# Eval("Remark2").ToString()=="x"?"#609;":"#0f9aee;" %>">
                                                                <%# Eval("EmployeeName") %>
                                                                <br />
                                                                <%# Eval("Subject") %>
                                                                <br />
                                                                <%# Eval("IDeaID") %>
                                                                <br />

                                                            </div>
                                                            <div class="col-sm-3 " style="border-top: none; border-left: none; border-right: none; border-bottom: none; align-content: center;">



                                                                <br />

                                                            </div>
                                                        </div>
                                                        <hr />

                                                    </div>

                                                </ItemTemplate>

                                            </asp:Repeater>
                                        </div>

                                        <div id="assigned" class="container tab-pane fade">
                                            <asp:Repeater ID="MailRepeaterassigned" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                                <ItemTemplate>
                                                    <%--<div class="pear bdB">--%>

                                                    <%--onclick="linc_click()"--%>

                                                    <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%>
                                                    <div class="ideadiv" style="padding-left: 10px;">
                                                        <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                        <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>
                                                        <div class="row">

                                                            <div class="col-sm-10">
                                                                <asp:TextBox ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("IdeaId")%>' hidden></asp:TextBox>


                                                            </div>


                                                        </div>

                                                        <div class="row" style="margin-right: 1px;">
                                                            <div class="col-sm-9 form-control" style="border: none!important;">
                                                                <%# Eval("EmployeeName") %>
                                                                <br />
                                                                <%# Eval("Subject") %>
                                                                <br />
                                                                <%# Eval("IDeaID") %>
                                                                <br />

                                                            </div>
                                                            <div class="col-sm-3 form-control" style="border-top: none; border-left: none; border-right: none; border-bottom: none; align-content: center;">



                                                                <br />

                                                            </div>
                                                        </div>
                                                        <hr />

                                                    </div>

                                                </ItemTemplate>

                                            </asp:Repeater>
                                        </div>


                                        <div id="complete" class="container tab-pane fade">
                                            <asp:Repeater ID="MailRepeatercomplete" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                                <ItemTemplate>
                                                    <%--<div class="pear bdB">--%>

                                                    <%--onclick="linc_click()"--%>

                                                    <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%>
                                                    <div class="ideadiv" style="padding-left: 10px;">
                                                        <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                        <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>
                                                        <div class="row">

                                                            <div class="col-sm-10">
                                                                <asp:TextBox ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("IdeaId")%>' hidden></asp:TextBox>


                                                            </div>


                                                        </div>

                                                        <div class="row" style="margin-right: 1px;">
                                                            <div class="col-sm-9 form-control" style="border: none!important;">
                                                                <%# Eval("EmployeeName") %>
                                                                <br />
                                                                <%# Eval("Subject") %>
                                                                <br />
                                                                <%# Eval("IDeaID") %>
                                                                <br />

                                                            </div>
                                                            <div class="col-sm-3 form-control" style="border-top: none; border-left: none; border-right: none; border-bottom: none; align-content: center;">



                                                                <br />

                                                            </div>
                                                        </div>
                                                        <hr />

                                                    </div>

                                                </ItemTemplate>

                                            </asp:Repeater>
                                        </div>

                                        <div id="hold" class="container tab-pane fade">
                                            <asp:Repeater ID="MailRepeaterhold" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                                <ItemTemplate>
                                                    <%--<div class="pear bdB">--%>

                                                    <%--onclick="linc_click()"--%>

                                                    <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%>
                                                    <div class="ideadiv" style="padding-left: 10px;">
                                                        <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                        <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>
                                                        <div class="row">

                                                            <div class="col-sm-10">
                                                                <asp:TextBox ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("IdeaId")%>' hidden></asp:TextBox>


                                                            </div>


                                                        </div>

                                                        <div class="row" style="margin-right: 1px;">
                                                            <div class="col-sm-9 form-control" style="border: none!important;">
                                                                <%# Eval("EmployeeName") %>
                                                                <br />
                                                                <%# Eval("Subject") %>
                                                                <br />
                                                                <%# Eval("IDeaID") %>
                                                                <br />

                                                            </div>
                                                            <div class="col-sm-3 form-control" style="border-top: none; border-left: none; border-right: none; border-bottom: none; align-content: center;">



                                                                <br />

                                                            </div>
                                                        </div>
                                                        <hr />

                                                    </div>

                                                </ItemTemplate>

                                            </asp:Repeater>
                                        </div>


                                        <div id="reject" class="container tab-pane fade">
                                            <asp:Repeater ID="MailRepeaterreject" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                                <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                                <ItemTemplate>
                                                    <%--<div class="pear bdB">--%>

                                                    <%--onclick="linc_click()"--%>

                                                    <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%>
                                                    <div class="ideadiv" style="padding-left: 10px;">
                                                        <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                        <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>
                                                        <div class="row">

                                                            <div class="col-sm-10">
                                                                <asp:TextBox ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("IdeaId")%>' hidden></asp:TextBox>


                                                            </div>


                                                        </div>

                                                        <div class="row" style="margin-right: 1px;">
                                                            <div class="col-sm-9 form-control" style="border: none!important;">
                                                                <%# Eval("EmployeeName") %>
                                                                <br />
                                                                <%# Eval("Subject") %>
                                                                <br />
                                                                <%# Eval("IDeaID") %>
                                                                <br />

                                                            </div>
                                                            <div class="col-sm-3 form-control" style="border-top: none; border-left: none; border-right: none; border-bottom: none; align-content: center;">



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
                </div>
            </div>
            <div class="bTd">
            </div>

        </div>

        <div class=" col-lg-8 reps">
            <div class="rightside no-gutters" style="margin-right: 50px;">
                <div class="email-wrapper row remain-height ov-h" style="background-color: #fff0!important;">
                    <div class="email-list h-100 layers" style="width: 100%; align-items: initial">
                        <div class="h-100 scrollable pos-r">
                            <div class="bgc-grey-100 peers ai-c jc-sb p-20 fxw-nw d-n@md+">
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
                                            <button id="Button1" type="button" class="btn cur-p bgc-white no-after dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                                                    <div align="center">
                                                        <lable id="SubjectTaglabel"></lable>
                                                        <mark class="form-control textalign " id="SubjectTag" style="text-align: left; text-transform: uppercase; font-size: 30px; border: 0px solid; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px;"></mark>
                                                        <h6 id="TimeTag" style="text-align: right;"></h6>
                                                    </div>
                                                    <%--<lable id="formtaglable"></lable>--%>
                                                    <table id="viewtbl" align="center" class="table table-bordered" style="border-style: ridge; width: 80%;">
                                                        <!--visibility:hidden;-->
                                                        <div class="row" style="padding-left: 15px;">
                                                            <div class="column">
                                                                <mark id="fromTag" class="fnt"></mark>
                                                            </div>
                                                            <div class="column">
                                                                <mark id="EmployeeNameTag"></mark>
                                                            </div>
                                                        </div>

                                                        <div class="row" style="padding-left: 15px;">
                                                            <div class="column">
                                                                <mark id="EIDTag" class="fnt"></mark>
                                                            </div>
                                                            <div class="column">
                                                                <mark id="EmployeeIDTag"></mark>
                                                            </div>
                                                        </div>

                                                        <tr>
                                                            <td>
                                                                <mark id="DepTag" class="fnt"></mark>
                                                            </td>
                                                            <td>
                                                                <mark id="DepartmentTag"></mark>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <mark id="DesTag" class="fnt"></mark>
                                                            </td>
                                                            <td>
                                                                <mark id="DesignationTag"></mark>
                                                            </td>
                                                        </tr>



                                                        <div align="center" style="text-align: right; padding-left: 10px!important; padding-right: 20px!important; padding-top: 10px!important; padding-bottom: 10px!important">
                                                            <mark id="IdIdTag" class="fnt"></mark><mark id="IdeaIdTag" style="padding-left: 10px"></mark>
                                                            <asp:TextBox ID="CEideaidTextBox" CssClass="ideaidclass" runat="server" hidden></asp:TextBox>



                                                            <caption>
                                                                <mark id="CatTag" class="fnt"></mark>
                                                                <br />
                                                                <mark id="CategoryTag"></mark>
                                                                <br />
                                                                <br />
                                                                <mark id="BefTag" class="fnt"></mark>
                                                                <br />
                                                                <mark id="BeforeTag"></mark>
                                                                <br />
                                                                <br />
                                                                <mark id="AftTag" class="fnt"></mark>
                                                                <br />
                                                                <mark id="AfterTag"></mark>
                                                                <br />
                                                                <br />
                                                                <mark id="BenTag" class="fnt"></mark>
                                                                <br />
                                                                <mark id="BenefitsTag"></mark>
                                                                <br />
                                                                <br />
                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <div class="row-md-6">
                                                                            <mark id="upl1Tag" class="fnt"></mark>
                                                                        </div>
                                                                        <div class="row-md-6">
                                                                            <div id="imgAt1" style="display: none">
                                                                                <img src="ContentPlaceHolder1_UpLoad1Tag" id="UpLoad1Tag" style="height: 100px; width: 100px;" runat="server" alt="NoAttachment" />
                                                                            </div>
                                                                            <div id="fileAt1" style="display: none">
                                                                                <a href="#" id="attachement1" target="_blank" class="btn btn-info">Download Attachment 1</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <div class="row-md-6">
                                                                            <mark id="upl2Tag" class="fnt"></mark>
                                                                        </div>
                                                                        <div class="row-md-6">
                                                                            <div id="imgAt2" style="display: none">
                                                                                <img src="ContentPlaceHolder1_UpLoad2Tag" id="UpLoad2Tag" style="height: 100px; width: 100px;" runat="server" alt="NoAttachment" />
                                                                            </div>
                                                                            <div id="fileAt2" style="display: none">
                                                                                <a href="#" id="attachement2" target="_blank" class="btn btn-info">Download Attachment 2</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <div class="row-md-6">
                                                                            <mark id="upl3Tag" class="fnt"></mark>
                                                                        </div>
                                                                        <div class="row-md-6">
                                                                            <div id="imgAt3" style="display: none">
                                                                               <%-- <img src="ContentPlaceHolder1_UpLoad3Tag" id="UpLoad3Tag" style="height: 100px; width: 100px;" runat="server" alt="NoAttachment" />--%>
                                                                            </div>
                                                                            <div id="fileAt3" style="display: none">
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
                                                                <%--<div class="row">
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
                                                                            </div>--%>
                                                            </caption>
                                                    </table>
                                                    <hr />
                                                    <div class="peer">


                                                        <mark id="ReplyTag" class="fnt" style="color: red"></mark>
                                                        <br />
                                                        <br />

                                                        <mark id="StatusTag" class="fnt"></mark>
                                                        <mark id="StatusPTag" class="textalign" style="padding-left: 10px;"></mark>
                                                        <br />
                                                        <br />
                                                        <mark id="ReasonTag" class="fnt"></mark>
                                                        <p id="ReasonPTag" class="textalign" style="padding-left: 10px"></p>
                                                        <mark id="ResponseTag" class="fnt"></mark>
                                                        <p id="ResponsePTag" class="textalign" style="padding-left: 10px"></p>
                                                        <hr />

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
                                                    span.onclick = function () {
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



            <div class="sidebar" style="right: 0px; position: absolute; background-color: #fff0;">
                <div class="sidebar-inner">

                    <style>
                        .dot {
                            height: 55px;
                            width: 55px;
                            background-color: azure;
                            border-radius: 50%;
                            display: inline-block;
                        }
                    </style>
                    <ul class="sidebar-menu scrollable pos-r" style="text-align: right; color: #f8f8f8 !important" id="hideownotherpopup">
                        <li class="nav-item mT-30 active" style="color: #f8f8f8 !important">
                            <a href="javascript:void(0)" class="nav-link c-grey-800  cH-blue-500 active  !important" data-toggle="modal" data-target="#myModalOwnTeamMembers">

                                <span class="icon-holder iconmenu dot" data-toggle="tooltip" data-placement="left" title="Own Team ">
                                    <i class="fa fa-check-square-o" style="color: green"></i>
                                </span>

                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="javascript:void(0)" class="nav-link c-grey-800 cH-blue-500 active" data-toggle="modal" data-target="#myModalComiteeEvaluation">

                                <span class="icon-holder iconmenu dot" data-toggle="tooltip" data-placement="left" title="Other Department">
                                    <i class="fa fa-external-link" style="color: coral"></i>
                                </span>

                            </a>
                        </li>


                    </ul>
                </div>
            </div>



        </div>

    </div>
    <%--</div>--%>


    <%--
           MODALS COMMITEE EVALUATION
    --%>
    <div class="container">
        <div class="modal fade" id="myModalOwnTeamMembers" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Own Team Members</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">

                            <form class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IMPIdeaIdTextBox" CssClass="form-control inp IdeaIDClass" placeholder="Idea ID" onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" runat="server"></asp:TextBox>

                                    </div>

                                </div>
                                <div class="form-group">

                                    <asp:RadioButtonList ID="ImpCheckRadioButtonList" runat="server" Style="margin-left: 20px; margin-top: 20px;" RepeatDirection="Vertical" RepeatColumns="3">
                                        <asp:ListItem class="fes" Value="feas">Feasible</asp:ListItem>
                                        <asp:ListItem Value="Notfeasible">Not Feasible</asp:ListItem>
                                       <%-- <asp:ListItem Value="alreadyimpl">Already Implemented</asp:ListItem>--%>
                                    </asp:RadioButtonList>
                                </div>
                                <div id="feasible">
                                    <div class="form-group">
                                        <div class="peers">
                                            <label>Team Members: </label>

                                            <asp:DropDownList ID="TeamNamePopUPDDList" CssClass="js-example form-control DDJQuery DDJClass" Width="100%" runat="server" AutoPostBack="false" AppendDataBoundItems="True">
                                                <asp:ListItem>--Select--</asp:ListItem>

                                            </asp:DropDownList>


                                        </div>
                                    </div>



                                    <div class="form-group">
                                        <div class="peers">
                                            <label>To: </label>
                                            <asp:TextBox ID="ToTextBox" CssClass="form-control inp ToTextBoxClass" placeholder="To: " runat="server"></asp:TextBox>
                                            <asp:TextBox ID="EmpDepTextBox" CssClass="form-control inp EmpDepTextBoxClass" placeholder="To: " runat="server" hidden></asp:TextBox>
                                            <asp:TextBox ID="EmpIDTextBox" CssClass="form-control inp EmpIDTextBoxClass" placeholder="ID " runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Mail ID: </label>
                                        <asp:TextBox ID="mailidtext" CssClass="form-control inp mailidtextClass" placeholder="Mail ID" runat="server"></asp:TextBox>

                                    </div>


                                    <div class="form-group">
                                        <label>Date</label>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <asp:TextBox ID="FromDateTextBox" CssClass="form-control inp FromDateTextBox" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:TextBox ID="ToDateTextBox" CssClass="form-control inp ToDateTextBox" runat="server"></asp:TextBox>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <asp:TextBox ID="subjecttext" CssClass="form-control inp" placeholder="Mail Subject" runat="server"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label>Remark BY Team</label>
                                        <asp:TextBox ID="ComposeTextBox" CssClass="form-control inp" runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                        <%--<textarea name="composetextarea" runat="server" class="form-control" placeholder="Remark BY Team" rows="10"></textarea>--%>
                                    </div>
                                </div>

                            </form>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="OwnTeamPopButton" runat="server" CssClass="form-control apopbtn btn-primary" Text="Send" OnClick="OwnTeamPopButton_Click" Style="display: none;" />
                        <input type="button" class="form-control apopbtn" style="width: 100%;" value="Send" onclick="sendEmail()" />
                        <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>
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
        function sendEmail() {
            $("#preloader").show();
            var someSession = '<%= Session["UserName"].ToString() %>';
            var empid = '<%= Session["UserId"].ToString() %>';
            var Designation = '<%= Session["Designation"].ToString() %>';

            var formData2 = new FormData();
            var toaddress = document.getElementById('<% = mailidtext.ClientID %>').value;
            var toName = document.getElementById('<% = EmpIDTextBox.ClientID %>').value;
            var toId = document.getElementById('<% = EmpIDTextBox.ClientID %>').value;

            formData2.append("toAddress", toaddress.split(" ").join(""));
            formData2.append("toName", toName.split(" ").join(""));
            formData2.append("toId", toId.split(" ").join(""));
            //formData.append("toAddress",  document.getElementById('< % = mailidtext.ClientID %>').value); 
            // formData.append("toName",document.getElementById('< % = EmpNameTextBox.ClientID %>').value);
            //formData.append("toId", document.getElementById('< % = EmpIDTextBox.ClientID %>').value);
            formData2.append("subject", "Own Team implementation -" + document.getElementById('<% = subjecttext.ClientID %>').value);
            formData2.append("ideaID", document.getElementById('<% = IMPIdeaIdTextBox.ClientID %>').value);
            formData2.append("content", document.getElementById('<% = ComposeTextBox.ClientID %>').value);
            formData2.append("sender", someSession + ",<br/>" + empid + ",<br/>" + Designation);


            formData2.append("resci", "Team");
            formData2.append("type", "New");
            formData2.append("subTitle", "Idea Implementation");

            var object = {};
            formData2.forEach(function (value, key) {
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
                    console.log(data);
                    document.getElementById("<%=OwnTeamPopButton.ClientID %>").click();

                    },
                error: function (err) {
                    console.log(err);
                    document.getElementById("<%=OwnTeamPopButton.ClientID %>").click();
                    }
            });
            }
    </script>
    <%--
           END OF MODALS COMMITEE EVALUATION
    --%>





    <%--
           MODALS COMMITEE EVALUATION
    --%>
    <div class="container">
        <div class="modal fade" id="myModalComiteeEvaluation" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Other Team Members</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">

                            <div class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="TextBox1" CssClass="form-control inp IdeaIDClass" placeholder="Idea ID" onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" runat="server"></asp:TextBox>

                                    </div>

                                </div>

                                <div class="form-group">
                                    <div class="peers">
                                        <label>Team Manager: </label>

                                        <asp:DropDownList ID="IMPDepaDLists" CssClass="js-example form-control DDJQuery DDJClass" Width="100%" runat="server" AutoPostBack="false" AppendDataBoundItems="True">
                                            <asp:ListItem>--Select--</asp:ListItem>

                                        </asp:DropDownList>


                                    </div>
                                </div>



                                <div class="form-group">
                                    <div class="peers">
                                        <label>To: </label>
                                        <asp:TextBox ID="TOIMPTextBox" CssClass="form-control inp IMPToTextBoxClass" placeholder="To: " runat="server"></asp:TextBox>
                                        <asp:TextBox ID="EmpIDIMPTextBox" CssClass="form-control inp IMPEmpIDTextBoxClass" placeholder="To: " runat="server" hidden></asp:TextBox>
                                        <asp:TextBox ID="DupEmpIDIMPTextBox" CssClass="form-control inp EmpIDTextBoxClass" placeholder="ID " runat="server" hidden></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Mail ID: </label>
                                    <asp:TextBox ID="MailIdIMPTextBox" CssClass="form-control inp IMPmailidtextClass" placeholder="Mail ID" runat="server"></asp:TextBox>
                                    <%--<input id="mailidtext" type="text" class="form-control mailidtextClass" placeholder="Mail ID" />--%>
                                </div>
                                <div class="form-group">
                                    <label>Subject</label>
                                    <asp:TextBox ID="SubjectIMPTextBox" CssClass="form-control inp" placeholder="Mail Subject" runat="server"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label>Remark BY Team</label>
                                    <asp:TextBox ID="ContectIMPTextBox" CssClass="form-control inp" runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                    <%--<textarea name="composetextarea" runat="server" class="form-control" placeholder="Remark BY Team" rows="10"></textarea>--%>
                                </div>


                                <%--<div id="compose-area">
                            <div class="text-right mrg-top-30">
                                <button class="btn btn-danger">Send</button>
                            </div>
                     </div>--%>
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="ManagerButton" runat="server" CssClass="form-control apopbtn btn-primary" OnClick="ManagerButton_Click" Text="Send" Style="display: none;" />
                        <input type="button" class="form-control apopbtn" style="width: 100%;" value="Send" onclick="sendEmailtoOtherteam()" />
                        <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>

                        <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function sendEmailtoOtherteam() {
            $("#preloader").show();
            console.log('test1')
            var someSession = '<%= Session["UserName"].ToString() %>';
            var empid = '<%= Session["UserId"].ToString() %>';
            var Designation = '<%= Session["Designation"].ToString() %>';

            var formData = new FormData();
            var toaddress = document.getElementById('<% = MailIdIMPTextBox.ClientID %>').value;
            var toName = document.getElementById('<% = TOIMPTextBox.ClientID %>').value;
            var toId = document.getElementById('<% = EmpIDIMPTextBox.ClientID %>').value;

            formData.append("toAddress", toaddress.split(" ").join(""));
            formData.append("toName", toName.split(" ").join(""));
            formData.append("toId", toId.split(" ").join(""));
            //formData.append("toAddress",  document.getElementById('< % = mailidtext.ClientID %>').value); 
            // formData.append("toName",document.getElementById('< % = EmpNameTextBox.ClientID %>').value);
            //formData.append("toId", document.getElementById('< % = EmpIDTextBox.ClientID %>').value);
            formData.append("subject", "Forwarding Idea -" + document.getElementById('<% = SubjectIMPTextBox.ClientID %>').value);
            formData.append("ideaID", document.getElementById('<% = TextBox1.ClientID %>').value);
            formData.append("content", document.getElementById('<% = ContectIMPTextBox.ClientID %>').value);
            formData.append("sender", someSession + ",<br/>" + empid + ",<br/>" + Designation);


            formData.append("resci", "Team");
            formData.append("type", "New");
            formData.append("subTitle", "Forward Idea Implementation to Other Department");
            console.log('test2')
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
                    console.log(data);
                    document.getElementById("<%=ManagerButton.ClientID %>").click();
                        console.log('button click');
                    },
                error: function (err) {
                    console.log(err);
                    document.getElementById("<%=ManagerButton.ClientID %>").click(); console.log('button click');
                    }
            });
            }
    </script>
    <style>
     
.label-container{
	position:fixed;
	bottom:48px;
	right:105px;
	display:table;
	visibility: hidden;
}

.label-text{
	color:#FFF;
	background:rgba(51,51,51,0.5);
	display:table-cell;
	vertical-align:middle;
	padding:10px;
	border-radius:3px;
}

.label-arrow{
	display:table-cell;
	vertical-align:middle;
	color:#333;
	opacity:0.5;
}

.float2{
	position:fixed;
	width:60px;
	height:60px;
	bottom:110px;
	right:40px;
	background-color:#06C;
	color:#FFF;
	border-radius:50px;
	text-align:center;
	box-shadow: 2px 2px 3px #999;
}
.float{
	position:fixed;
	width:60px;
	height:60px;
	bottom:40px;
	right:40px;
	background-color:#06C;
	color:#FFF;
	border-radius:50px;
	text-align:center;
	box-shadow: 2px 2px 3px #999;
}

.my-float{
	font-size:24px;
	margin-top:18px;
}

a.float + div.label-container {
  visibility: hidden;
  opacity: 0;
  transition: visibility 0s, opacity 0.5s ease;
}

a.float:hover + div.label-container{
  visibility: visible;
  opacity: 1;
}   
    </style>
    <%-- <script src="../UI/Style/jquery.min.js"></script>--%>

    <script>

        $(document).ready(function () {
            $("#myModalComiteeEvaluation").on('hidden.bs.modal', function (e) {
                console.log("modal");
            });
            $("[id*=RepeaterLinkButton]").click(function () {
                var lbIdeaID = $(".lbIdeaIDClass").text();
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("[id*=ImpCheckRadioButtonList]").click(function () {

                var textbox = "" + $(this).val().toString();
                console.log('first:' + textbox);
                if ((textbox == "feas")) {
                    $(this).prop("checked", true);
                    $('#feasible').show();
                    //return false;
                    if ($(this).is(":checked") == 0) {
                        console.log("Not Checked " + $('.fes').checked);
                        $('#feasible').hide();

                    }
                }
                else if ((textbox == "Notfeasible") || (textbox == "alreadyimpl")) {

                    $('#feasible').hide();
                }



            });

        });


    </script>
    <script>
        //$(".selectors").click(function () {
        //    $(".selectors").removeAttr('style')
        //    $(this).css("color", "#609;");
        //});
        $(".selectors").click(function () {
            $(".selectors").not(this).css("color", ""); //Added this statement
            $(this).css("color", "#609;");
        });
        //document.getElementById("selectors").onclick = function () {
        //    document.getElementById("selectors").style.color = 'green';
        //   }
    </script>



    <script>
        $('.ideadiv').click(function () {

            //var text = $(this).text();
            var idvalue = $(this).closest('.ideadiv').find('.IdeaIdclasstxt').val();



            console.log(idvalue);
           
        });


    </script>
    <script>

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
                    url: 'ManagerMail.aspx/MailContent',
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
                        //document.getElementById("upl3Tag").innerHTML = "FileUpload3 : ";
                        document.getElementById("StatusTag").innerHTML = "Team Members Description:";
                        
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
                        //document.getElementById("ContentPlaceHolder1_UpLoad1Tag").setAttribute("src", data.d.upload1);
                        //document.getElementById("ContentPlaceHolder1_UpLoad2Tag").setAttribute("src", data.d.upload2);
                        //document.getElementById("ContentPlaceHolder1_UpLoad3Tag").setAttribute("src", data.d.upload3);

                        imageAttachmenthandler(data.d.upload1, 'ContentPlaceHolder1_UpLoad1Tag', 'attachement1', 'imgAt1', 'fileAt1');
                        imageAttachmenthandler(data.d.upload2, 'ContentPlaceHolder1_UpLoad2Tag', 'attachement2', 'imgAt2', 'fileAt2');
                        //imageAttachmenthandler(data.d.upload3, 'ContentPlaceHolder1_UpLoad3Tag', 'attachement3', 'imgAt3', 'fileAt3');

                        document.getElementById("StatusPTag").innerHTML = data.d.Description;
                        

                        $(".ideaidclass").val(data.d.IdeaIdTag);
                        $(".IdeaIDClass").val(data.d.IdeaIdTag);
                        $(".IMPIdeaIdClass").val(data.d.IdeaIdTag);

                        $("#viewtbl").show();
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
    <script>


         $(document).ready(function () {

             $("[id*=IMPDepaDLists]").change(function () {

                 console.log("mailtest1");
                 var opt = $(this).children("option:selected").val().toString();
                 var res = opt.split(',');
                 var txts = res[0];
                // alert(txts);
                console.log("Checking :" + txts);
                if (txts != "--Select--") {
                    
                    if (txts != "") {
                        var textboxs2 = $(".IMPToTextBoxClass").val().toString();
                        //if (textboxs2 == "") {
                        //    var tts = textboxs2 + " " + txts;
                        //}
                        //else {
                        //    console.log("Textbox" + txts);
                        //    var tts = textboxs2 + ',' + " " + txts;
                            
                        //}
                        $(".IMPToTextBoxClass").val(txts);
                        console.log("TT:" + textboxs2 + 'textbox:' + txts);

                            var ks = txts.toString();
                            var fs = "";
                            var feids = "";
                            console.log(ks);
                            $.ajax({
                                url: 'ManagerMail.aspx/MChecking',
                                method: 'post',
                                contentType: "application/json; charset=utf-8",
                                async: true,
                                dataFilter: function (data) { return data; },
                                data: '{emp:' +  JSON.stringify(ks) + '}',
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

                            

                        },
                                error: function (err) {
                                    console.log(JSON.stringify(err));
                         
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
           
            $("[id*=TeamNamePopUPDDList]").change(function () {
                console.log("Checking :");
                var txt = "" + $(this).children('option:selected').val().toString();
                var name = "" + $(this).children('option:selected').text().toString();
                console.log("Checking :" + txt, name);
                if (txt != "--Select--") {
                    if (txt != "") {
                        var textbox2 = $(".ToTextBoxClass").val().toString();
                        if (textbox2 == "") {
                        // var tt = textbox2 + " " + txt;
                            var tt = textbox2 + " " + name;
                        }
                        else {
                            console.log("Textbox" + txt);
                           // var tt = textbox2 + ',' + " " + txt;  // changed to name
                            var tt = textbox2 + ',' + " " + name;
                        }
                        $(".ToTextBoxClass").val(tt);
                        console.log("TT:" + textbox2 + 'textbox:' + txt);
                         var k = txt.toString();
                         var f = "";
                         var feid = "";
                            $.ajax({
                                url: 'ManagerMail.aspx/Checking',
                                method: 'post',
                                contentType: "application/json; charset=utf-8",
                                async: true,
                                dataFilter: function (data) { return data; },
                                data: '{emp:' + JSON.stringify(k) + '}',
                                dataType: "json",

                                success: function (data) {
                                    console.log("test1HEID" + data.d.EmployeeId);
                                    console.log("test1HEN" + data.d.EmployeeName);
                                    console.log("testHMID" + data.d.Email);
                            <%--$("#<%=mailidtext.ClientID%>").text(data.d);--%>
                                    var fx = "";
                                    var fz = "";    
                                    f = data.d.Email;
                                    feid = data.d.EmployeeId;
                                    var EID = $(".EmpIDTextBoxClass").val().toString();
                                    var z = $(".mailidtextClass").val().toString();
                            if (z == "") {
                                fx = z + " " + f;
                                fz = EID + "" + feid;
                            }
                            else {
                                console.log("Textbox" + txt);
                                fx = z + ',' + " " + f;
                                fz = EID + ',' + " " + feid;


                            }


                            $(".mailidtextClass").val(fx);
                            $(".EmpIDTextBoxClass").val(fz);

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
    <script type="text/javascript">

                                                  $(document).ready(function () {

                                                      $("[id*=hideassign]").click(function () {
                                                          //alert("success");
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                          document.getElementById("hideownotherpopup").hidden = "hidden";
                                                          document.getElementById("StatusPTag").hidden = "hidden";
                                                          document.getElementById("StatusTag").hidden = "hidden";
                                                      })
                                                      $("[id*=hidecomplete]").click(function () {
                                                          //alert("success");
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                          document.getElementById("hideownotherpopup").hidden = "hidden";
                                                          document.getElementById("StatusPTag").hidden = "";
                                                          document.getElementById("StatusTag").hidden = "";


                                                      })
                                                      $("[id*=hidereject]").click(function () {
                                                          //alert("success");
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                          document.getElementById("hideownotherpopup").hidden = "hidden";
                                                          document.getElementById("StatusPTag").hidden = "hidden";
                                                          document.getElementById("StatusTag").hidden = "hidden";
                                                      })
                                                      $("[id*=hidenew]").click(function () {
                                                          //alert("success");
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                          document.getElementById("hideownotherpopup").hidden = "";
                                                          document.getElementById("StatusPTag").hidden = "hidden";
                                                          document.getElementById("StatusTag").hidden = "hidden";
                                                      })
                                                      $("[id*=hidehold]").click(function () {
                                                          //alert("success");
                                                          //$('button["id*=ReplyButton"]').show();
                                                          //document.getElementById("ReplyButton").hidden = "";
                                                          document.getElementById("hideownotherpopup").hidden = "";
                                                          document.getElementById("StatusPTag").hidden = "hidden";
                                                          document.getElementById("StatusTag").hidden = "hidden";
                                                      })
                                                  })
    </script>


</asp:Content>
