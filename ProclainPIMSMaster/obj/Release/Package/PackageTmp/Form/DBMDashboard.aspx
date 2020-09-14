<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DBMDashboard.aspx.cs" Inherits="ProclainPIMSMaster.Form.DBMDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
     
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
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
    <script>
        $(document).ready(function () {

            $('#<%= SuggestionGridView.ClientID %>').DataTable();
        });
    </script> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                    <div class="row gap-20 masonry pos-r">
                        <div class="masonry-sizer col-md-6"></div>
                        <div class="masonry-item w-100">
                            <div class="row gap-20">
                                <!-- ====================
                                        #Total Visits 
                                     ==================== -->
                                <div class="col-md-3 ">
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
                                <div class="col-md-3 ">
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

                                <!-- =======================
                                       #Total Page Views End 
                                      ======================= -->

                                <!-- ====================
                                        #Unique Visitor 
                                     ==================== -->
                                <div class="col-md-3">
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
                                <div class="col-md-3">
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
                         <div class="row gap-20 masonry pos-r">
                        
                  
                       </div>
                        <div class="masonry-item col-md-12 ">
                            <!-- ====================
                                         #Todo 
                                 ==================== -->
                            <div id="chartContainer" style="height: 300px; width: 90%;">
                                 <canvas id="myChart" style="height: 300px; width: 100%;"></canvas>

                            </div>
                            <div class="bd bgc-white p-20 cardintab reps">
                                <div class="layers">
                                    <div class="table100 ver6 m-b-110 table-responsive">
                            
                            
                            <asp:GridView ID="SuggestionGridView" CssClass="form-control noticedt reps" runat="server" Style="background-color: none!important; display: table; padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px; margin-bottom: 20px" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" CellSpacing="5" AutoGenerateColumns="false" OnRowDataBound="SuggestionGridView_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="S.No" />
                                    <asp:BoundField DataField="EmployeeName" HeaderText="Employee ID-Name" />
                                    <asp:BoundField DataField="DepName" HeaderText="Department" />
                                    <asp:BoundField DataField="IdeaId" HeaderText="Idea ID" />
                                    <asp:BoundField DataField="Subject" HeaderText="Idea Name" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
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
                            

                      
                    
                
            <!-- =============================================
                 ### $App Screen Content Child Content End ###
                 ============================================= -->




</asp:Content>
