<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Suggestions_Status.aspx.cs" Inherits="ProclainPIMSMaster.Form.Suggestions_Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

     
    <script src="../UI/Script/pikaday.js"></script>
    <!--===============================================================================================-->
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />

    <!--===============================================================================================-->
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/json2/20130526/json2.min.js"></script>
    <!--===============================================================================================-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!--===============================================================================================-->
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <!--===============================================================================================-->
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <!--===============================================================================================-->
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <!--===============================================================================================-->
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <!--===============================================================================================-->
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <!--===============================================================================================-->
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <!--===============================================================================================-->
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <!--===============================================================================================-->
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script>
    <!--===============================================================================================-->
    
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/bootstrap/Css/bootstrap.min.css" />
    <!--===============================================================================================-->

    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/fonts/font-awesome-4.7.0/Css/font-awesome.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/select2/select2.min.css" />
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/vendor/perfect-scrollbar/perfect-scrollbar.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/css/util.css" />
    <link rel="stylesheet" type="text/css" href="../UI/GridViewDesign/css/main.css" />
    <!--===============================================================================================-->
    <%--'flrtiBp'--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.noticedt').DataTable({
                dom: 'flrtiBp',
                buttons: [{
                    extend: 'excel', text: '<img src="../UI/assets/static/images/Icons/Excel2.jpg" width="30px" height="30px">', exportOptions: {
                        columns: "thead th:not(.noExport)"
                    }
                },

                    {
                        extend: 'pdf', text: '<img src="../UI/assets/static/images/Icons/Pdf.ico" width="30px" height="30px">', exportOptions: {
                            columns: "thead th:not(.noExport)"
                        }
                    },
                    {
                        extend: 'print', text: '<img src="../UI/assets/static/images/Icons/Print.ico" width="30px" height="30px">', exportOptions: {
                            columns: "thead th:not(.noExport)"
                        }
                    }],
                //{
                //    extend: 'copy', text: '<img src="../../UI/assets/static/images/Icons/Print.ico" width="30px" height="30px">', exportOptions: {
                //        columns: "thead th:not(.noExport)"
                //    }

                //}
                "lengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]]
            });
        });
    </script>

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
    </style>

    <script>
        $(document).ready(function () {

            $('#<%= SuggestionGridViews.ClientID %>').DataTable();
        });
    </script>
    <script>
        var handleDataTableButtons = function () {
            "use strict";
            0 !== $('#<%= SuggestionGridViews.ClientID %>').length &&
                  $('#<%= SuggestionGridViews.ClientID %>').DataTable({
                      dom: "Bfrtip",
                      buttons: [{
                          extend: "copy",
                          className: "btn-sm"
                      }, {
                          extend: "csv",
                          className: "btn-sm"
                      }, {
                          extend: "excel",
                          className: "btn-sm"
                      }, {
                          extend: "pdf",
                          className: "btn-sm"
                      }, {
                          extend: "print",
                          className: "btn-sm"
                      }],
                      responsive: !0
                  })
        },
    TableManageButtons = function () {
        "use strict";
        return {
            init: function () {
                handleDataTableButtons()
            }
        }
    }();
   
        </script>
    <style>
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
</style>

    
<style>
        
        /*.container-fluid {
            padding-right: 15px;
            padding-left: 15px;
        }*/
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
           
</style>
    
     <script type="text/javascript">
        // $(".js-example").select2();
         $(document).ready(function () {
             $(".js-example").select2(
                 {

                     placeholder: "Select",
                     allowClear: true
                 });
         });

 
         </script>
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
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid reps" >
    <div id="mainContent">
        <h4 class="c-grey-900 mT-10 mB-30">Suggestions</h4>
        <div class="row">
            <div class="form-group col-sm-3">
                <label>Employee ID</label>
                <asp:TextBox ID="EmployeeIDTextBox" CssClass="form-control" runat="server" placeholder="Enter Employee ID" OnTextChanged="EmployeeIDTextBox_TextChanged"></asp:TextBox>
                
            </div>
            <div class="form-group col-sm-3">
                <label>Employee Name</label>
                <asp:TextBox ID="EmployeeNameTextBox" CssClass="form-control" placeholder="Employee Name" runat="server" Enabled="false" ></asp:TextBox>
            </div>
            <div class="form-group col-sm-3">
                <label>Department</label>
                <asp:TextBox ID="DepartmentTextBox" CssClass="form-control bor" placeholder="Department" runat="server" Enabled="false"></asp:TextBox>
                    
            </div>

            <div class="form-group col-sm-3">
                <label>Designation</label>
                <asp:TextBox ID="DesignationTextBox" CssClass="form-control bor" placeholder="Department" runat="server" Enabled="false"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-sm-3">
                <label>From Date</label>
                <asp:TextBox ID="FromDateTextBox" CssClass="form-control" TextMode="Date" placeholder="dd/mm/yyyy" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-sm-3">
                <label>To Date</label>
                <asp:TextBox ID="ToDateTextBox" CssClass="form-control" TextMode="Date" placeholder="dd/mm/yyyy" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-sm-3">
                <div class="peer">
                    <a class="btn login-form__btn submit w-100" "="" style="border-color:dodgerblue">Submit</a>
  
                </div>
            </div>
            </div>


        <div class="limiter reps">

        <div class="container-table100 form-control" style="display: contents;">
            <div class="wrap">

                <div class="row">
                    <div class="col-md-12">

                        <div class="table100 ver6 m-b-110 table-responsive">
                            <%--<div class="form-control reps  " style="border: none!important;">
                                
                            </div>--%>
                            <asp:GridView ID="SuggestionGridViews" CssClass="form-control noticedt" runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="False" OnRowDataBound="SuggestionGridViews_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="EmployeeId" HeaderText="EmpId" />
                                    <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                                    <asp:BoundField DataField="DepName" HeaderText="Department" />
                                    <asp:BoundField DataField="DesName" HeaderText="Designation" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="Subject" HeaderText="Subject" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:TemplateField HeaderText=" " Visible="true">
                                    <ItemTemplate>               
                                        <asp:ImageButton ID="Gridimgbtn" runat="server" data-toggle="modal" data-target="#myModalDes" Width="25px" style="background:none" ImageUrl="~/UI/assets/static/images/Icons/2.png" AutoPoseBack="false" OnClick="Gridimgbtn_Click" ></asp:ImageButton>   
                                    </ItemTemplate>                  
                                    </asp:TemplateField> 
                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



        <%--<div class="row">                                
            <div class="col-md-12">
                <div class="bgc-white bd bdrs-3 p-20 mB-20">
                    <asp:GridView ID="SuggestionGridViews" CssClass="form-control" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="10" GridLines="Horizontal" CellSpacing="15" AutoGenerateColumns="false" AllowPaging="true" PageSize="5" OnPageIndexChanging="OnPageIndexChanging" AllowSorting="True" AllowCustomPaging="True">
                        <Columns>
                            <asp:TemplateField HeaderText="S.No">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="snum" Text="<%#Container.DataItemIndex+1%>" Width="20px"></asp:Label>
                                <asp:Label runat="server" ID="lbl_dbsno" Text="" Width="40px" Visible="false"></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>       
                            <asp:BoundField DataField ="IdeaId" HeaderText ="Idea Id" />
                            <asp:BoundField DataField ="EmployeeId" HeaderText ="Employee Id" />
                            <asp:BoundField DataField ="EmployeeName" HeaderText ="Employee Name" />
                            <asp:BoundField DataField ="Date" HeaderText ="Date" />
                            <%--<asp:BoundField DataField ="SuggestionDep" HeaderText ="Suggestion For" />
                            <asp:BoundField DataField ="Subject" HeaderText ="Suggestion Subject" />
                            <asp:BoundField DataField ="Status" HeaderText ="Status" />
                            <asp:TemplateField HeaderText=" " Visible="true">
                            <ItemTemplate>               
                                <asp:ImageButton ID="Gridimgbtn" runat="server" data-toggle="modal" data-target="#myModalDes" Width="25px" ImageUrl="~/UI/assets/static/images/Icons/images.jpg" AutoPoseBack="false" OnClick="Gridimgbtn_Click" ></asp:ImageButton>   
                                <%--<asp:ImageButton ID="imgbtn_cal" runat="server" Width="25px" ImageUrl="~/UI/assets/static/images/Icons/images.jpg" Visible="false" ToolTip="Cancel"></asp:ImageButton>                                          
                            </ItemTemplate>                  
                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>

            </div>

        </div>--%>

    </div>
</div>

        
<div class="container">
    <div class="modal fade" id="myModalDes" role="dialog">
        <div class="modal-dialog">
    
        <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"> Suggestion >
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
          
                </div>
                <div class="modal-body">
                    <div class= "row">
                        <div class="col-sm-2">
                            <label>Employee ID </label>

                        </div>
                        <div class="col-sm-10">
                            <asp:Label ID="EmpIDLable" runat="server" ></asp:Label>
                            <br />

                        </div>

                    </div>
                    <div class= "row">
                        <div class="col-sm-2">
                            <label>Employee Name </label>

                        </div>
                        <div class="col-sm-10">
                            <asp:Label ID="EmpNameLable" runat="server" ></asp:Label>
                            <br />

                        </div>

                    </div>
                    <div class= "row">
                        <div class="col-sm-2">
                            <label>Department </label>

                        </div>
                        <div class="col-sm-10">
                            <asp:Label ID="DepLabel" runat="server" ></asp:Label>
                            <br />

                        </div>

                    </div>
                    <div class= "row">
                        <div class="col-sm-2">
                            <label>Designation </label>

                        </div>
                        <div class="col-sm-10">
                            <asp:Label ID="DesLable" runat="server" ></asp:Label>
                            <br />

                        </div>

                    </div>
                    <div class= "row">
                        <div class="col-sm-2">
                            <label>Suggestion </label>

                        </div>
                        <div class="col-sm-10">
                            <asp:Label ID="SuggLabel" runat="server" ></asp:Label>
                            <br />

                        </div>
                    </div>
                    <div class= "row">
                        <div class="col-sm-2">
                            <label>Category </label>

                        </div>
                        <div class="col-sm-10">
                            <asp:Label ID="CatLabel" runat="server" ></asp:Label>
                            <br />

                        </div>
                    </div>
                    <div class= "row">
                        <div class="col-sm-2">
                            <label>Date </label>

                        </div>
                        <div class="col-sm-10">
                            <asp:Label ID="DateLabel" runat="server" ></asp:Label>
                            <br />

                        </div>
                    </div>
                    <div class= "row">
                        <div class="col-sm-2">
                            <label>Subject </label>

                        </div>
                        <div class="col-sm-10">
                            <asp:Label ID="SubLabel" runat="server" ></asp:Label>
                            <br />

                        </div>
                    </div>
                    <div class= "row">
                        <div class="col-sm-2">
                            <label>Description </label>

                        </div>
                        <div class="col-sm-10">
                            <asp:Label ID="DesLabel" runat="server" ></asp:Label>
                            <br />
                        </div>
                    </div>
                    <div class= "row">
                        <div class="col-sm-2">
                            <label>Status </label>

                        </div>
                        <div class="col-sm-10">
                            <asp:Label ID="StatusLabel" runat="server" ></asp:Label>
                            <br />

                        </div>
                    </div>
                    <div class= "row">
                        <div class="col-sm-2">
                        <label>Approve </label>

                        </div>
                        <div class="col-sm-10">
                            <asp:Label ID="AppLabel" runat="server" ></asp:Label>
                            <br />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
</div>


</asp:Content>
