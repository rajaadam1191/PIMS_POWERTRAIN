<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="HOSAdd.aspx.cs" Inherits="ProclainPIMSMaster.Form.HOSAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
       <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
     
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
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
</style>
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
    </style>

    <script>
        $(document).ready(function () {

            $('#<%= SuggestionGridView.ClientID %>').DataTable();
        });
    </script>
    <script>
        var handleDataTableButtons = function () {
            "use strict";
            0 !== $('#<%= SuggestionGridView.ClientID %>').length &&
                  $('#<%= SuggestionGridView.ClientID %>').DataTable({
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
     
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
<%--<div class="col-12 peer pX-40  h-100 bgc-white scrollable pos-r" style="min-width:320px; padding-top: 28px">--%>
    
   
    <div class="row">
    <div class="col-lg-4 form-control" >
         <div class="leftside no-gutters">
             <center><h4 class="fw-300 c-grey-902 mB-30">HOS Records
        
        </h4> </center>
             <br />
            <div class="row">
                 <div class="col-sm-4">
                    <label>Employee ID</label>
                    </div>
                
                    <div class="col-sm-8">
                        
                    <asp:TextBox ID="EmployeeIdTextBox" CssClass="form-control bor  Emplidclass" placeholder="Employee Id" runat="server" AutoPostBack="true" onkeydown="return tableInputKeyPress(event);"></asp:TextBox>
                     </div>
                     </div>
                     <br />
                     <div class="row">
                <div class="col-sm-4">
                    <label>Employee Name</label>
                    </div>
                         <div class="col-sm-8">
                    <asp:TextBox ID="EmployeeTextBox" CssClass="form-control bor" Width="100%" Enable="true" placeholder="Employee Name" runat="server" ></asp:TextBox>
                    </div>
                </div>
             <br />
                     <div class="row">
                
                <div class="col-sm-4">
                    <label>Department</label>
                    </div>
                         <div class="col-sm-8">
                    <asp:TextBox ID="DepartmentTextBox" CssClass="form-control bor" Width="100%" Enable="true" placeholder="Department Name" runat="server"></asp:TextBox>
                    </div>
                </div>
                 <br />
                     <div class="row">
                <div class="col-sm-4">
                    <label>Designation</label><br />
                    </div>
                         <div class="col-sm-8">
                    <asp:TextBox ID="DesignationTextBox" CssClass="form-control bor" Width="100%" Enable="true" placeholder="Designation Name" runat="server"></asp:TextBox>
                   
                    
                </div>
                 
              </div>
        
             <br />
              <div id="Error" class="row">
                <div class="col-sm-12">
                    <asp:Label ID="ErrorLabel" CssClass="ErrorLabelClass" runat="server" style="color: #ff0023;" ></asp:Label>
                    </div>
                 </div>
             <br />
             <br />
              
             
    <div class="row">
       
        <div class="col-sm-12">
                <div class="peer">
                 <asp:Button ID="Submit" CssClass="form-control bor" Width="100%" BorderColor ="DodgerBlue"  runat="server" Text="Submit" OnClick="Submit_Click" />
                 
                 </div>
    <div class="col-sm-2">
             <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>              
                            </div>
             </div>
      </div>
             <br />
    </div>
    
        </div>
    
    <div class=" col-lg-8 reps" >
         <div class="rightside no-gutters">
             
             
             
                 <div class="limiter reps">

        <div class="container-table100 form-control" style="display: contents!important;">
            <div class="wrap">

                <div class="row">
                    <div class="col-md-12">

                        <div class="table100 ver6 m-b-110 table-responsive">
                            <div class="form-control reps  " style="border: none!important;">
                                <div class="row">
                                    
                                </div>
                            </div>
                            <asp:GridView ID="SuggestionGridView" CssClass="form-control noticedt" runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound">
                                <Columns>
                                    
                                    <asp:BoundField DataField="EmpId" HeaderText="Employee ID" />
                                    <asp:BoundField DataField="Members" HeaderText="Employee Name" />
                                    <asp:BoundField DataField="Department" HeaderText="Department" />
                                    
                                    <%--<asp:BoundField DataField ="Before" HeaderText ="Before" />--%>
                                    
                                    <asp:TemplateField HeaderText=" " Visible="true">
                                                <ItemTemplate>
                                                    <%--<img src="../UI/assets/static/images/Icons/2.png" id="Gridimgbtn" data-toggle="modal" data-target="#myModalGrid" style="background: none; align: right;width:25px; height:25px;cursor:pointer;" />--%>               
                                                   <%--<asp:ImageButton ID="Gridimgbtn" runat="server" data-toggle="modal" data-target="#myModalGrid" Width="25px" ImageUrl="~/UI/assets/static/images/Icons/2.png" AutoPoseBack="false" ></asp:ImageButton>--%>   
                                                   <%--<asp:ImageButton ID="imgbtn_cal" runat="server" Width="25px" ImageUrl="~/UI/assets/static/images/Icons/images.jpg" Visible="false" ToolTip="Cancel"></asp:ImageButton>--%>                                           
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
                  
             
                 
              </div>
             
        </div>
    </div>
    
      
   <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/json2/20130526/json2.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script>
    <script>
        function tableInputKeyPress(e) {

            // alert('Keypress called');
            e = e || window.event;
            var key = e.keyCode;
            if (key == 13||key ==9) //Enter
            {   
                var empId = $('.Emplidclass').val();
               
                $.ajax({
                    url: 'ManagerList.aspx/Checking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data;},
                    data: '{emp:' + JSON.stringify(empId) + '}',
                    dataType: "json",
                    
                    success: function (data) {
                       
                        var er = data.d.ErrorLabel;
                        if (er != 1) {
                            $("#Error").hide();
                            console.log("test" + data.d.empname);
                        console.log("test" + data.d.Department);
                        console.log("test" + data.d.Designation);
                        document.getElementById('<%= EmployeeTextBox.ClientID %>').value = data.d.empname;
                        document.getElementById('<%= DepartmentTextBox.ClientID %>').value = data.d.Department;
                        document.getElementById('<%= DesignationTextBox.ClientID %>').value = data.d.Designation;
                        }
                        else
                        {
                        $("#Error").show();
                            document.getElementById('<%= ErrorLabel.ClientID %>').value = "Employee ID Does Not Exist";
                            $('.ErrorLabelClass').text("Employee ID Does Not Exist");
                        
                        }

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
</asp:Content>

