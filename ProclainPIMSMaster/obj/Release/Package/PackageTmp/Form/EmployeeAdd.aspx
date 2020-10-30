<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EmployeeAdd.aspx.cs" Inherits="ProclainPIMSMaster.Form.EmployeeAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
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
            background: linear-gradient(-68deg, #b4b1b5, #e0d9d9) !important;
            
            height: 40px !important;
            margin-bottom: 10px;
            
        }
         .btnss {
           background: linear-gradient(-68deg, #adabab, #534e4e) !important;
           color: white!important;
           
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
            border:black!important;
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
    <script>
        $(document).ready(function () {

            $('#<%= SuggestionGridView.ClientID %>').DataTable();
        });
    </script>
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
        function MinLength(sender, args) {
            var passlen = document.getElementById('password');
            if (passlen.value.length < 4) {
                args.IsValid = false;

            }
            else args.IsValid = true;

            
        }


    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="row">
    <div class="col-lg-4 form-control" >
         <div class="leftside no-gutters">
              
             <div class=" row">
                 <div class="col-sm-10">
             <center><h4 class="fw-300 c-grey-902 mB-30">Employee Details
        
        </h4> </center>
                     </div>
             
             <div class="col-sm-1">
                <%-- <img src="../UI/assets/static/images/Icons/search.ico" id="SearchButton" class="btn-hight" data-toggle="modal" data-target="#myModalSrc" style="align: right;cursor:pointer" />--%>
             </div>
             </div>
            <div class="row">
                <div class="col-sm-12">
                    <label>Employee Id</label>
                                           </div>
                </div>
             <div class="row">
                <div class ="col-sm-12">
                    <asp:TextBox ID="EmployeeIdTextBox" style="text-transform:uppercase;" CssClass="form-control bor" placeholder="Employee Id" onkeydown="return MoveNext('EmployeeNameTextBox',event.keyCode);" runat="server" ></asp:TextBox>
                 <%--   <asp:ImageButton ID="EmployeeImageButton" ImageUrl ="~/UI/assets/static/images/Icons/Add.jpg" runat="server" ImageAlign="TextTop" Height="42px" Width="40px" />--%>
                </div>
                </div>
        <br />
            <div class="row">
                <div class="col-sm-12">
                    <label>Employee Name</label>
                                           </div>
                </div>
                <div class="row">
                <div class ="col-sm-12">
                
                    <asp:TextBox ID="EmployeeNameTextBox" CssClass="form-control bor" placeholder="Employee Name" runat="server" onkeydown="return MoveNext('DepartmentDDList',event.keyCode);" ></asp:TextBox>
                 <%--   <asp:ImageButton ID="EmployeeImageButton" ImageUrl ="~/UI/assets/static/images/Icons/Add.jpg" runat="server" ImageAlign="TextTop" Height="42px" Width="40px" />--%>
                </div>
                </div>
        <br />
        <div class="row">
                
                <div class="col-sm-12">
                    <label>Department</label>
                    </div>
            </div>
                <div class="row">
                <div class ="col-sm-11">
                    <asp:DropDownList ID="DepartmentDDList" CssClass="js-example form-control bor" Width="100%"  runat="server" AutoPostBack="false" AppendDataBoundItems="True">  
                     <asp:ListItem>--Select--</asp:ListItem>       
                        
                            
                    </asp:DropDownList>

                     
                    
                </div>
            
                 <div class="col-sm-1" style="padding-left: 0px!important;padding-right: 0px!important" >
                    
                       <%-- <asp:ImageButton ID="DepartmentDDListImageButton" data-toggle="modal" data-target="#myModalDep" ImageUrl ="~/UI/assets/static/images/Icons/Add.jpg" runat="server" ImageAlign="TextTop" Height="45px" Width="40px" />--%>
                       <img src="/PIMS/UI/assets/static/images/Icons/Add.jpg" data-toggle="modal" data-target="#myModalDep" style="height:30px;width:30px;;"/>
                     <asp:TextBox ID="DDLTextBox" CssClass="form-control" placeholder ="Department Name" Visible="false" runat="server"></asp:TextBox>
                </div>
               </div>
        <br />
            <div class="row">
                <div class="col-sm-12">
                    <label>Designation</label>
                    </div>
                </div>
                <div class="row">
                <div class ="col-sm-11">
                    <asp:DropDownList ID="DesignationDDList" Cssclass="form-control js-example bor" runat="server" Width="100%"  AutoPostBack="False" AppendDataBoundItems="True">  
                        <asp:ListItem>--Select--</asp:ListItem>    
                        

                    </asp:DropDownList>
                    
                </div>

                 <div class="col-sm-1" style="padding-left: 0px!important;padding-right: 0px!important">
                    
                      <img src="/PIMS/UI/assets/static/images/Icons/Add.jpg" data-toggle="modal" data-target="#myModalDes" style="height:30px;width:30px;padding-left: 0px!important;padding-right: 0px!important;"/>
                        <%--<asp:ImageButton ID="DesignationDDListImageButton" data-toggle="modal"  data-target="#myModalDes" ImageUrl ="~/UI/assets/static/images/Icons/Add.jpg" runat="server" ImageAlign="TextTop" Height="45px" Width="40px" BorderStyle="NotSet" />--%>
                </div>
              </div>
        <br />
             <div class="row">
             <div class="col-sm-12">
              
                   <label>Phone Number</label>
                 </div>
                 </div>
                <div class="row">
                <div class ="col-sm-12">
                    <asp:TextBox ID="PhoneNoTextBox" CssClass="form-control bor" placeholder="00000 00000"  runat="server" OnTextChanged="PhoneNoTextBox_TextChanged"></asp:TextBox>
              </div>

             
              </div>
             <br />
             <div class="row">
             <div class="col-sm-12">
              
                   <label>E-Mail</label>
                 </div>
                 </div>
                <div class="row">
                <div class ="col-sm-12">
                    <asp:TextBox ID="email" CssClass="form-control bor" placeholder="E-Mail"  runat="server" onkeydown="return MoveNext('password',event.keyCode);"></asp:TextBox>
              </div>

             
              </div>
             <br />
             <div class="row">
             <div class="col-sm-12">
              
                   <label>Password</label>
                 </div>
                 </div>
                <div class="row">
                <div class ="col-sm-12">
                    
                    <asp:TextBox ID="password" CssClass="form-control bor" placeholder="Password here.. Min 4 digit."  runat="server" ></asp:TextBox>
                 <%--    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="password" ErrorMessage="Minimum 4 Characters Required" ClientValidationFunction="MinLength"></asp:CustomValidator>--%>
              </div>

             
              </div>
              <br />
        <div class="row">
                
                <div class="col-sm-12">
                    <label>Company</label>
                    </div>
            </div>
                <div class="row">
                <div class ="col-sm-11">
                    <asp:DropDownList ID="CompanyDDList" CssClass="js-example form-control bor" Width="100%"  runat="server" AutoPostBack="false" AppendDataBoundItems="True">  
                     <asp:ListItem>--Select--</asp:ListItem>       
                        
                            
                    </asp:DropDownList>

                     
                    
                </div>
            
                 <div class="col-sm-1" style="padding-left: 0px!important;padding-right: 0px!important" >
                    
                       <%-- <asp:ImageButton ID="DepartmentDDListImageButton" data-toggle="modal" data-target="#myModalCompany" ImageUrl ="~/UI/assets/static/images/Icons/Add.jpg" runat="server" ImageAlign="TextTop" Height="45px" Width="40px" />--%>
                       <img src="/PIMS/UI/assets/static/images/Icons/Add.jpg" data-toggle="modal" data-target="#myModalCompany" style="height:30px;width:30px;"/>
                     <asp:TextBox ID="DDLComtextbox" CssClass="form-control" placeholder ="Department Name" Visible="false" runat="server"></asp:TextBox>
                </div>
               </div>
        <br />
             <div id="Error" class="row">
                <div class="col-sm-12">
                    <asp:Label ID="ErrorLabel" CssClass="ErrorLabelClass" runat="server" style="color: #ff0023;" ></asp:Label>
                    </div>
                 </div>
             <br />
               <asp:Panel ID="Panel1" runat="server">
             <div class="row" >
                  <div class="col-sm-12">
             
                 <asp:Button ID="AddDetailsSubmit" CssClass="form-control btns btb-primary" Width="100%" style="color:white;font-size: initial;margin-right: 5px;" BorderColor ="DodgerBlue"  runat="server" Text="Add Employee" OnClick="AddDetailsSubmit_Click"  />
              
                      </div>
                 <%--<div class="col-sm-6">--%>
                          <asp:Button ID="SearchsButton" CssClass="form-control btns btb-primary" Width="100%" BorderColor ="DodgerBlue"  runat="server" Text="Search" Visible="false" OnClick="SearchButton_Click" />
                                
                                
                                <%--<a href="SignUp.aspx" name="SignUp">Create Account</a></div>--%>
                        <%--</div>--%>
      </div>
                            
                            
        

        <div class="row">
                  <div class="col-sm-12">
            
                 <asp:Button ID="TempEmpInsert" CssClass="form-control btns btn-primary" Width="100%" BorderColor ="DodgerBlue" style="color:white;font-size: initial;margin-right: 5px;"  runat="server" Text="Add Temporary Employee" OnClick="TempEmpInsert_Click"   />
                                
                            </div>
              <%--<div class="col-sm-6">--%>
                                
                                <asp:Button ID="BackButton" CssClass="form-control btns btb-primary" PostBackUrl="~/Form/New_Suggestion.aspx" Width="100%" Visible="false" BorderColor ="DodgerBlue"  runat="server" Text="Back" />
                                <%--<a href="SignUp.aspx" name="SignUp">Create Account</a></div>--%>
                        <%--</div>--%>
      </div>

      <div class="row">
           <div class="col-sm-12">
            
                 
                 <asp:Button ID="UpdateButton" CssClass="form-control btns btb-primary" Width="100%" BorderColor ="DodgerBlue" style="color:white;font-size: initial;margin-right: 5px;"  runat="server" Text="Alter" OnClick="UpdateButton_Click"  />  
           </div>
             
      </div>

        


    </asp:Panel>
            </div>


    </div>
        <div class=" col-lg-8 reps" >
         <div class="rightside no-gutters">
             
             
             
                 <div class="limiter reps">

        <div class="container-table100 form-control" style="display: contents!important;">
            <div class="wrap">
                <div class="row">
                  <div class="col-md-4"></div>
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
            
                 <asp:Button ID="DisableButton" CssClass="form-control btns btn-primary" Width="100%" BorderColor ="DodgerBlue" style="color:black; font-size: initial;margin-right: 5px;"  runat="server" Text="Authority Setting" OnClick="DisableButton_Click"  />
                                
                            </div>
             
      </div>
                <div class="row">
                    <div class="col-md-12">

                        <div class="table100 ver6 m-b-110 table-responsive">
                            <div class="form-control reps  " style="border: none!important;">
                                <div class="row">
                                    
                                </div>
                            </div>
                            <br />
                            <br />
                            <asp:GridView ID="SuggestionGridView" CssClass="form-control noticedt" runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="EmployeeId" HeaderText="Employee ID" />
                                    <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                                    <asp:BoundField DataField="DepName" HeaderText="Department" />
                                    <asp:BoundField DataField="DesName" HeaderText="Designation" />
                                    <asp:BoundField DataField="PhoneNo" HeaderText="Phone No" />
                                    <asp:BoundField DataField="Points" HeaderText="Points" />
                                    <%--<asp:BoundField DataField="Allowance" HeaderText="Allowance" />--%>
                                    
                                    
                                    
                                    <%--<asp:BoundField DataField ="Before" HeaderText ="Before" />--%>
                                    
                                    <%--<asp:TemplateField HeaderText=" " Visible="true">
                                                <ItemTemplate>
                                                    <%--<img src="../UI/assets/static/images/Icons/2.png" id="Gridimgbtn" data-toggle="modal" data-target="#myModalGrid" style="background: none; align: right;width:25px; height:25px;cursor:pointer;" />--%>               
                                                   <%--<asp:ImageButton ID="Gridimgbtn" runat="server" data-toggle="modal" data-target="#myModalGrid" Width="25px" ImageUrl="~/UI/assets/static/images/Icons/2.png" AutoPoseBack="false" ></asp:ImageButton>--%>   
                                                   <%--<asp:ImageButton ID="imgbtn_cal" runat="server" Width="25px" ImageUrl="~/UI/assets/static/images/Icons/images.jpg" Visible="false" ToolTip="Cancel"></asp:ImageButton>--%>                                           
                                                <%--</ItemTemplate>                  
                                                </asp:TemplateField> --%>
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



   <div class="container"> 
    
 <div class="modal fade" id="myModalDep" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"> New Department </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          <label>Enter Department Name</label>
            <asp:TextBox ID="DepDDLPopTextBox" CssClass="form-control bor" placeholder ="Department Name" runat="server"></asp:TextBox>
        </div>
        <div class="modal-footer">
         <asp:Button ID="DepartmentPopButton" CssClass="form-control btns" runat="server" Text="Add Department" OnClick="DepartmentPopButton_Click"/>
        </div>
      </div>
      
    </div>
  </div>

       </div>


    <div class="container"> 
    
 <div class="modal fade" id="myModalCompany" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"> New Company </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          <label>Enter Company Name</label>
            <asp:TextBox ID="ComDDl" CssClass="form-control bor" placeholder ="Company Name" runat="server"></asp:TextBox>
        </div>
        <div class="modal-footer">
         <asp:Button ID="DDLCompanyAdd" CssClass="form-control btns" runat="server" Text="Add Company" OnClick="DDLCompanyAdd_Click" />
        </div>
      </div>
      
    </div>
  </div>

       </div>
  

<!-- DivTable.com -->


    <div class="container">
    <div class="modal fade" id="myModalDes" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title"> New Designation </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          <label>Select Department Name</label>
            <asp:DropDownList ID="DepartmentPopUPDDList" CssClass="js-example form-control" Width="100%"  runat="server" AutoPostBack="false" AppendDataBoundItems="True">  
                     <asp:ListItem>--Select--</asp:ListItem>       
                </asp:DropDownList>
            <br /><br />
          <label>Enter Designation Name</label>
            <asp:TextBox ID="DesDDLPopTextBox" CssClass="form-control bor" placeholder ="Department Name" runat="server"></asp:TextBox>
        </div>
        <div class="modal-footer">
            <asp:Button ID="DesignationPopButton" CssClass="form-control btns" runat="server" Text="Add Designation" OnClick="DesignationPopButton_Click"/>
          
        </div>
      </div>
      </div>
    </div>
  </div>


    <%-- Search Module --%>
     <div class="container">
        <div class="modal fade" id="myModalSrc" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title"> Search Committee Members Detail </h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body" style="padding:30px">

                        <div class="row">
                            
                            <div class="col-md-4">
                                <label>Employee ID</label>
                            </div>
                            <div class="col-md-6">
                                <input id="EmpidIdText" class="form-control bor Empidclass" name="CommitteeIdText" placeholder="Employee ID"   type="text"  onkeydown="return CMtableInputKeyPress(event);"/>
                                
                            </div>
                        </div>
                        <br />
                    </div>

                    <div class="modal-footer">
                        <label></label>
                        <br />
                        <%--<asp:Button ID="SearchPopButton" CssClass="form-control bor apopbtn" runat="server" Text="Search" OnClientClick="return CMtableInputKeyPress(event);"  />--%>
                        <label></label>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- End Of Search Module --%>  
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/json2/20130526/json2.min.js"></script>
    
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script>


    <%-- Commitee ID Search  --%>
     <script>
        function CMtableInputKeyPress(e) {

            // alert('Keypress called');
            e = e || window.event;
            var key = e.keyCode;
            if (key == 13||key ==9||key == 1||key == 0) //Enter
            {   
                var CMId = $('.Empidclass').val();
               
                $.ajax({
                    url: 'EmployeeAdd.aspx/CMChecking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data;},
                    data: '{cmid:' + JSON.stringify(CMId) + '}',
                    dataType: "json",
                    
                    success: function (data) {
                       
                        var er = data.d.ErrorLabel;
                        if (er != 1) {
                            $("#Error").hide();
                            console.log("test" + data.d.empname);
                        console.log("test" + data.d.Department);
                        console.log("test" + data.d.Designation);
                        var oth = data.d.DupCheck;
                        document.getElementById('<%= EmployeeIdTextBox.ClientID %>').value = data.d.empid;
                        document.getElementById('<%= EmployeeNameTextBox.ClientID %>').value = data.d.empname;
                        document.getElementById('<%= DepartmentDDList.ClientID %>').value = data.d.Department;
                            document.getElementById('<%= DesignationDDList.ClientID %>').value = data.d.Designation;
                            document.getElementById('<%= PhoneNoTextBox.ClientID %>').value = data.d.DupCheck;
                            console.log(data.d.Memberof);
                            

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
    <%-- End Of Committee ID Search --%>
    
</asp:Content>
