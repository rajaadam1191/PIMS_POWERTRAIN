<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="HOS.aspx.cs" Inherits="ProclainPIMSMaster.HOS" %>
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
    
    
<%--<div class="col-12 peer pX-40  h-100 bgc-white scrollable pos-r" style="min-width:320px; padding-top: 28px">--%>
    
   
    <div class="row">
        <div class="col-lg-4 form-control" style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
             <div class="email-side-nav remain-height ov-h">
                        <div class="layer w-100">
                            <div class="bgc-grey-100 peers ai-c jc-sb p-20 fxw-nw">
                                
                                <div class="peer" style="width:100%">
                                    
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="margin-left: 20px;margin-top: 20px;background: none;" RepeatDirection="Vertical" RepeatColumns="3">
                                        <asp:ListItem  class="fes">Done</asp:ListItem>
                                        <asp:ListItem >InProgress</asp:ListItem>
                                        
                                    </asp:RadioButtonList>
                                        

                                    
                                    </div>
                            </div>
                        </div>

                        <div class="layer w-100">
                            <div class="bdT bdB">
                                <input type="text" class="form-control m-0 bdw-0 pY-15 pX-20" placeholder="Search...">
                            </div>
                        </div>
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px;padding-right:10px">
                                <%-- <div class="">--%>

                                <div class="peer fxw-nw bdB cur-p" >

                                <asp:Repeater ID="MailRepeater" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                    <%-- OnItemCreated="MailRepeater_ItemCreated"  --%>
                                    <ItemTemplate>
                                        <%--<div class="pear bdB">--%>
                                        
                                            <%--onclick="linc_click()"--%>
                                           
                                                           <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%> 
                                           <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IDeaID")%>' ClientIDMode="Static" hidden></asp:Label>             
                                            <div class="row">

                                                <div class="col-sm-10">
                                                    <%--<input id="lblImageName" class="IdeaIdclass" name="lblImageName" text='<%#Bind("IdeaId")%>' type="text" visible="false"/>--%>
                                                    <%--<asp:TextBox ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' Visible="false"></asp:TextBox>--%>
                                                    <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("IDeaID")%>' hidden></asp:TextBox>
                                                  
                                                    
                                                </div>
                                                

                                            </div>

                                            <div class="row">
                                                <div class="col-sm-12 form-control" style="border:none!important;">
                                                    <%# Eval("SendFrom") %>
                                                    <br />
                                                    <%# Eval("Subject") %>
                                                    <br />
                                                    <%# Eval("IDeaID") %>
                                                    <br />
                                                    <hr />
                                                </div>
                                            </div>
                                            <%--</asp:LinkButton>--%>
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
    
    <div class=" col-lg-8 reps" style="padding:15px">
         <div class="rightside no-gutters" style="margin-right: 50px;">
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
                                    
                                    <asp:BoundField DataField="ReceiverID" HeaderText="Employee ID" />
                                    <asp:BoundField DataField="NewFrom" HeaderText="Name" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="IDeaID" HeaderText="IDea ID" />
                                    <asp:BoundField DataField="Type" HeaderText="Status" />
                                    <asp:BoundField DataField="Des" HeaderText="Reason" />
                                    <asp:BoundField DataField="Dep" HeaderText="Remark" />
                                    
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



       <div class="sidebar" style="right: 0px;position: absolute;background-color: #fff0;">
            <div class="sidebar-inner">

                <!-- ========================================
                            ### $Sidebar Header ###
                     ======================================== -->
                <!--<div class="sidebar-logo">
                    <div class="peers ai-c fxw-nw">
                        <div class="peer peer-greed">
                            <a class="sidebar-link td-n" href="Default.aspx" class="td-n">
                                <div class="peers ai-c fxw-nw">
                                    <div class="peer">
                                        <div class="logo">
                                            <img src="../UI/assets/static/images/logo.png" alt="" style = "padding-left: 5px; padding-top: 10px; padding-top: 15px;padding-right: 10px;width: 248px"/>
                                            
                                        </div>
                                    </div>
                                    <div class="peer peer-greed">
                                        <h5 class="lh-1 mB-0 c-grey-902 logo-text"><b></b></h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="peer">
                            <div class="mobile-toggle sidebar-toggle">
                                <a href="" class="td-n">
                                    <i class="ti-arrow-circle-left"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>--!>
                <!-- ========================================
                            ### $Sidebar Header End ###
                     ======================================== -->
                <!-- =======================
                      ### $Sidebar Menu ###
                     ======================= -->
                <ul class="sidebar-menu scrollable pos-r" style="text-align: right; color: #f8f8f8 !important">
                    <li class="nav-item mT-30 active" style="color: #f8f8f8 !important">
                        <a href="javascript:void(0)" class="nav-link c-grey-800 cH-blue-500 active color: #f8f8f8 !important" data-toggle="modal" data-target="#myModalOwnTeamMembers">
                            <span class="title">Own Team</span>
                            <span class="icon-holder iconmenu">
                                    <i class="c-blue-500 ti-view-list-alt"></i>
                                </span>
                            
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="javascript:void(0)" class="nav-link c-grey-800 cH-blue-500 active" data-toggle="modal" data-target="#myModalComiteeEvaluation">
                            <span class="title">Other Team Manager </span>
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
        </div> 
             
                
                 
              </div>
    </div>
    

      <%--
           MODALS COMMITEE EVALUATION Approve
    --%>
      <div class="container">
        <div class="modal fade" id="myModalRejection" role="dialog">
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
                                    <label>Implementation Date</label>
                                    <asp:TextBox ID="DateTextBox" CssClass="form-control inp"  runat="server" placeholder="Date"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Benifits Rating</label>
                                    <asp:TextBox ID="BRatingTextBox" CssClass="form-control inp"  runat="server" placeholder="Reffer Rating Table" data-yourtooltipctrl="LookUpKey" data-yourtooltiptype="1"></asp:TextBox>
                                    
                                </div>
                                    <div class="form-group">
                                    <label>Approving Head Name</label>
                                    <asp:TextBox ID="HeadNameTextBox" CssClass="form-control inp"  runat="server" placeholder="Approved By"></asp:TextBox>
                                    
                                </div>
                                    </div>
                                    <div class="form-group">
                                    <label>Benefit Status</label>
                                    <asp:TextBox ID="BStatusTextBox" CssClass="form-control inp"  runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                    
                                </div>

                                </div>
                                

                                
                            </form>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="OwnTeamPopButton" runat="server" CssClass="form-control apopbtn btn-primary" Text="Send" OnClick="OwnTeamPopButton_Click"/>
                        <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--
           END OF MODALS COMMITEE EVALUATION
    --%>





       <%--
           TootTip COMMITEE EVALUATION Rejection
    --%>
      
    <div id="yourtooltipctrl" runat="server" style="display: none">
    <label>Benefits Matrix</label>
        <table>
        <thead>
             <tr>
                   <td>Grade</td> 
                    <td>Productivity</td>
                        <td>Quality</td>
                    <td> Cost Saving</td>
                    <td>Safety & Environment</td>
                    <td>6S</td>
                </tr>
        </thead>
            <tbody>
                <tr>
                   <td>A</td> 
                    <td>6 % & Above</td>
                        <td><200 PPM</td>
                    <td> 1,00,000 & Above</td>
                    <td>Preventive Significant</td>
                    <td>Significiant</td>
                </tr>
                 <tr>
                   <td>B</td> 
                    <td>2 % & Above</td>
                        <td>500 - 200 PPM</td>
                    <td> 50,000 - 1,00,000 </td>
                    <td>Preventive Medium</td>
                    <td>Medium</td>
                </tr>
                <tr>
                   <td>c</td> 
                    <td> < 2% </td>
                        <td> >500 PPM</td>
                    <td> Less Than 50,000 </td>
                    <td>Preventive Low</td>
                    <td>Low</td>
                </tr>

            </tbody>
            
    </table>
</div>

   
    <%--
           END OF ToolTip COMMITEE EVALUATION
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
                    url: 'CommiteeEvalSend.aspx/Checking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{emp:' + JSON.stringify(IdeaID) + '}',
                    dataType: "json",

                    success: function (data) {






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
</asp:Content>