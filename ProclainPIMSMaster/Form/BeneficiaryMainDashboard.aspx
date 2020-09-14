<%@ Page Title="" Language="C#" MasterPageFile="~/Approval.Master" AutoEventWireup="true" CodeBehind="BeneficiaryMainDashboard.aspx.cs" Inherits="ProclainPIMSMaster.Form.BeneficiaryMainDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/jqueryui.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
    <script src="../UI/Script/jquery-ui.js"></script>
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/Script/jquery.filtertable.min.js"></script>


    <style>
    div.cardin {
  width:100%;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.12), 0 6px 20px 0 rgba(0, 0, 0, 0.07); 
  
}
        div.cardintab {
            width:100%;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.07);
        }
  .repss {
    background: linear-gradient(-68deg, #fdf8ff, #f5f5f5) !important;

  }
  .reps {
    background: linear-gradient(-68deg, #dfdfdf, #f5f5f5) !important;
}

  table.dataTable tbody tr {
    background-color: #ffffff00!important;
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
        </style>
    <script type="text/javascript">
        $(document).ready(function () {

            console.log('in datatable')



            //ContentPlaceHolder1_SuggestionGridView

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
       
            // $('#btnSearch').click(function () {

            $("[id*=DepartmentDDList]").change(function () {
                var table = $('.noticedt').DataTable();
                var txts = $(this).children("option:selected").text().toString();
 
                //table.destroy();

                table.column(2).search(txts).draw();
              });
         
        });
    </script>
   <%-- <script>
       
    
    </script>--%>
        
    <script>
        $(document).ready(function () {

           $('#<%= SuggestionGridView.ClientID %>').DataTable();
        });
    </script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                 
                        <%--<div class="masonry-sizer col-md-6"></div>--%>
                      <div class="row">
                        
                            
                            <div class="col-md-6">
                            <div class="row gap-20">
                                <!-- ====================
                                        #Total Visits 
                                     ==================== -->
                                <div class="col-md-6 ">
                                    <div class="layers bd bgc-white p-20 cardin">
                                        <div class="layer w-100 mB-10">
                                            <h6 class="lh-1">New Suggestion</h6>
                                        </div>
                                        <div class="layer w-100">
                                            <div class="peers ai-sb fxw-nw">
                                                <div class="peer peer-greed">
                                                    <span id="sparklinedash"></span>
                                                </div>
                                                <div class="peer">
                                                    <span id="spanNew" runat="server" class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-green-50 c-green-500"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- =====================
                                        #Totall Visits End 
                                      ===================== -->

                                <!-- ====================
                                      #Total Page Views 
                                     ==================== -->
                                <div class="col-md-6 ">
                                    <div class="layers bd bgc-white p-20 cardin">
                                        <div class="layer w-100 mB-10">
                                            <h6 class="lh-1">Suggestion Rejected</h6>
                                        </div>
                                        <div class="layer w-100">
                                            <div class="peers ai-sb fxw-nw">
                                                <div class="peer peer-greed">
                                                    <span id="sparklinedash2"></span>
                                                </div>
                                                <div class="peer">
                                                    <span id="spanRejected" runat="server"  class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-red-50 c-red-500"> </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             </div>
                                <!-- =======================
                                       #Total Page Views End 
                                      ======================= -->

                                <!-- ====================
                                        #Unique Visitor 
                                     ==================== -->
                            
                            <div class="row gap-20">
                                <div class="col-md-6">
                                    <div class="layers bd bgc-white p-20 cardin">
                                        <div class="layer w-100 mB-10">
                                            <h6 class="lh-1">Approved Suggestion</h6>
                                        </div>
                                        <div class="layer w-100">
                                            <div class="peers ai-sb fxw-nw">
                                                <div class="peer peer-greed">
                                                    <span id="sparklinedash3"></span>
                                                </div>
                                                <div class="peer">
                                                    <span id="spanApproved" runat="server"  class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-purple-50 c-purple-500"> </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- =======================
                                        #Unique Visitor End 
                                     ======================= -->
                                <!-- ====================
                                             #Bounce Rate 
                                          ==================== -->
                                <div class="col-md-6">
                                    <div class="layers bd bgc-white p-20 cardin">
                                        <div class="layer w-100 mB-10">
                                            <h6 class="lh-1">Total Suggestion</h6>
                                        </div>
                                        <div class="layer w-100">
                                            <div class="peers ai-sb fxw-nw">
                                                <div class="peer peer-greed">
                                                    <span id="sparklinedash4"></span>
                                                </div>
                                                <div class="peer">
                                                    <span id="spanTotal" runat="server" class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-blue-50 c-blue-500"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- ====================
                                       #Bounce Rate End 
                                     ==================== -->
                            </div>
                        
                            </div>
                      
                            <div class="col-md-6">
                        
                          <script src="../UI/Style/canvasjs.min.js"></script>
                        <script src="../UI/Style/Chart.min.js"></script>
                        <link href="../UI/Style/Chart.min.css" rel="stylesheet" />
                        
                        <script type="text/javascript">

                            $(document).ready(function () {
                                $.ajax({
                                    url: 'DBMDashboard.aspx/getReport',
                                    method: 'POST',
                                    contentType: "application/json; charset=utf-8",
                                    async: true,
                                    dataFilter: function (data) { return data; },

                                    dataType: "json",

                                    success: function (data) {
                                        console.log(JSON.stringify(data.d))
                                     
                                        Barchart(data.d.Com, data.d.Hod, data.d.Imp, data.d.Hos, data.d.Ben, data.d.Fin);
                                    },
                                    error: function (err) {
                                       console.log(err);
                                        
                                    }
                                });
                            });

                            function Barchart(com, hod, imp, hos, ben, fin) {

                                console.log(com, hod, imp, hos, ben, fin);
                                var ctx = document.getElementById('myChart').getContext('2d');
                                var chart = new Chart(ctx, {
                                    // The type of chart we want to create
                                    type: 'bar',
                                   
                                    // The data for our dataset
                                    data: {
                                        labels: ['commitee', 'Manager', 'Implementation', 'HOD', 'Beneficiary', 'finance'],
                                        datasets: [{
                                            label: 'Suggestions status',
                                            //backgroundColor: 'rgb(255, 99, 132)',
                                            //borderColor: 'rgb(255, 99, 132)',
                                            //barPercentage: 2.5,
                                                  barThickness: 30,
                                                   //maxBarThickness: 8,
                                                   //minBarLength: 2,
                                                   click: onclick,
                                                   legendMarkerColor: "grey",
                                                   legendText: "Departments",
                                                   showInLegend: true,
                                                   data: [com, hod, imp, hos, ben, fin],
                                                   backgroundColor: ["grey", "skyblue", "green", 'rgb(255, 99, 132)', "Yellow", "violet"],
                                        }]
                                    },

                                    // Configuration options go here
                                    options: {}
                                });

                       


                               
                            }

                         
function onclick(tab) {
    console.log(tab.dataPoint, tab, tab.dataPoints, tab.dataPoint.x, tab.dataPoint.y, tab.dataPoint.label);
    //$('nav-tabs a[location.href="DBMSent.aspx/#' + e + '"]').tab('show');
   // response.redirect("Form/DBMSent.aspx/#'" + tab.dataPoint.y + "'");
    //
    var datas = [{ link: 'com', name: 'commitee' }, { link: 'hod', name: 'HOD' }, { link: 'imp', name: 'Implementation' }, { link: 'hos', name: 'HOS' }, { link: 'ben', name: 'Beneficiary' }, { link: 'fin', name: 'finance' }];
    var linkRedirect = '';
    var clicked = tab.dataPoint.label;
    for(var i=0;i<datas.length;i++)
    {
        console.log(datas[i].name, datas[i].link, clicked)
        if (datas[i].name == clicked)
        {
            linkRedirect = datas[i].link;
            console.log('true')
        }
    }
    
    window.location = "DBMSent.aspx?value=" + linkRedirect;
    //location.href = "Form/DBMSent.aspx/#" + e.dataPoints.y + "";
 //   Page.ClientScript.RegisterStartupScript(GetType(), "redirect","window.location.href='DBMSent.aspx/#" + e + "'");
}


</script>
                           <div id="chartContainer" style="height: 100%; width: 90%;">
                                <canvas id="myChart" style="height: 100%; width: 90%;"></canvas>
                           </div>
                        </div>
                          
                     </div>
           
                      <div class="row">
                            
                        
                        
                  
                       
                        <div class="masonry-item col-md-12 ">
                            <!-- ====================
                                         #Todo 
                                 ==================== -->
                            
                            <div class="bd bgc-white p-20 cardintab reps">
                                <div class="layers">
                                    <div class="table100 ver6 m-b-110 table-responsive">
                                        <div class="form-control reps  " style="border: none!important;">
                                <%--<div class="row">
                                    <a data-toggle="modal" href="#myModal" class="form-control btn-primary"style="width:100%;text-align:center;">Get Report</a>
                                </div>--%>
                                 <div class="row">
                                    <div class="col-md-3"></div>
                                    
                                    <div class="col-md-3"><asp:textbox runat="server" CssClass="form-control" name="min" id="min" placeholder="StartDate"  /></div>
                                    <div class="col-md-3"><asp:textbox runat="server" CssClass="form-control" name="max" id="max" placeholder="EndDate"  /></div>
                                    <div class="col-md-3">
                                         <asp:DropDownList  Width="100%" Id="DepartmentDDList" cssClass="js-example form-control bor"  runat="server" AutoPostBack="false" AppendDataBoundItems="True">  
                                            <asp:ListItem>--Select--</asp:ListItem>       
                                        </asp:DropDownList> 
                                        
                                    </div>
                                </div>
                            </div>
                                        
                                        <%--<input type="button" runat="server" class="form-control btn-primary" style="width:100%;" value="Get Report" onclick="openModal()" /> --%>
                             <%--<asp:Button id="getreport" runat="server" class="form-control btn btn-primary" data-toggle="modal" data-target="#myModal"    UseSubmitBehavior="false" Text="GetReport"></asp:Button>--%>
                            
                            <asp:GridView ID="SuggestionGridView" CssClass="form-control noticedt reps " runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="S.No" />
                                    <asp:BoundField DataField="EmployeeName" HeaderText="Employee ID-Name" />
                                    <asp:BoundField DataField="DepName" HeaderText="Department" />
                                    <asp:BoundField DataField="IdeaId" HeaderText="Idea ID" />
                                    <asp:BoundField DataField="Subject" HeaderText="Idea Name" />
                                     <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                     <asp:BoundField DataField="Description" HeaderText ="Description" />
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

                            <!-- ====================
                                    #Todo End
                                 ==================== -->

                        </div>
                  
                      
                              </div>  
                       
                           
       <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title">
                        Report</div>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                    
                </div>
                <div class="modal-body">
                    <div class="container mt-3">
                         <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                      <a class="nav-link active" data-toggle="tab" href="#dat">Date </a>
                                       
                                    </li>

                                    <li class="nav-item">
                                      <a class="nav-link" data-toggle="tab" href="#Department">Department </a>
                                    </li>

                                    <li class="nav-item">
                                      <a class="nav-link" data-toggle="tab" href="#employee">Employee </a>
                                             
                                    </li>
                                    
                                           
                         </ul>
             <div class="tab-content">
                        <div id="dat"  class="container tab-pane active">
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Textbox runat="server" placeholder="Report From.." TextMode="Date"></asp:Textbox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Textbox runat="server" placeholder="Report To.." TextMode="Date"></asp:Textbox>
                                </div>
                            </div>
                        </div>
                        
                        <div id="Department"  class="container tab-pane fade">
                            <div class="row" >
                                <%--<asp:DropDownList ID="DepartmentDDList" CssClass="js-example form-control bor" Width="100%"  runat="server" AutoPostBack="false" AppendDataBoundItems="True">  
                                    <asp:ListItem>--Select--</asp:ListItem>       
                                </asp:DropDownList>--%>
                            </div>
                        
                        </div>

                        <div id="employee"  class="container tab-pane fade">
                            <div class="row" >
                                <%--<asp:DropDownList ID="getempid" runat="server">  <!-- runat="server"-->
                                    <asp:ListItem>--Select--</asp:ListItem>
                                </asp:DropDownList>--%>
                                <select id="getempid" name="GetEmp">
                                    <option>--Select--</option>
                                    <%--<option value="ALL">--ALL--</option>--%>
                                </select>
                            </div>
                        </div>

              </div>
                </div>
                    </div>
                <div class="modal-footer">
                   <%--<asp:Button ID="filterReport" runat="server" Text="Filter" ForeColor="DodgerBlue" CssClass="form-control btn-primary" />--%>
                    <%--<input type="button" class="form-control" style="width:100%; " value="Filter" onclick="" />--%>
                    <button id="FilterReport" class="form-control btn-primary" style="width:100%" onclick="FilterReport_Click">Filter</button>
                </div>
            </div>
        </div>
    </div>

<%--<script type="text/javascript">
    //function openModal() {
    //    alert("success");
    //    $('[id*=myModal]').show();
    //}
   
    $(document).ready(function () {
        console("method called");
        $.fn.dataTable.ext.search.push(
           function (settings, data, dataIndex) {
              
               var otable = $('.noticedt').DataTable();
               $("[id*=DepartmentDDList]").change(function () {
                   //var seldept = data[2];
                   //otable.draw();
                   var txts = $(this).children("option:selected").text().toString();
                   console.log(txts)
                   this.innerHTML = fnCreateSelect(oTable.fnGetColumnData(2));
                        $('select', this).change(function () {
                         oTable.fnFilter($(this).val(), 2);
                          });
               });
           
    
           });
        
       
    });
    //    $("[id*=DepartmentDDList]").change(function () {

    //        var txts = $(this).children("option:selected").text().toString();
    //        console.log(txts)
    //        var selectDept = new selectDept(data[2]);

    //});
    //$("[id*=DepartmentDDList]"). onSelect: function () { table.draw(); };
        //var indexOfMyCol = 2;//you want it on the third column
        //$("Department").each(function (i) {
        //    if (i === indexOfMyCol) {
        //        this.innerHTML = fnCreateSelect(oTable.fnGetColumnData(i));
        //        $('select', this).change(function () {
        //            oTable.fnFilter($(this).val(), i);
        //        });
        //    }
        //});
   
</script>--%>
   <%-- <script>


         $(document).ready(function () {

             $("[id*=DepartmentDDList]").change(function () {
                 
                 var txts = $(this).children("option:selected").text().toString();
              console.log(txts);
                console.log("Checking :" + txts);
                if (txts != "--Select--") {
                    if (txts != "") {
                        //var textboxs2 = $(".IMPToTextBoxClass").val().toString();
                        ////if (textboxs2 == "") {
                        ////    var tts = textboxs2 + " " + txts;
                        ////}
                        ////else {
                        ////    console.log("Textbox" + txts);
                        ////    var tts = textboxs2 + ',' + " " + txts;

                        ////}
                        //$(".IMPToTextBoxClass").val(txts);
                        //console.log("TT:" + textboxs2 + 'textbox:' + txts);

                            var ks = txts.toString();
                            var fs = "";
                            var feids = "";
                            $.ajax({
                                url: 'BeneficiaryMainDashboard.aspx/MChecking',
                                method: 'post',
                                contentType: "application/json; charset=utf-8",
                                async: true,
                                dataFilter: function (data) { return data; },
                                data: '{emp:' + JSON.stringify(ks) + '}',
                                dataType: "json",


                                success: function (data) {
                                    console.log("data recived");
                                    output = data.d;
                                    console.log(data.d)
                                    console.table(data.d);
                                    $.each(output, function (key, value) {
                                        //$("#getempid").append($("<option></option>").val((value.empid).html(value.empname));
                                        $('#getempid').append('<option value="' + value.empid + '">' + value.empname + '</option>');
                                        console.log('empid', value.empid, 'empname', value.empname)
                                    });
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
         $('#getempid').change(function () {
             console.log('Selected Item: ' + this.options[this.selectedIndex].text, 'Selected value: ' + this.options[this.selectedIndex].value);
         });
    </script>--%>
    <script >
        $(document).ready(function () {
            $.fn.dataTable.ext.search.push(
            function (settings, data, dataIndex) {
                var min = $("[id*=min]").datepicker("getDate");
                var max = $("[id*=max]").datepicker("getDate");
                var startDate = new Date(data[5]);
                if (min == null && max == null) { return true; }
                if (min == null && startDate <= max) { return true; }
                if (max == null && startDate >= min) { return true; }
                if (startDate <= max && startDate >= min) { return true; }
                return false;
            }
            );


            $("[id*=min]").datepicker({ onSelect: function () { table.draw(); }, changeMonth: true, changeYear: true });
            $("[id*=max]").datepicker({ onSelect: function () { table.draw(); }, changeMonth: true, changeYear: true });
            var table = $('.noticedt').DataTable();

            // Event listener to the two range filtering inputs to redraw on input
            $('#min, #max').change(function () {
                table.draw();
            });
        });
    </script>


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


</asp:Content>

