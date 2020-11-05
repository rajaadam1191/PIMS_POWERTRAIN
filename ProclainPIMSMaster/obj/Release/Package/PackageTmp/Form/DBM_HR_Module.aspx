<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DBM_HR_Module.aspx.cs" Inherits="ProclainPIMSMaster.Form.DBM_HR_Module" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 

      <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/jqueryui.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
    <script src="../UI/Script/jquery-ui.js"></script>
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
        #tblEmployees{
            background: linear-gradient(-68deg, #c4bac7, #eae6e6) !important;
            width:100%;
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
            .grossamtempbtn{
                
            color: #fff;
            background-color: #2196f3;
            border-color: #2196f3;
            }
            .grossimpamtbtn{
                
            color: #fff;
            background-color: #2196f3;
            border-color: #2196f3;
            }
        
    </style>
     
    <script>
        $("[id*=DepartmentDDListEmp]").change(function () {
            var table = $('.noticedtemp');
            var txts = $(this).children("option:selected").text().toString();

            //table.destroy();

            table.column(3).search(txts).draw();
        });
        $("[id*=DepartmentDDListImp]").change(function () {
            var table = $('.noticedtimp');
            var txts = $(this).children("option:selected").text().toString();

            //table.destroy();

            table.column(3).search(txts).draw();
        });
    </script>
    <script>
        $(document).ready(function () {
         
              var date1 = $('#<%= dtfromemp.ClientID %>').text();
                     var date2 = $('#<%= dttoemp.ClientID %>').text();

                     console.log(date1,date2);
                  /*   var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
                     var d = new Date(date1);
                     var fromdate = d.getFullYear() + "-" +months[d.getMonth()] + "-" + d.getDate();

                    var d2 = new Date(date2);
                    var todate = d2.getFullYear() + "-" + months[d2.getMonth()] + "-" + d2.getDate();
                    $('#minemp').val(fromdate);
                    $('#maxemp').val(todate);
                   */
                     $("#minemp").datepicker();
                     $("#maxemp").datepicker();
                     $("#maximp").datepicker();
                     $("#minimp").datepicker();

                  
                    
                    
            $('#<%= SuggestionGridViewEmp.ClientID %>').DataTable();
        });

        function mappselected()
        {
            $("#minemp").datepicker().datepicker("setDate", new Date(date1));
            $("#maxemp").datepicker().datepicker("setDate", new Date(date2));


            $("#maximp").datepicker().datepicker("setDate", new Date(date1));
            $("#minimp").datepicker().datepicker("setDate", new Date(date2));
        }
    </script>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="peer fxw-nw bdB cur-p jumbotron" >
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"><asp:LinkButton ID="refresh" runat="server" OnClick="refresh_Click"><U>Refresh</U></asp:LinkButton></div>
        </div>
        
         <div class="container mt-3" style="width:100%;height:100%;">

                  <ul class="nav nav-tabs" >
                        <li class="nav-item" id="User" style="width:50%; font-size:100%;  padding-left:2%;">
                            <a class="nav-link active" data-toggle="tab" href="#new" style="font-weight:bold ;text-align:center;">User  <%--&nbsp;<span id="count" class="badge badge-pill badge-primary" runat="server">0</span>--%></a>

                        </li>
                        <li class="nav-item" id="Implement" style="width:50%; font-size:100%;padding-right:2%; ">
                            <a class="nav-link" data-toggle="tab" href="#assigned" style="font-weight:bold ;text-align:center;">Implement <%--&nbsp;<span id="countass" class="badge badge-pill badge-primary" runat="server">0</span>--%></a>

                        </li>
                  </ul>
             
<div class="tab-content">
     <div id="new" class="container tab-pane active">
          <div class="row">        
               <div class=" col-md-12 ">
                    <div class="bd bgc-white p-20 cardintab reps">
                         <div class="layers">
                              <div class="table100 ver6 m-b-110 table-responsive">
                              <div class="form-control reps  " style="border: none!important;">
                                <%--<div class="row">
                                    <a data-toggle="modal" href="#myModal" class="form-control btn-primary"style="width:100%;text-align:center;">Get Report</a>
                                </div>--%>
                                 <div class="row">
                                     
                                   
                                    
                                    <div class="col-md-4">
                                        <div class="row">
                                        <div class="col-md-4">StartDate:</div>
                                        <div class="col-md-8"><input type="text"  style ="border-style: solid !important;border-color: darkgrey !important;" class="form-control" name="minemp" id="minemp"  />
                                            <asp:Label ID="dtfromemp"  runat="server"  hidden></asp:Label>
                                        </div>
                                        </div>
                                    <%--<asp:textbox runat="server" CssClass="form-control" name="min" id="minemp" placeholder="StartDate"  />--%>    
                                    </div>
                                    <div class="col-md-4">
                                        <div class="row">
                                        <div class="col-md-4">EndDate:</div>
                                        <div class="col-md-8"><input type="text" style ="border-style: solid !important;border-color: darkgrey !important;" class="form-control" name="maxemp" id="maxemp"  />
                                            <asp:Label ID="dttoemp"  runat="server" hidden></asp:Label>
                                        </div>
                                        </div>
                                        <%--<asp:textbox runat="server" CssClass="form-control" name="max" id="maxemp" placeholder="EndDate"  />--%>

                                    </div>
                                    <div class="col-md-4">
                                        <div class="row">
                                        <div class="col-md-6">
                                        <asp:Button ID="GetReportEmp" runat="server" Text="GetFilterReport" CssClass=" form-control reps btn btn-primary" style="width:100%;color:black;" OnClick="GetReportEmp_Click " hidden />
                                            <input type="button" value="GetFilterReport" class=" form-control reps btn btn-primary" style="width:100%;color:black;" onclick="setlebel()" />
                                        </div>
                                        <div class="col-md-6">
                
                                        <asp:DropDownList ID="empfilter" runat="server" OnSelectedIndexChanged="empfilter_SelectedIndexChanged" CssClass="form-control"
                                            AutoPostBack="true" AppendDataBoundItems="true">
                                            <asp:ListItem Text="--select--" ></asp:ListItem>
                                            <asp:ListItem Text="Approved" Value="Approved"></asp:ListItem>
                                            <asp:ListItem Text="NotApproved" Value="NotApproved"></asp:ListItem>
                                        </asp:DropDownList>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                  <script>
                                     
                                          function setlebel() {
                                              console.log('called')
                                              document.getElementById('<%= dtfromemp.ClientID %>').value = minemp.toString();
                                              document.getElementById('<%= dttoemp.ClientID %>').value = maxemp.toString();
                                              document.getElementById('<%= dtfromemp.ClientID %>').hidden = "";
                                              document.getElementById('<%= dttoemp.ClientID %>').hidden = "";
                                              document.getElementById("<%=GetReportEmp.ClientID %>").click();
                                          }
                                      
                                      
                                  </script>
 <asp:GridView ID="SuggestionGridViewEmp"  runat="server" AutoGenerateColumns="false"  class="table table-striped" >
      <Columns>
        <asp:TemplateField HeaderText="S.No" HeaderStyle-Width="20px" ItemStyle-Width="20px">
                    <ItemTemplate>
                    <asp:Label runat="server" ID="Label1" Text="<%#Container.DataItemIndex+1 %>" ToolTip="S.NO" Width="40px"></asp:Label>
                    </ItemTemplate>
          </asp:TemplateField>
            <asp:TemplateField HeaderText="IdeaID" >
                    <ItemTemplate>
                    <asp:Label runat="server" ID="Label2" Text="<%#Bind('IDeaID')%>" ToolTip="IdeaID" Width="60px"></asp:Label>
                    </ItemTemplate>
          </asp:TemplateField>

           <asp:TemplateField HeaderText="Employee" >
                    <ItemTemplate>
                    <asp:Label runat="server" ID="Label3" Text="<%#Bind('Employee')%>" ToolTip="Employee" Width="100px"></asp:Label>
                    </ItemTemplate>
          </asp:TemplateField>

           <asp:TemplateField HeaderText="Department">
                    <ItemTemplate>
                    <asp:Label runat="server" ID="Label4" Text="<%#Bind('DepName')%>" ToolTip="Department" Width="100px"></asp:Label>
                    </ItemTemplate>
          </asp:TemplateField>
          
          <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                    <asp:Label runat="server" ID="Label5" Text="<%#Bind('Date')%>" ToolTip="Date" Width="90px"></asp:Label>
                    </ItemTemplate>


          </asp:TemplateField>

           <asp:TemplateField HeaderText="Amount">
                    <ItemTemplate>
                    <asp:TextBox runat="server" ID="grossamtemp" Text="<%#Bind('Amount')%>" CssClass="form-control clsTxtToCalculateemp" onkeyup="onEnter()"></asp:TextBox> <!--return isNumber(event);-->
                    </ItemTemplate>
               

          </asp:TemplateField>

          <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                   <asp:Label runat="server" ID="LblEmpRemark" Text="<%#Bind('Remark')%>" ToolTip="Status" Width="140px"></asp:Label>
                    </ItemTemplate>
               

          </asp:TemplateField>

          
         <%-- <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                    <%--<asp:Label runat="server" ID="LblEmpRemark" Text="<%#Bind('Remark')%>" ToolTip="Status" Width="140px"></asp:Label>
                        <asp:DropDownList runat="server" ID="LblEmpRemark" Text="<%#Bind('Remark')%>" ToolTip="Status" Width="100px">
                                            <asp:ListItem>Approved</asp:ListItem>
                                            <asp:ListItem>NotApproved</asp:ListItem>
                                        </asp:DropDownList>
                    </ItemTemplate>


          </asp:TemplateField>--%>
         <%-- <asp:TemplateField >
                    <ItemTemplate>
                    <asp:Button ID="grossamtempbtn" runat="server" Text="Send to Finance" class="btn reps " style="width:100%;font-weight:bold;" OnClick="grossamtempbtn_Click"  /> <br />
                    </ItemTemplate>


          </asp:TemplateField>--%>

       </Columns>


    </asp:GridView>
                                                   
                                   <%--    
                                <asp:GridView ID="SuggestionGridView" CssClass="form-control noticedtemp" runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound" >
                                <Columns>
                                    <asp:BoundField DataField="S_No" HeaderText="S.No" />
                                    <asp:BoundField DataField="IDeaID" HeaderText="IdeaID" />
                                    <asp:BoundField DataField="Employee" HeaderText="Employee" />
                                   <asp:BoundField DataField="DepName" HeaderText="Department" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <%--<asp:BoundField DataField="Amount" HeaderText="Amount" />
                                     <asp:TemplateField HeaderText="Amount">
                                    <ItemTemplate>
                                    <asp:TextBox runat="server" ID="grossamtemp" Text="<%#Bind('Amount')%>" CssClass="form-control clsTxtToCalculateemp" onkeypress="return isNumber(event)"></asp:TextBox>
                                    </ItemTemplate>


                                     </asp:TemplateField>
                                    
                          
                                </Columns>

                            </asp:GridView>--%>
                              </div>
                              <div class="row" style="width:100%">
                                      <div class="col-md-3">
                                          <asp:Button ID="GetExcelReportEmp" runat="server" Text="GetExcelReport" CssClass=" form-control reps btn btn-primary" style="width:100%;color:black;" OnClick="GetExcelReportEmp_Click"  />
                                      </div>
                                      <div class="col-md-3">
                                          <%--<asp:FileUpload ID="FileUploadEmp" CssClass="form-control" runat="server" />--%>
                                      </div>
                                      <div class="col-md-3"><h2>GROSS TOTAL</h2></div>
                                      <div class="col-md-3" >
                                         <h1> <asp:label ID="grossempamt" runat="server"></asp:label></h1>
                                      </div>
                                  </div>
                              
                          </div>
                    
                        <div class="row"style="width:100%">
                      <div class="col-md-2"></div>
                        <div class="col-md-8" >
                       <asp:Button ID="grossamtempbtn" runat="server" Text="Send to Finance" class="btn reps " style="width:100%;font-size:large;font-weight:bold;" OnClick="grossamtempbtn_Click"  /> <br />
                       </div>
                        <div class="col-md-2"></div>
                       <%--<input type="button" runat="server" style="width:100%" class="btn btn-primary" value="Send" />--%>

                  </div>
                         </div>

                            <!-- ====================
                                    #Todo End
                                 ==================== -->
                   
              </div>
                  
                       
            </div>
        <script type="text/javascript">
            setInterval(function () {
                 $(".clsTxtToCalculateemp").each(function () {
                
                console.log('using timer');
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateemp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
               console.log(total,'aftern ca load');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossempamt.ClientID %>').html(total.toFixed(2));
            });

            }, 5000)
        $(document).ready(function () {
            //Iterate through each Textbox and add keyup event handler
            $(".clsTxtToCalculateemp").each(function () {
                
                console.log('ob load');
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateemp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
               console.log(total,'aftern ca load');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossempamt.ClientID %>').html(total.toFixed(2));
            });
        });
            function onEnter()
            {
                console.log('inside on enter');
                $(".clsTxtToCalculateemp").each(function () {
                
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateemp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
                    console.log(total,'aftern cao');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossempamt.ClientID %>').html(total.toFixed(2));
            });}
    </script>
        <%--<script >
        $(document).ready(function () {
            $.fn.dataTable.ext.search.push(
            function (settings, data, dataIndex) {
                var min = $("[id*=minemp]").datepicker("getDate");
                var max = $("[id*=maxemp]").datepicker("getDate");
                var startDate = new Date(data[4]);
                if (min == null && max == null) { return true; }
                if (min == null && startDate <= max) { return true; }
                if (max == null && startDate >= min) { return true; }
                if (startDate <= max && startDate >= min) { return true; }
                return false;
            }
            );


            $("[id*=minemp]").datepicker({ onSelect: function () { table.draw(); }, changeMonth: true, changeYear: true });
            $("[id*=maxemp]").datepicker({ onSelect: function () { table.draw(); }, changeMonth: true, changeYear: true });
            var table = $('.noticedtemp');

            // Event listener to the two range filtering inputs to redraw on input
            $('#minemp, #maxemp').change(function () {
                table.draw();
            });
        });
    </script>--%>
        </div>




<div id="assigned" class="container tab-pane ">
     <div class="row">        
          <div class=" col-md-12 ">
               <div class="bd bgc-white p-20 cardintab reps">
                    <div class="layers">
                         <div class="table100 ver6 m-b-110 table-responsive">
                              <div class="form-control reps  " style="border: none!important;">
                                <%--<div class="row">
                                    <a data-toggle="modal" href="#myModal" class="form-control btn-primary"style="width:100%;text-align:center;">Get Report</a>
                                </div>--%>
                               <div class="row" style="width:100%;">
                                   
                                    
                                    <div class="col-md-4">
                                        <div class="row">
                                        <div class="col-md-4">StartDate:</div>
                                        <div class="col-md-8"><input type="text" style ="border-style: solid !important;border-color: darkgrey !important;" class="form-control" name="minimp" id="minimp"  />
                                            <asp:Label ID="dtfromimp" Visible="false" runat="server"></asp:Label>
                                        </div>
                                        </div>
                                    <%--<asp:textbox runat="server" CssClass="form-control" name="min" id="minemp" placeholder="StartDate"  />--%>    
                                    </div>
                                    <div class="col-md-4">
                                        <div class="row">
                                        <div class="col-md-4">EndDate:</div>
                                        <div class="col-md-8"><input type="text" style ="border-style: solid !important;border-color: darkgrey !important;" class="form-control" name="maximp" id="maximp"  />
                                            <asp:Label ID="dttoimp" Visible="false" runat="server"></asp:Label>
                                        </div>
                                        </div>
                                        <%--<asp:textbox runat="server" CssClass="form-control" name="max" id="maxemp" placeholder="EndDate"  />--%>

                                    </div>
                                    <div class="col-md-4">
                                        <div class="row">
                                        <div class="col-md-6">
                                        <asp:Button ID="GetReportImp" runat="server" Text="GetFilterReport" CssClass="form-control reps btn btn-primary" style="width:100%;color:black" OnClick="GetReportImp_Click" />
                                         </div>
                                        <div class="col-md-6">
                                        <asp:DropDownList ID="impfilter" runat="server" OnSelectedIndexChanged="impfilter_SelectedIndexChanged" CssClass="form-control"
                                            AutoPostBack="true" AppendDataBoundItems="true">
                                            <asp:ListItem Text="--select--" ></asp:ListItem>
                                            <asp:ListItem Text="Approved" Value="Approved"></asp:ListItem>
                                            <asp:ListItem Text="NotApproved" Value="NotApproved"></asp:ListItem>
                                        </asp:DropDownList>
                                        </div>

                                        </div>
            
                                        
                                    </div>
                                </div>
                              </div> 
 <asp:GridView ID="SuggestionGridViewImp" runat="server" AutoGenerateColumns="false" class="table table-striped">
                              <Columns>
                                <asp:TemplateField HeaderText="S.No" HeaderStyle-Width="20px" ItemStyle-Width="20px">
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label1" Text="<%#Container.DataItemIndex+1 %>" ToolTip="S.NO" Width="35px"></asp:Label>
                                            </ItemTemplate>
                                  </asp:TemplateField>
                                    <asp:TemplateField HeaderText="IdeaID" >
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label2" Text="<%#Bind('IDeaID')%>" ToolTip="IdeaID" Width="50px"></asp:Label>
                                            </ItemTemplate>
                                  </asp:TemplateField>

                                   <asp:TemplateField HeaderText="Members" >
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label3" Text="<%#Bind('IMPL_Members')%>" ToolTip="Members" Width="120px"></asp:Label>
                                            </ItemTemplate>
                                  </asp:TemplateField>

                                   <asp:TemplateField HeaderText="Department">
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label4" Text="<%#Bind('DepName')%>" ToolTip="Department" Width="140px"></asp:Label>
                                            </ItemTemplate>
                                  </asp:TemplateField>
          
                                  <asp:TemplateField HeaderText="Date">
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label5" Text="<%#Bind('Date')%>" ToolTip="Date" Width="90px"></asp:Label>
                                            </ItemTemplate>


                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Grade">
                                            <ItemTemplate>
                                            <asp:Label runat="server" ID="Label6" Text="<%#Bind('BENGrade')%>" ToolTip="Grade" Width="50px"></asp:Label>
                                            </ItemTemplate>


                                  </asp:TemplateField>

                                   <asp:TemplateField HeaderText="Amount">
                                            <ItemTemplate>
                                            <asp:TextBox runat="server" ID="grossamtimp" Text="<%#Bind('Amount')%>" CssClass="form-control clsTxtToCalculateimp" onkeypress="return isNumber(event)"></asp:TextBox>
                                            </ItemTemplate>


                                  </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                             <asp:Label runat="server" ID="LblImpRemark" Text="<%#Bind('Remark')%>" ToolTip="Status" Width="140px"></asp:Label>
                                            </ItemTemplate>


                                  </asp:TemplateField>

              

                               
                                    
                                       
                                   <%-- <asp:TemplateField  >
                                    <ItemTemplate>
                                    <asp:Button ID="grossimpamtbtn" runat="server" Text="Send to Finance" class="btn reps " style="width:100%;font-weight:bold" OnClick="grossimpamtbtn_Click"  /> 
                                    </ItemTemplate>


          </asp:TemplateField>--%>
                               </Columns>
                                                     

                            </asp:GridView>

                             <%--
                            <asp:GridView ID="SuggestionGridViewImp" CssClass="form-control noticedtimp" runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound" >
                                <Columns>
                                     <asp:BoundField DataField="S_No" HeaderText="S.No" />
                                    <asp:BoundField DataField="IDeaID" HeaderText="IdeaID" />
                                    <asp:BoundField DataField="IMPL_Members" HeaderText="Members" />
                                   <asp:BoundField DataField="DepName" HeaderText="Department" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="BENGrade" HeaderText="Grade" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                   
                                    
                                    
                          
                                </Columns>

                            </asp:GridView>--%>
                        </div>
                        <div class="row" style="width:100%">
                            <div class="col-md-3">
                                <asp:Button ID="GetExcelReportImp" runat="server" Text="GetExcelReport" CssClass=" form-control reps btn btn-primary" style="width:100%;color:black;" OnClick="GetExcelReportImp_Click"  />
                            </div>
                            <div class="col-md-3">
                                <%--<asp:FileUpload ID="FileUploadImp" CssClass="form-control" runat="server" />--%>
                            </div>
                            <div class="col-md-3" ><h2>GROSS TOTAL</h2></div>
                            <div class="col-md-3" >
                                <h1><asp:label ID="grossimpamt" runat="server"></asp:label></h1>
                            </div>
                        </div>
                       
                        <%-- <table id="tblEmployees" style="" class="">
                        
                                    <tr>
                                        <th>S.No</th>
                                        <th>IdeaID</th>
                                        <th>Employee</th>
                                        <th>Department</th>
                                        <th>Date</th>
                                                    
                                        <th>Amount</th>
                                    </tr>
                        
                        
                                               
                                                
                                        <tr>
                                            <td>1</td>
                                            <td>212</td>
                                            <td>rajeeev</td>
                                            <td>Logistics</td>
                                            <td>10-07-2020</td>
                                                        
                                            <td>
                                                <asp:TextBox ID="amt" runat="server"  >100</asp:TextBox>
                                            </td>
                                        </tr>
                                                
                       
                            </table>

                        <div class="row">
                                        
                            <div class="col-md-4"></div>
                            <div class="col-md-4">Total cash</div>
                            <div class="col-md-4"><asp:TextBox ID="totamt" runat="server">100</asp:TextBox></div>
                        </div>--%>
                                  
                    </div>
                   <div class="row"style="width:100%">
             <div class="col-md-2"></div>
             <div class="col-md-8" >
                 <asp:Button ID="grossimpamtbtn" runat="server" Text="Send to Finance" class="btn reps " style="width:100%;font-size:large;font-weight:bold;" OnClick="grossimpamtbtn_Click" /> 
              
             </div>
             <div class="col-md-2"></div>
             <%-- <input type="button"  style="width:100%;" class=" form-control btn btn-primary" value="Send to Finance" OnClick="grossimpamtbtn_Click"  />--%>

         </div>
               </div>
               
          </div>
         
     </div>
    <script type="text/javascript">
            setInterval(function () {
                $(".clsTxtToCalculateimp").each(function () {
                
                console.log('using timer');
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateimp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
               console.log(total,'aftern ca load');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossimpamt.ClientID %>').html(total.toFixed(2));
            });

            }, 5000)
        $(document).ready(function () {
            //Iterate through each Textbox and add keyup event handler
            $(".clsTxtToCalculateimp").each(function () {
                
                console.log('ob load');
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateimp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
               console.log(total,'aftern ca load');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossimpamt.ClientID %>').html(total.toFixed(2));
            });
        });
            function onEnter()
            {
                console.log('inside on enter');
                $(".clsTxtToCalculateimp").each(function () {
                
                    //Initialize total to 0
                    var total = 0;
                    $(".clsTxtToCalculateimp").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
                    console.log(total,'aftern cao');
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   
                    $('#<%=grossimpamt.ClientID %>').html(total.toFixed(2));
            });}
    </script>
                      
                      <%--<script >


                          $(document).ready(function () {

                              $('#<%= minimp.ClientID %>').datepicker();
                              $('#<%= maximp.ClientID %>').datepicker();

                            
                        });
                    </script>--%>
                     
</div>
             </div>
         </div>
    </div>
                
     
                      
    
    
                            

    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script> 
                    
                
            <!-- =============================================
                 ### $App Screen Content Child Content End ###
                 ============================================= -->


    <%--<script>
        $(document).ready(function () {

            var table = $('.noticedt').DataTable();
           
            table.column(0).search(DepName).draw();
        });
    </script>--%>

</asp:Content>
