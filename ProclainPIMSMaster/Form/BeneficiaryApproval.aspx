<%@ Page Title="" Language="C#" MasterPageFile="~/BeneficiaryApproval.Master" AutoEventWireup="true" CodeBehind="BeneficiaryApproval.aspx.cs" Inherits="ProclainPIMSMaster.Form.BeneficiaryApproval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link href="/UI/Web-Fonts/css/all.css" rel="stylesheet" />
    
     <link href="/UI/Style/css.css" rel="stylesheet" />
    
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
                  
                  "lengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]]
              });
          });
    </script>

    <script type="text/javascript">
        function MoveNext(next_ctrl, _key) {

            if (_key == 13) { 
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
                                    <li class="nav-item" id="newclick">
                                      <a class="nav-link active" data-toggle="tab" href="#new">New &nbsp;<span id="count"   class="badge badge-pill badge-primary" runat="server">0</span></a>
                                    </li>
                                    <li class="nav-item" id="completeclick">
                                      <a class="nav-link" data-toggle="tab" href="#complete">Complete &nbsp;<span id="countcom"   class="badge badge-pill badge-primary" runat="server">0</span></a>
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
                                                <div class="col-sm-12 form-control" style="border:none!important;">
                                                    <%# Eval("SendFrom") %>
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

                                                    <div id="complete" class="container tab-pane fade">
                                <asp:Repeater ID="MailRepeatercomplete" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                  
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
                            <asp:GridView ID="SuggestionGridView" CssClass="form-control noticedt" runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound">
                                <Columns>
                                    
                                    <asp:BoundField DataField="New" HeaderText="Employee ID" />
                                    <asp:BoundField DataField="NewFrom" HeaderText="Name" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="IDeaID" HeaderText="IDea ID" />
                                    <asp:BoundField DataField="Type" HeaderText="Status" />
                                    <asp:BoundField DataField="HOSGrade" HeaderText="HOS-Grade" />
                                    <asp:BoundField DataField="HOSBM" HeaderText="HOS_Rating" />
                                    <asp:BoundField DataField="BENGrade" HeaderText="BEN-Grade" />
                                    <asp:BoundField DataField="BENBM" HeaderText="BEN-Rating" />
                                    
                                    
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
             <input id="ImproButton" class="form-control btns ImproButtonCls" style="height:50%;width:100%;color:white" type="button" value="Response" data-toggle="modal" data-target="#myModalImpIdeaForm"/>
                 
             <%--</div>
             <div class="row">--%>
                 <input id="ReplyButton" class="form-control btns" style="height:50%;width:100%;color:white" type="button" value="Alter" data-toggle="modal" data-target="#fullHeightModalRight" hidden/>

             <%--</div>--%>
             
                 
             </div>
            </div>
    </div>
    
 
  <div class="container">
        <div class="modal fade" id="fullHeightModalRight" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Beneficiary Approval</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">


                            <div class="email-compose-body" >
                                <h4 class="c-grey-900 mB-20">Alter To</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IdeaIDRepTextBox" CssClass="form-control IdeaIDRepTextBoxClass" style="background:none" Enabled="false" EnableTheming="false" placeholder="Idea ID" runat="server"></asp:TextBox>

                                    </div>
                                    

                                </div>
                               
                                <div class="form-group">
                                    <label>TO: </label>
                                    <asp:TextBox ID="ToRepTextBox" CssClass="form-control ToRepTextBoxClass" placeholder="Employee Name" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>EmpID: </label>
                                    <asp:TextBox ID="EmpIdRepTextBox" CssClass="form-control EmpIdRepTextBoxClass" placeholder="Employee ID" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                                  <div class="form-group">
                                    <label>MailID: </label>
                                    <asp:TextBox ID="MailIDRepTextBox" CssClass="form-control MailIDRepTextBoxClass" placeholder="Mail ID" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>Subject: </label>
                                    <asp:TextBox ID="SubjectRepTextBox" CssClass="form-control SubjectRepTextBoxClass" placeholder="Subject" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>Discription: </label>
                                    <asp:TextBox ID="ConRepTextBox" CssClass="form-control ConRepTextBoxClass" placeholder="Mail Content" style="background:none" Enabled="false" EnableTheming="false" runat="server" TextMode="MultiLine" Rows="6"></asp:TextBox>
                                </div>
                                
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <%--<asp:Button ID="Button1" runat="server" CssClass="form-control btn btn-primary" Text="Send" OnClick="CommitteePopButton_Click"  OnClientClick="dataView()"/>--%>
                        <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
       <!-- ==============Hidden content of model===============-->
     <div class="container">
        <div class="modal fade" id="myModalImpIdeaForm2" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">

                     <!-- ==============Hidden content of below model - =========9-5-2020 ======-->
                             <div class="form-group" style="visibility:hidden">
                                    <div class="peers">
                                        <label>Employee: </label>
                                        <asp:TextBox ID="TOIMPTextBox" CssClass="form-control inp IMPToTextBoxClass" placeholder="To: " runat="server"></asp:TextBox>
                                        
                                        <asp:TextBox ID="EmpIDIMPTextBox" CssClass="form-control inp IMPEmpIDTextBoxClass" placeholder="ID " runat="server" ></asp:TextBox>
                                         
                                    </div>
                                </div>
                                <div class="form-group" style="visibility:hidden">
                                    <label>Mail ID: </label>
                                    <asp:TextBox ID="MailIdIMPTextBox" CssClass="form-control inp IMPmailidtextClass" placeholder="Mail ID"  runat="server"></asp:TextBox>
                                               </div>

                </div>
            </div>
            </div>
         </div>
    <!-- =============================-->

       <div class="container">
        <div class="modal fade" id="myModalImpIdeaForm" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Send Finance Department</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        <div class="container">


                            <div class="email-compose-body">
                                <h4 class="c-grey-900 mB-20">Send Idea</h4>
                                <div class="send-header">
                                    <div class="form-group">
                                        <label>Idea Id</label>

                                        <asp:TextBox ID="IMPIdeaIdTextBox" CssClass="form-control inp IMPIdeaIdClass" placeholder="Idea ID" runat="server"></asp:TextBox>
 <!--onkeydown="return MoveNext('HodNameTextBox',event.keyCode);" -->

                                    </div>

                                </div>
                                                              
                              
                                <div class="form-group">
                                    <label>Finance Member</label>
                                     <asp:TextBox ID="finance" CssClass="form-control inp" placeholder="Finance Team Member Name Here.." value="Rajesh"  runat="server"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Finance MemberID</label>
                                     <asp:TextBox ID="financeID" CssClass="form-control inp" placeholder="ID Here.." value="PI-235"  runat="server"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Finance Member E-MailID</label>
                                     <asp:TextBox ID="financeMailID" CssClass="form-control inp" placeholder="MailID Here.." value="rajesh.arumugam@poclain.com"  runat="server"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Idea Member</label>
                                     <asp:TextBox ID="ideamember" CssClass="form-control inp ideamember" placeholder="Idea Member Name Here.."   runat="server"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Idea Member Amount</label>
                                     <asp:TextBox ID="ideamemberamount" CssClass="form-control inp" placeholder="Idea Member Amount Here.." value="100"  runat="server"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Implement Member</label>
                                     <asp:TextBox ID="implementmember" CssClass="form-control inp implementmember" placeholder="Implement Member Name Here.."   runat="server"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Implement Member Amount</label>
                                     <asp:TextBox ID="implementmemberamount" CssClass="form-control inp implementmemberamount" placeholder="Implement Member Amount Here.."   runat="server"></asp:TextBox>
                                    
                                </div>

                                <div class="form-group">
                                    <label>Content</label>
                                     <asp:TextBox ID="SubjectIMPTextBox" CssClass="form-control inp" placeholder="Mail Content"  runat="server"></asp:TextBox>
                                    
                                </div>
                                 
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="ManagerButton" runat="server" CssClass="form-control apopbtn btn-primary" Text="Send"  style="display:none;"  OnClick="ManagerButton_Click" />
                   
                        <%--OnClick="TeamPopButton_Click"   OnClientClick = "GetTableValues()"--%>
                         <input type="button" class="form-control apopbtn btn-primary" style="width:100%; " value="Send" onclick="sendEmail()" /> 
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--
           END OF MODALS COMMITEE EVALUATION
    --%>

      <script src="../UI/Style/jquery.min.js"></script>
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
         
            var formData = new FormData();
            formData.append("toAddress",  document.getElementById("<%=financeMailID.ClientID %>").value);
            formData.append("toName", document.getElementById("<%=finance.ClientID %>").value);
            formData.append("toId",  document.getElementById("<%=financeID.ClientID %>").value);
            formData.append("subject", "Final Payment process - From DBA -" + document.getElementById("<%=IMPIdeaIdTextBox.ClientID %>").value); 
            formData.append("ideaID", document.getElementById("<%=IMPIdeaIdTextBox.ClientID %>").value);
            formData.append("content", document.getElementById("<%=SubjectIMPTextBox.ClientID %>").value );
            formData.append("sender", someSession + ",<br/>" + empid + ",<br/>" + Designation);


            formData.append("resci", "Team");
            formData.append("type", "New");
            formData.append("subTitle", "Final Payment process - From DBA ");

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
    </script><script>


         //$(document).ready(function () {
             
             $("[id *= ImproButton]").click(function () {
                 

                 
                   
                    
                    
               
            //});
             });
             function FillModelData(txts)
             {
 
                            var ks = txts.toString();
                            var fs = "";
                            var feids = "";
                            $.ajax({
                                url: 'BeneficiaryApproval.aspx/MChecking',
                                method: 'post',
                                contentType: "application/json; charset=utf-8",
                                async: true,
                                dataFilter: function (data) { return data; },
                                data: '{emp:' + ks + '}',
                                dataType: "json",

                                success: function (data) {
                                    console.log("test1HEID" + data.d.HEmployeeID);
                                    console.log("test1HEN" + data.d.HEmployeeName);
                                    console.log("testHMID" + data.d.Email);
                                    var fxs = "";
                                    var fzs = "";
                                    fs = data.d.Email;
                                    feids = data.d.HEmployeeID;
                                   /*   $(".IMPEmpIDTextBoxClass").val().toString();
                                     $(".IMPmailidtextClass").val().toString();
                                    if (zs == "") {
                                        fxs = zs + " " + fs;
                                        fzs = EIDs + "" + feids;
                                    }
                                    else {
                                        console.log("Textbox" + txts);
                                        fxs = zs + ',' + " " + fs;
                                        fzs = EIDs + ',' + "" + feids;
                                    }*/
                                    
                                    $(".IMPToTextBoxClass").val(data.d.HEmployeeName);
                                    $(".IMPmailidtextClass").val(data.d.Email);
                                    $(".IMPEmpIDTextBoxClass").val(data.d.HEmployeeID);
                        },
                                error: function (err) {
                                    alert('Error : ' + data); console.log(err);
                                    //tableInputKeyPress(e);
                                }
                            });
                        return false;
             }



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




         
                var table = $('.noticedt').DataTable();
            // $('#btnSearch').click(function () {
            table.destroy();
            var tbl = $('.noticedt').DataTable({
              //  "oSearch": { "sSearch": IdeaID }
            });
            table.column(3).search(IdeaID).draw();
            $(".IMPIdeaIdClass").val(IdeaID);
            //FillModelData(IdeaID);
            console.log("method called by in above")
                $.ajax({
                    url: 'BeneficiaryApproval.aspx/Checking',
                    method: 'POST',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{IdeaID:' +IdeaID+ '}',
                    dataType: "json",

                    success: function (data) {
                        console.log(data.d);
                    //    $(".IdeaIDRepTextBoxClass").val(data.d.RIdeaID);
                     //   $(".ToRepTextBoxClass").val(data.d.REmpName);
                     
                        $(".ideamember").val(data.d.REmpID);
                        $(".implementmemberamount").val(data.d.BefTag);
                        $(".implementmember").val(data.d.RSub);
                        console("method called by in")
                  //      $(".ConRepTextBoxClass").val(data.d.RCon);
                      //  FillModelData(IdeaID);

                   //     $(".IMPToTextBoxClass").val(data.d.REmpName);
                   //     $(".IMPEmpIDTextBoxClass").val(data.d.REmpID);
                   //     $(".IMPmailidtextClass").val(data.d.RMail);

                    },
                    error: function (err) {
                         console.log(err);
                       
                    }
                });
                
                return false; //return true to submit, false to do nothing
            }
            


        });
 
    </script>

    <script type="text/javascript">

                                                  $(document).ready(function () {

                                                      $("[id*=newclick]").click(function () {
                                                         
                                                          document.getElementById("ImproButton").hidden = "";
                                                          
                                                      })
                                                      $("[id*=completeclick]").click(function () {
                                                          
                                                          document.getElementById("ImproButton").hidden = "hidden";
                                                          
                                                          
                                                      })
                                                     
                                                  })
    </script>

     
</asp:Content>
