<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="HOSDashboard.aspx.cs" Inherits="ProclainPIMSMaster.Form.HOSDashboard" %>
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
          $(document).ready(function () {
              
              $('.noticedt').DataTable({
                  dom: 'flrtiBp',
                  buttons: [{
                      extend: 'excel', text: '<img src="../../UI/assets/static/images/Icons/Excel2.jpg" width="30px" height="30px">', exportOptions: {
                          columns: "thead th:not(.noExport)"
                      }
                  },

                      {
                          extend: 'pdf', text: '<img src="../../UI/assets/static/images/Icons/Pdf.ico" width="30px" height="30px">', exportOptions: {
                              columns: "thead th:not(.noExport)"
                          }
                      },
                      {
                          extend: 'print', text: '<img src="../../UI/assets/static/images/Icons/Print.ico" width="30px" height="30px">', exportOptions: {
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
        
    </style>
    <%--
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
     --%>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <link href="../UI/Style/all.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="row">
        <div class="col-lg-4 form-control" style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
             <div class="email-side-nav remain-height ov-h">
                <!--        <div class="layer w-100">
                            <div class="bgc-grey-100 peers ai-c jc-sb p-20 fxw-nw">
                                <div class="peer" style="width:100%">
                                    
                                        

                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="margin-left: 20px;margin-top: 20px;background: none;" RepeatDirection="Vertical" RepeatColumns="3">
                                        <asp:ListItem  class="fes">Complete</asp:ListItem>
                                        <asp:ListItem >InProgress</asp:ListItem>
                                        
                                    </asp:RadioButtonList>
                                        

                                    
                                    </div>
                                
                                
                            </div>
                        </div>

                        <div class="layer w-100">
                            <div class="bdT bdB">
                                <input type="text" class="form-control m-0 bdw-0 pY-15 pX-20" placeholder="Search...">
                            </div>
                        </div> -->
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px;padding-right:10px">
                                <%-- <div class="">--%>

                                <div class="peer fxw-nw bdB cur-p" >
                                 <asp:Repeater ID="MailRepeater" runat="server">
                                     <ItemTemplate>
                                         <div class="ideadiv" style="padding-left:10px">
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
                                                    <%--<%# Eval("DepName") %>
                                                    <br />--%>
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
                                                        <mark  id="SMail" class="fnt"></mark><mark id="SMailTag"></mark>
                                                        
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

                                                    </div>
                                                        </div>




                                                </ContentTemplate>


                                            </asp:UpdatePanel>


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
                                                    <p runat="server" id="BenefitsTag" style="padding-left: 20px"></p>--%>

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
             <input id="UpdatePopButton" class="form-control btns" style="height:50%;width:100%;color:white" type="button" value="Alter" data-toggle="modal" data-target="#myModalUpdate" onclick = "tableKeyPress()"/>
                 
              </div>
             
        </div>
    </div>
    


       <%--
           MODALS COMMITEE EVALUATION Rejection
    --%>
       <div class="container">
        <div class="modal fade" id="myModalUpdate" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Update</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">

                            <form class="email-compose-body">
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
                                        <asp:ListItem  class="fes">Complete</asp:ListItem>
                                        <asp:ListItem >InProgress</asp:ListItem>

                                        
                                    </asp:RadioButtonList>
                                        

                                    </div>
                                   <div id = "rej">
                                    <div  class="form-group" >
                                    <label>Reason For Rejection</label>
                                    <asp:TextBox ID="ReasonRejTextBox" CssClass="form-control inp ReasonRejTextBoxClass"  runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                    
                                </div></div> 
                                    <div class="form-group">
                                    <label>Remark BY Team</label>
                                    <asp:TextBox ID="ResponseTextBox" CssClass="form-control inp ResponseTextBoxClass"  runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="5" ></asp:TextBox>
                                    <%--<textarea name="composetextarea" runat="server" class="form-control" placeholder="Remark BY Team" rows="10"></textarea>--%>
                                </div>

                                </div>

                                
                            </form>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="UpdateButton" runat="server" CssClass="form-control apopbtn" Text="Send" OnClick="UpdateButton_Click" />
                        <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--
           END OF MODALS COMMITEE EVALUATION
    --%>

      
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

  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <%-- IdeaID Sender to BackEnd  --%>
    
    
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
                    url: 'EmployeeTask.aspx/MailContent',
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
                        //document.getElementById("IdeaIdPop1Tag").innerHTML = data.d.IdeaIdTag;
                        //document.getElementById("IdeaIdPop2Tag").innerHTML = data.d.IdeaIdTag;
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
                        document.getElementById("ToNameUpMark").innerHTML = data.d.Sempname;
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

