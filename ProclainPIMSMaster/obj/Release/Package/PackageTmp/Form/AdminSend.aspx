<%@ Page Title="Committee Send" Language="C#" MasterPageFile="~/Committee.Master" CodeBehind="AdminSend.aspx.cs" Inherits="ProclainPIMSMaster.Form.AdminSend"  EnableEventValidation="false" %>
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
          <link href="../UI/Style/all.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="row">
        <div class="col-lg-4 form-control" style="padding-bottom: 50px;">
            <div class="leftside no-gutters">
             <div class="email-side-nav remain-height ov-h">
       
                        <div class="h-100 scrollable pos-r">
                            <div class="layer w-100 fxg-1 " style="padding-left: 15px;padding-right:10px">
                                <%-- <div class="">--%>

                                <div class="peer fxw-nw bdB cur-p" >

                                <asp:Repeater ID="MailRepeater" runat="server" OnItemCommand="MailRepeater_ItemCommand">
                                     
                                    <ItemTemplate>
                                               <div class="ideadiv" style="padding-left: 10px;">
                                              <%--onclick="ConformPsIdeaID(document.getElementsByName('lblImageNameTextBox').value)"--%>
                                                         <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server" Text='<%#Bind("IdeaId")%>' ClientIDMode="Static" hidden></asp:Label>             
                                            <div class="row">

                                                <div class="col-sm-10">
                                                  <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" Text='<%#Bind("IdeaId")%>' hidden></asp:TextBox>
                                                  
                                                    
                                                </div>
                                                

                                            </div>

                                            <div class="row">
                                                <div class="col-sm-12 form-control" style="border:none!important;">
                                                    <%# Eval("IdeaId") %>
                                                    <br />
                                                    <%# Eval("Subject") %>
                                                    <br />
                                                    <%# Eval("Type") %>
                                                    <br />
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
    
    <div class=" col-lg-8 reps" style="padding:15px">
         <div class="rightside no-gutters" >
              <div class="email-wrapper row remain-height ov-h" style="    background-color: #fff0!important;">
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
                                                        <mark  id="IdIdTag" class="fnt" style="font-size: 20px;"></mark><mark id="IdeaIdTag" style="font-size: 20px; border: 0px solid; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px;"></mark>
                                                        <lable ID="SubjectTaglabel"  ></lable>
                                                        <mark class="form-control" id="SubjectTag" style="font-size: 20px; border: 0px solid; padding-bottom: 0px; padding-left: 0px; padding-right: 5px; padding-top: 2px;"></mark>
                                                        <h6 id="TimeTag"></h6>
                                                        
                                                        <mark id="fromTag" class="fnt"></mark><mark id="EmployeeNameTag"></mark>
                                                        <br />
                                                        <mark id="EIDTag" class="fnt"></mark><mark id="EmployeeIDTag"></mark>
                                                        <br />
                                                        <mark  id="DepTag" class="fnt"></mark><mark id="DepartmentTag"></mark>
                                                        <br />
                                                        <mark  id="DesTag" class="fnt"></mark><mark  id="DesignationTag"></mark>
                                                        <br />
                                                        <hr />
                                                        <mark  id="CatTag" class="fnt"></mark><mark  id="CategoryTag"></mark>
                                                        <hr />
                                                        <div style="padding-left: 10px!important; padding-right: 20px!important; padding-top: 10px!important; padding-bottom: 10px!important">
                                                        
                                                        <asp:TextBox ID="CEideaidTextBox" CssClass="ideaidclass" runat="server" hidden></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <mark id="BefTag" class="fnt"></mark>
                                                        <p  id="BeforeTag" style="padding-left: 10px"></p>
                                                        <br />
                                                        <mark  id="AftTag" class="fnt"></mark>
                                                        <p  id="AfterTag" style="padding-left: 10px"></p>
                                                        <br />
                                                        <mark id="BenTag" class="fnt"></mark>
                                                        <p id="BenefitsTag" style="padding-left: 10px"></p>
                                                            </div>
                                                        <div class="peer">
                                                            <a id="Image1"></a>
                                                            
                                                        </div>


                                                    </div>



                                                        </div>
                                                </ContentTemplate>


                                            </asp:UpdatePanel>
                                             
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
             
        </div>
         
    </div>
     
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
                                    <label>Reason For Rejection</label>
                                    <asp:TextBox ID="ReasonTextBox" CssClass="form-control inp"  runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                    
                                </div>
                                    

                                </div>
                                <div class="form-group">
                                    <label>Remark BY Team</label>
                                    <asp:TextBox ID="RemarkByTeamTextBox" CssClass="form-control inp"  runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                    
                                </div>
                                

                                
                            </form>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="OwnTeamPopButton" runat="server" CssClass="form-control apopbtn btn-primary" Text="Send" OnClick="OwnTeamPopButton_Click"/>
                     
                    </div>
                </div>
            </div>
        </div>
    </div>
     
       <div class="container">
        <div class="modal fade" id="myModalApprove" role="dialog">
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
                                    <label>Remark BY Team</label>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control inp"  runat="server" placeholder="Remark BY Team" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                    <%--<textarea name="composetextarea" runat="server" class="form-control" placeholder="Remark BY Team" rows="10"></textarea>--%>
                                </div>

                                </div>

                                
                            </form>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="Button2" runat="server" CssClass="form-control apopbtn btn-primary" Text="Send" OnClick="OwnTeamPopButton_Click"/>
                        <%--OnClick="TeamPopButton_Click"--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../UI/Style/jquery.min.js"></script>
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
                    url: 'AdminSend.aspx/MailContent',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data; },
                    data: '{idea:' + IdeaID + '}',
                    dataType: "json",

                    success: function (data) {
                        console.log("test" + data.d.fromTag);
                        
                        document.getElementById("SfromTag").innerHTML = "From : ";
                        document.getElementById("SEIDTag").innerHTML = "TO : ";
                        document.getElementById("SDepTag").innerHTML = "Department : ";
                        document.getElementById("SSubjectTag").innerHTML = data.d.SSubject; 
                        document.getElementById("STimeTag").innerHTML = data.d.SDate;
                        document.getElementById("fromTag").innerHTML = "From : ";
                        document.getElementById("EIDTag").innerHTML = "Employee ID : ";
                        document.getElementById("DepTag").innerHTML = "Department : ";
                        document.getElementById("DesTag").innerHTML = "Designaton : ";
                        document.getElementById("CatTag").innerHTML = "Category : ";
                        document.getElementById("IdIdTag").innerHTML = "Idea ID : ";
                        document.getElementById("BefTag").innerHTML = "Before : ";
                        document.getElementById("AftTag").innerHTML = "After : ";
                        document.getElementById("BenTag").innerHTML = "Benefits : ";

                        document.getElementById("SContent").innerHTML = "     ---  Suggestion Description  --- ";
                        document.getElementById("SContentTag").innerHTML = data.d.SContent;

                        document.getElementById("SubjectTag").innerHTML = data.d.subject;
                        document.getElementById("SMail").innerHTML = "MailID : ";
                        document.getElementById("SMailTag").innerHTML = data.d.MailID;
                        document.getElementById("SEmployeeNameTag").innerHTML = data.d.Sempname;
                        document.getElementById("SEmployeeIDTag").innerHTML = data.d.Sempid;
                        document.getElementById("SDepartmentTag").innerHTML = data.d.SDepartment;

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

                        $(".ideaidclass").val(data.d.IdeaIdTag);
                        $(".IdeaIDClass").val(data.d.IdeaIdTag);
                        $(".IMPIdeaIdClass").val(data.d.IdeaIdTag);


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

</asp:Content>
