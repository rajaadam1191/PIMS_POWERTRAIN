<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" EnableEventValidation="False" CodeBehind="CommiteeEvalSend.aspx.cs" Inherits="ProclainPIMSMaster.Form.CommiteeEvalSend" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
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


    <style>

        .modal .modal-dialog.modal-right {
        right: 0
    }
        .modal .modal-side.modal-right {
    right: 0
}
         .modal .modal-full-height.modal-left,.modal .modal-full-height.modal-right,.modal .modal-full-height.modal-top {
        margin: 1.75rem auto;
        min-height: unset
    }
          .modal .modal-full-height.modal-bottom,.modal .modal-full-height.modal-left,.modal .modal-full-height.modal-right,.modal .modal-full-height.modal-top {
        margin-left: auto;
        margin-right: auto
    }


    </style>
    
      <script type="text/javascript">
          $(document).ready(function () {
                
              console.log('in datatable')
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
                //console.log(next_ctrl);
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

        #ModalViewFullDetails{
        width:100%!important;
        height:100%!important;
        }
        
    </style>
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
         <div class="loadingio-spinner-spin-70jldgjfy3"><div class="ldio-l05zvogs5db">
<div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div>
</div></div>
</div>
<%--<div class="col-12 peer pX-40  h-100 bgc-white scrollable pos-r" style="min-width:320px; padding-top: 28px">--%>
    
   
    <div class="row">
        <div class="col-lg-4 form-control" style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
             <div class="email-side-nav remain-height ov-h">
                      
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px;padding-right:10px">
                       

                                <div class="peer fxw-nw bdB cur-p" >

                                    <div class="container mt-3">
  
  
  <!-- Nav tabs -->
                                  <ul class="nav nav-tabs">
                                    <li class="nav-item" id="acceptclick">
                                      <a class="nav-link active" data-toggle="tab" href="#new">Accepted &nbsp;<span id="count"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
                                    <li class="nav-item" id="tohodclick">
                                      <a class="nav-link" data-toggle="tab" href="#complete">To HOD &nbsp;<span id="counthod"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
                                      <li class="nav-item" id="rejectclick">
                                      <a class="nav-link" data-toggle="tab" href="#reject">Reject &nbsp;<span id="countrej"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
                                       <li class="nav-item" id="Manclick">
                                      <a class="nav-link" data-toggle="tab" href="#FrmMan">FromMan &nbsp;<span id="countman"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
    
                                  </ul>
                                        <div class="tab-content">
                            
                                        <div id="new"  class="container tab-pane active">
                                <asp:Repeater ID="MailRepeater" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                  
                                    <ItemTemplate>
                                   
                                           
                                                           <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%> 
                                           <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IDeaID")%>' ClientIDMode="Static" hidden></asp:Label>             
                                            <div class="row">

                                                <div class="col-sm-10">
                                                 <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("IDeaID")%>' hidden></asp:TextBox>
                                                  
                                                    
                                                </div>
                                                

                                            </div>

                                            <div class="row">
                                                <div class="col-sm-9 form-control" style="border:none!important;">
                                                    <%# Eval("SendFrom") %>
                                                    <br />
                                                     <%# Eval("Subject") %>
                                                    <br />
                                                    <%# Eval("IDeaID") %>
                                                    <br />
                                                    
                                                </div>
                                                <div class="col-sm-3 form-control" style="border:none!important;">
                                                <asp:ImageButton ID="Gridimgbtn" runat="server" ImageUrl="../UI/assets/static/images/Icons/2.png" style="background: none; align: right;width:25px; height:25px;cursor:pointer;"  ></asp:ImageButton>
                                                </div>
                                                <hr />
                                            </div>
                                          
                                        </div>

                                    </ItemTemplate>

                                </asp:Repeater>
                                            </div>

                                                    <div id="complete" class="container tab-pane fade">
                                <asp:Repeater ID="MailRepeatercomplete" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                  
                                    <ItemTemplate>
                                   
                                           
                                                           <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%> 
                                           <div class="ideadivHOD" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IDeaID")%>' ClientIDMode="Static" hidden></asp:Label>             
                                            <div class="row">

                                                <div class="col-sm-10">
                                                 <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxtHOD" runat="server" Text='<%#Bind("IDeaID")%>' hidden></asp:TextBox>
                                                  
                                                    
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
                                          
                                        </div>

                                    </ItemTemplate>

                                </asp:Repeater>
                                            </div>
                                             <div id="reject" class="container tab-pane fade">
                                <asp:Repeater ID="MailRepeaterreject" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                  
                                    <ItemTemplate>
                                   
                                           
                                                           <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%> 
                                           <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IDeaID")%>' ClientIDMode="Static" hidden></asp:Label>             
                                            <div class="row">

                                                <div class="col-sm-10">
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
                                          
                                        </div>

                                    </ItemTemplate>

                                </asp:Repeater>
                                            </div>

                                             <div id="FrmMan" class="container tab-pane fade">
                                <asp:Repeater ID="MailRepeaterFrmman" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                  
                                    <ItemTemplate>
                                   
                                           
                                                           <%--<asp:LinkButton ID="RepeaterLinkButton" CssClass="list-group-item linka lbIdeaIdclass" runat="server" CommandName="Select" OnClientClick="return ConformPsIdeaID();" CommandArgument='<%# Eval("IdeaId") %>' >--%> 
                                           <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IDeaID")%>' ClientIDMode="Static" hidden></asp:Label>             
                                            <div class="row">

                                                <div class="col-sm-10">
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
                                          
                                        </div>

                                    </ItemTemplate>

                                </asp:Repeater>
                                            </div>




                                    </div></div>

                                

                                    
                                    </div>

                                
                            </div>
                        </div>
                    </div>
            </div>
            <div class="bTd">

            </div>
       
        </div>
    
    <div class=" col-lg-7 reps" style="padding:15px">
         <div class="rightside no-gutters" >
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
                            <asp:GridView ID="SuggestionGridView" CssClass="form-control noticedt" runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound" >
                                <Columns>
                                    
                                    <asp:BoundField DataField="ReceiverID" HeaderText="Employee ID" />
                                    <asp:BoundField DataField="NewFrom" HeaderText="Name" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="IDeaID" HeaderText="IDea ID" />
                                    <asp:BoundField DataField="Type" HeaderText="Status" />
                                    <asp:BoundField DataField="Des" HeaderText="Reason" />
                                    <asp:BoundField DataField="Dep" HeaderText="Remark" />
                                    
                                    
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

        <div class=" col-lg-1 reps" style="padding:0px">
         <div class="rightside no-gutters" style="width: 100%;height: 100%;">
             <input id="ImproButton" class="form-control btns" style="height:50%;width:100%;color:white" type="button" value="Response" data-toggle="modal" data-target="#myModalImpIdeaForm"/>
                 
             <%--</div>
             <div class="row">--%>
                 <input id="ReplyButton" class="form-control btns" style="height:50%;width:100%;color:white;" type="button" value="Change"  data-toggle="modal" data-target="#fullHeightModalRight" />

             <%--</div>--%>
             
                 
             </div>
            </div>
      
    </div>
    

      <%--
           MODALS COMMITEE EVALUATION Approve
    --%>
      <!-- Full Height Modal Right -->

  <div class="container">
        <div class="modal fade" id="fullHeightModalRight" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Commitee Evaluvation</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">


                            <div class="email-compose-body" >
                                <h4 class="c-grey-900 mB-20">Alter To</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IdeaIDRepTextBox" CssClass="form-control IdeaIDRepTextBoxClass" style="background:none" runat="server"></asp:TextBox>

                                    </div>
                                    

                                </div>
                               
                                <div class="form-group">
                                    <center>
                                        <asp:RadioButtonList ID="RepCheckRadioButtonList" runat="server" style="margin-left: 20px;margin-top: 20px;" RepeatDirection="Vertical" RepeatColumns="3">
                                        <asp:ListItem >Accepted</asp:ListItem>
                                        <asp:ListItem >Rejected</asp:ListItem>
                                        
                                    </asp:RadioButtonList>
                                        </center>
                                </div>
                                 <div class="form-group">
                                    <label>EmpID: </label>
                                    <asp:TextBox ID="EmpIdRepTextBox" CssClass="form-control EmpIdRepTextBoxClass" placeholder="Employee ID" style="background:none"  runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                                 
                                
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                         <asp:Button ID="Alterreject" runat="server" CssClass="form-control apopbtn btn-primary" Text="Confirm" OnClick="Alterreject_Click" />
                        <%--<asp:Button ID="" runat="server" CssClass="form-control btn btn-primary" Text="Confirm" OnClick="Alterreject_Click" />--%>
                        <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- Full Height Modal Right -->

   

       <%--
           MODALS COMMITEE EVALUATION Rejection
    --%>
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


                            <div class="email-compose-body" >
                                <h4 class="c-grey-900 mB-20">Send Message</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IMPIdeaIdTextBox" CssClass="form-control inp IMPIdeaIdClass" placeholder="Idea ID" onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" runat="server"></asp:TextBox>

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
                                        <asp:TextBox ID="TOIMPTextBox" CssClass="form-control inp IMPToTextBoxClass" placeholder="To: " runat="server"   ></asp:TextBox>
                                        
                                        <asp:TextBox ID="EmpIDIMPTextBox" CssClass="form-control inp IMPEmpIDTextBoxClass" placeholder="ID " runat="server" hidden></asp:TextBox>
                                        <asp:TextBox ID="DupEmpIDIMPTextBox" CssClass="form-control inp" placeholder="ID " runat="server" ClientIDMode="Static" Visible="false"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Mail ID: </label>
                                    <asp:TextBox ID="MailIdIMPTextBox" CssClass="form-control inp IMPmailidtextClass" placeholder="Mail ID"  runat="server"></asp:TextBox>
                                    <asp:TextBox ID="DupMailIdIMPTextBox" CssClass="form-control inp" placeholder="To: " runat="server" ClientIDMode="Static"  Visible="false"></asp:TextBox>
                                    <%--<input id="mailidtext" type="text" class="form-control mailidtextClass" placeholder="Mail ID" />--%>
                                </div>
                                <div class="form-group">
                                    <label>Subject</label>
                                     <asp:TextBox ID="SubjectIMPTextBox" CssClass="form-control inp" placeholder="Mail Subject"  runat="server"></asp:TextBox>
                                    
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
                        <asp:Button ID="ManagerButton" runat="server" CssClass="form-control apopbtn btn-primary" Text="Send" OnClick="ManagerButton_Click" style="display:none;" />
                       <input type="button" class="form-control apopbtn" style="width:100%; " value="Send" onclick="sendEmail()" />    <%-- OnClick="Submit_Click" OnClientClick="return submitBtn();"  style="display:none;" --%>
               <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
      
        <div class="modal fade" id="ModalViewFullDetails" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Idea Overview</h4>
                        <button type="button" id="span" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div>
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
                        </div>
                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
            </div>
        </div>
      
      
  
    
    
    
      <script>
       $(document).ready(function () {
           $("#preloader").hide();
        
       });
   </script>
     <script>
        function sendEmail()
        {
            $("#preloader").show();
             var someSession = '<%= Session["UserName"].ToString() %>';
             var empid= '<%= Session["UserId"].ToString() %>';
             var Designation= '<%= Session["Designation"].ToString() %>';
            var toaddress=document.getElementById('<% = MailIdIMPTextBox.ClientID %>').value;
            var toName=document.getElementById('<% = TOIMPTextBox.ClientID %>').value;
            var toId=document.getElementById('<% = EmpIDIMPTextBox.ClientID %>').value;
            var formData = new FormData();
            formData.append("toAddress", toaddress.split(" ").join(""));
            formData.append("toName",  toName.split(" ").join(""));
            formData.append("toId", toId.split(" ").join(""));
            formData.append("subject", "Idea Implementation -"+document.getElementById('<% = SubjectIMPTextBox.ClientID %>').value);
            formData.append("ideaID", document.getElementById('<% = IMPIdeaIdTextBox.ClientID %>').value);
            formData.append("content",document.getElementById('<% = ContectIMPTextBox.ClientID %>').value);
            formData.append("sender", someSession + ",<br/>" + empid + ",<br/>" + Designation);


            formData.append("resci", "Team");
            formData.append("type", "New");
            formData.append("subTitle", "Verification - HOD");
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
                        document.getElementById("<%=ManagerButton.ClientID %>").click();
                        console.log('button clicked');
                    },
                    error: function (err) {
                        
                         document.getElementById("<%=ManagerButton.ClientID %>").click();
                        console.log('button clicked');
                    }
                 });
           
        }
    </script>

<%--    <script src="../UI/Style/jquery.min.js"></script>--%>
    <script src="../UI/Style/jquery.min.js"></script>
    <script src="../UI/Style/bootstrap.min.js"></script>
   <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script> 


    <script>


         $(document).ready(function () {

             $("[id*=IMPDepaDLists]").change(function () {
                 console.log("mailtest1");
                 var st=$(this).children("option:selected").val().toString();
                 var res=st.split(',');
                 var txts = res[0];
                 
              console.log(txts);
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
                        console.log(ks)
                            var fs = "";
                            var feids = "";
                            $.ajax({
                                url: 'CommiteeEvalSend.aspx/MChecking',
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
                                    <%--document.getElementById('<%= EmployeeTextBox.ClientID %>').value = data.d.empname;
                                    document.getElementById('<%= DepartmentTextBox.ClientID %>').value = data.d.Department;
                                    document.getElementById('<%= DesignationTextBox.ClientID %>').value = data.d.Designation;
                            --%>
                                
                                    var fxs = data.d.Email;
                                    var fzs = data.d.HEmployeeID;
                                    console.log("test1"+fxs,"test2"+fzs)
                                    $(".IMPmailidtextClass").val(fxs);
                                    $(".IMPEmpIDTextBoxClass").val(fzs);

                            

                        },
                        error: function (err) {
                             console.log(err);
                            //tableInputKeyPress(e);
                        }
                            });
                        return false;
                   
                    }
                    
               }
            });
         });

    </script>
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
            console.log("callll");
            
            $("#ModalViewFullDetails").modal("show");
            console.log("aftcallll");
            
           // viewModal();
            //var text = $(this).text();
            var IdeaID = $(this).closest('.ideadiv').find('.IdeaIdclasstxt').val();
            // console.log(text);
            //console.log(IdeaID);
           
            var key = 0;
            var t = "";
            console.log("checking");
            if (key == 0) //Enter
            {
                console.log("IDea ID: " + IdeaID);




                 
        
                var table = $('.noticedt').DataTable();
                //table.column(3).search('^\\s'+IdeaID+'\\s*$', true, false).draw();

                table.column(3).search("^"+IdeaID+"$", true, false).draw();
               
                //if ($("[id*=tohodclick]") != click()) {
                //}
               


            $(".IMPIdeaIdClass").val(IdeaID);
            $(".IdeaIDRepTextBoxClass").val(IdeaID);
                $.ajax({
                    url: 'CommiteeEvalSend.aspx/Checking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{emp:' + JSON.stringify(IdeaID) + '}',
                    dataType: "json",

                    success: function (data) {
                        
                        $(".IdeaIDRepTextBoxClass").val(data.d.RIdeaID);
                        $(".ToRepTextBoxClass").val(data.d.REmpName);

                        $(".EmpIdRepTextBoxClass").val(data.d.REmpID);
                        $(".MailIDRepTextBoxClass").val(data.d.RMail);
                        $(".SubjectRepTextBoxClass").val(data.d.RSub);
                        $(".ConRepTextBoxClass").val(data.d.RCon);
                        
                        
                    },
                    error: function (err) {
                         console.log(err);
                       // tableInputKeyPress(e);
                    }

                });
                console.log("callupd");
                FullView(IdeaID);
                EnableResponse();
                console.log("aftcallupd");

                return false; //return true to submit, false to do nothing
            }



        });


        //function ConformPsIdeaID() {
                
        //    var lbIdeaID = $(".IdeaIdclasstxt").val();
        //}
    </script>
    <script>
        function EnableResponse() {
            var table = $('.noticedt').DataTable();
            var array = [];
            table.column(4, { search: 'applied' }).data().each(function (value, index) {
                array.push(value);
            });
            console.log("Dataaaaaaaa=", array);

            
            let totLenght = array.length;
            let filtered = []
            for (var i = 0; i < array.length; i++) {
                if (array[i]== "Accepted") {
                    filtered.push(array[i])
                }

            }

            if (filtered.length == totLenght) {
                document.getElementById("ImproButton").hidden = "";
            }
            else {
                document.getElementById("ImproButton").hidden = "hidden";
            }



        }
    </script>
     <script>

        $('.ideadivHOD').click(function () {
            console.log("callll");
            
            $("#ModalViewFullDetails").modal("show");
            console.log("aftcallll");
            
           // viewModal();
            //var text = $(this).text();
            var IdeaID = $(this).closest('.ideadivHOD').find('.IdeaIdclasstxtHOD').val();
            // console.log(text);
            //console.log(IdeaID);
           
            var key = 0;
            var t = "";
            console.log("checkingHOD");
            if (key == 0) //Enter
            {
                console.log("IDea ID: " + IdeaID);




                 
        
                var table = $('.noticedt').DataTable();
            // $('#btnSearch').click(function () {
            //table.destroy();
             //var tbl = $('.noticedt').DataTable({
             //    // "oSearch": { "sSearch": IdeaID }
                
             //});

                table.column(3).search(IdeaID).draw();
               
                console.log("checkingHODAFTFLT");
               


            $(".IMPIdeaIdClass").val(IdeaID);
            $(".IdeaIDRepTextBoxClass").val(IdeaID);
                $.ajax({
                    url: 'CommiteeEvalSend.aspx/Checking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{emp:' + JSON.stringify(IdeaID) + '}',
                    dataType: "json",

                    success: function (data) {
                        
                        $(".IdeaIDRepTextBoxClass").val(data.d.RIdeaID);
                        $(".ToRepTextBoxClass").val(data.d.REmpName);

                        $(".EmpIdRepTextBoxClass").val(data.d.REmpID);
                        $(".MailIDRepTextBoxClass").val(data.d.RMail);
                        $(".SubjectRepTextBoxClass").val(data.d.RSub);
                        $(".ConRepTextBoxClass").val(data.d.RCon);
                        
                        
                    },
                    error: function (err) {
                         console.log(err);
                       // tableInputKeyPress(e);
                    }

                });
                console.log("callupd");
                FullView(IdeaID);
                console.log("aftcallupd");

                return false; //return true to submit, false to do nothing
            }



        });


        //function ConformPsIdeaID() {
                
        //    var lbIdeaID = $(".IdeaIdclasstxt").val();
        //}
    </script>
     <script>
                                     
         function FullView(IdeaID)
         {
             console.log("ajsnwjd");
             console.log(IdeaID);
             console.log("jahbcb");
             $.ajax({
                 url: 'CommiteeEvalSend.aspx/GetDetail',
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
                     document.getElementById("DepTag").innerHTML = "Department  ";
                     document.getElementById("DesTag").innerHTML = "Designation  ";
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
                     console.log(err);
                     // tableInputKeyPress(e);
                 }
             });

             return false; //return true to submit, false to do nothing
         }



        

     </script>

    <%--<script>

        $(document).ready(function () {
            $('#SuggestionGridView').DataTable({

                "ordering": true,
                columnDefs: [
                {
                    "orderable": true,
                    "targets": 4,
                },
                {
                    orderable: false,
                    targets: "mt-head"
                }]

            });
        });
    </script>--%>



   <%-- <script>

        $('.ideadiv').click(function () {

            //var text = $(this).text();
            var IdeaID = $(this).closest('.ideadiv').find('.IdeaIdclasstxt').val();
            // console.log(text);
            //console.log(IdeaID);
           
            var key = 0;
            var t = "";
            console.log("checking");
            if (key == 0) //Enter
            {
                console.log("IDea ID: " + IdeaID);
                
                
                a = IdeaID;


                function ub(a) {
                    var b = a.oClasses
                      , c = a.sTableId
                      , d = a.oLanguage
                      , e = a.oPreviousSearch
                      , h = a.aanFeatures
                      , g = '<input type="search" class="' + b.sFilterInput + '"/>'
                      , k = d.sSearch;
                    k = k.match(/_INPUT_/) ? k.replace("_INPUT_", g) : k + g;
                    b = f("<div/>", {
                        id: h.f ? null : c + "_filter",
                        "class": b.sFilter
                    }).append(f("<label/>").append(k));
                    h = function () {
                        var b = this.value ? this.value : "";
                        b != e.sSearch && (ia(a, {
                            sSearch: b,
                            bRegex: e.bRegex,
                            bSmart: e.bSmart,
                            bCaseInsensitive: e.bCaseInsensitive
                        }),
                        a._iDisplayStart = 0,
                        S(a))
                    }
                    ;
                    g = null !== a.searchDelay ? a.searchDelay : "ssp" === D(a) ? 400 : 0;
                    var l = f("input", b).val(e.sSearch).attr("placeholder", d.sSearchPlaceholder).on("keyup.DT search.DT input.DT paste.DT cut.DT", g ? Sa(h, g) : h).on("keypress.DT", function (a) {
                        if (13 == a.keyCode)
                            return !1
                    }).attr("aria-controls", c);
                    f(a.nTable).on("search.dt.DT", function (b, c) {
                        if (a === c)
                            try {
                                l[0] !== y.activeElement && l.val(e.sSearch)
                            } catch (w) { }
                    });
                    return b[0]
                }
       
                //return false; 
                //return true to submit, false to do nothing
            }



        });


        //function ConformPsIdeaID() {
                
        //    var lbIdeaID = $(".IdeaIdclasstxt").val();
        //}
    </script>--%>

    

   


   

    <script type="text/javascript">

                                                  $(document).ready(function () {

                                                      $("[id*=acceptclick]").click(function () {
                                                         
                                                          document.getElementById("ImproButton").hidden = "";
                                                          document.getElementById("ReplyButton").hidden = "";
                                                          
                                                      })
                                                      $("[id*=tohodclick]").click(function () {
                                                         
                                                          document.getElementById("ImproButton").hidden = "hidden";
                                                          document.getElementById("ReplyButton").hidden = "hidden";
                                                          


                                                      })
                                                      $("[id*=rejectclick]").click(function () {
                                                          
                                                          document.getElementById("ImproButton").hidden = "hidden";
                                                          document.getElementById("ReplyButton").hidden = "";
                                                          
                                                          
                                                      })
                                                      
                                                  })
    </script>
    <%--<script>
        span.onclick = function () {
            modal.style.display = "none";
        }
    </script>--%>


</asp:Content>
