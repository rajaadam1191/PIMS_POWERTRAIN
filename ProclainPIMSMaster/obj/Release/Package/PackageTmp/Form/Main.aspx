<%@ Page Title="" Language="C#" MasterPageFile="~/Employeepage.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ProclainPIMSMaster.Form.Main" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
     
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <link href="../UI/DataTable/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>

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
            overflow:scroll !important;
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

       

        .btns {
            background: linear-gradient(-68deg, #cec9cc, #785b5b) !important;
            
        }

        .btn-hight {
            width: 40px !important;
            height: 40px !important;
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
        <script type="text/javascript">
        $(document).ready(function () {

            console.log('in datatable')



            //ContentPlaceHolder1_SuggestionGridView

            $('.noticedt').DataTable({
                dom: 'flrtiBp',
                scrollY:        '50vh',
                scrollCollapse: true,
                paging:         false,
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
                "lengthMenu": [[ 10, 25, -1], [ 10, 25, "All"]],

                
            });
           
            
        });
    </script>
    <script>
        $(document).ready(function () {

            $('#<%= SuggestionGridView.ClientID %>').DataTable();
        });
    </script> 
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h1 style="background-color:#006a9c!important;color:whitesmoke"><center>PIMS - POCLAIN IDEA MANAGEMENT SYSTEM</center></h1>
        </div>
    </div>
   
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
                                            <h6 class="lh-1">Total Suggestion</h6>
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
                                            <h6 class="lh-1">Accepted</h6>
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
                                            <h6 class="lh-1">Rejected</h6>
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
                                            <h6 class="lh-1">Implemented</h6>
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
                       
                       
                        <div class="masonry-item col-md-12 ">
                            <!-- ====================
                                         #Todo 
                                 ==================== -->
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
                                    <asp:BoundField DataField="Category" HeaderText="Category" />
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
                                   <%-- <div class="layer w-100 mB-10 ">
                                        <h6 class="lh-1">Todo List</h6>
                                    </div>
                                    <div class="layer w-100">
                                        <ul class="list-task list-group" data-role="tasklist">
                                            <li class="list-group-item bdw-0" data-role="task">
                                                <div class="checkbox checkbox-circle checkbox-info peers ai-c">
                                                    <input type="checkbox" id="inputCall1" name="inputCheckboxesCall" class="peer">
                                                    <label for="inputCall1" class="peers peer-greed js-sb ai-c">
                                                            <span class="peer peer-greed">Call John for Dinner</span>
                                                        </label>
                                                </div>
                                            </li>
                                            <li class="list-group-item bdw-0" data-role="task">
                                                <div class="checkbox checkbox-circle checkbox-info peers ai-c">
                                                    <input type="checkbox" id="inputCall2" name="inputCheckboxesCall" class="peer">
                                                    <label for="inputCall2" class="peers peer-greed js-sb ai-c">
                                                            <span class="peer peer-greed">Book Boss Flight</span>
                                                            <span class="peer">
                                                                <span class="badge badge-pill fl-r badge-success lh-0 p-10">2 Days</span>
                                                            </span>
                                                        </label>
                                                </div>
                                            </li>
                                            <li class="list-group-item bdw-0" data-role="task">
                                                <div class="checkbox checkbox-circle checkbox-info peers ai-c">
                                                    <input type="checkbox" id="inputCall3" name="inputCheckboxesCall" class="peer">
                                                    <label for="inputCall3" class="peers peer-greed js-sb ai-c">
                                                            <span class="peer peer-greed">Hit the Gym</span>
                                                            <span class="peer">
                                                                <span class="badge badge-pill fl-r badge-danger lh-0 p-10">3 Minutes</span>
                                                            </span>
                                                        </label>
                                                </div>
                                            </li>
                                            <li class="list-group-item bdw-0" data-role="task">
                                                <div class="checkbox checkbox-circle checkbox-info peers ai-c">
                                                    <input type="checkbox" id="inputCall4" name="inputCheckboxesCall" class="peer">
                                                    <label for="inputCall4" class="peers peer-greed js-sb ai-c">
                                                            <span class="peer peer-greed">Give Purchase Report</span>
                                                            <span class="peer">
                                                                <span class="badge badge-pill fl-r badge-warning lh-0 p-10">not important</span>
                                                            </span>
                                                        </label>
                                                </div>
                                            </li>
                                            <li class="list-group-item bdw-0" data-role="task">
                                                <div class="checkbox checkbox-circle checkbox-info peers ai-c">
                                                    <input type="checkbox" id="inputCall5" name="inputCheckboxesCall" class="peer">
                                                    <label for="inputCall5" class="peers peer-greed js-sb ai-c">
                                                            <span class="peer peer-greed">Watch Game of Thrones Episode</span>
                                                            <span class="peer">
                                                                <span class="badge badge-pill fl-r badge-info lh-0 p-10">Tomorrow</span>
                                                            </span>
                                                        </label>
                                                </div>
                                            </li>
                                            <li class="list-group-item bdw-0" data-role="task">
                                                <div class="checkbox checkbox-circle checkbox-info peers ai-c">
                                                    <input type="checkbox" id="inputCall6" name="inputCheckboxesCall" class="peer">
                                                    <label for="inputCall6" class="peers peer-greed js-sb ai-c">
                                                            <span class="peer peer-greed">Give Purchase report</span>
                                                            <span class="peer">
                                                                <span class="badge badge-pill fl-r badge-success lh-0 p-10">Done</span>
                                                            </span>
                                                        </label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>--%>
                                </div>
                            </div>

                            <!-- ====================
                                    #Todo End
                                 ==================== -->

                        </div>
                  
                        <%--<div class="masonry-item col-md-6">
                            <!-- ====================
                                       #Weather 
                                 ==================== -->
                            <div class="bd bgc-white p-20">
                                <div class="layers">
                                    <!-- ====================
                                             Widget Title
                                         ==================== -->
                                    <div class="layer w-100 mB-20">
                                        <h6 class="lh-1">Weather</h6>
                                    </div>
                                    <!-- ====================
                                             Today Weather 
                                         ====================-->
                                    <div class="layer w-100">
                                        <div class="peers ai-c jc-sb fxw-nw">
                                            <div class="peer peer-greed">
                                                <div class="layers">
                                                    <!-- ====================
                                                            Temprature 
                                                         ====================-->
                                                    <div class="layer w-100">
                                                        <div class="peers fxw-nw ai-c">
                                                            <div class="peer mR-20">

                                                                <h3>
                                                                    28<sup>°F</sup>
                                                                </h3>
                                                            </div>
                                                            <div class="peer">
                                                                <canvas class="sleet" width="44" height="44"></canvas>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- ====================
                                                            Condition
                                                         ==================== -->
                                                    <div class="layer w-100">
                                                        <span class="fw-600 c-grey-600">Partly Clouds</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="peer">
                                                <div class="layers ai-fe">
                                                    <div class="layer">
                                                        <h5 class="mB-5">Monday</h5>
                                                    </div>
                                                    <div class="layer">
                                                        <span class="fw-600 c-grey-600">Nov, 22 2019</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ======================
                                         Today Weather Extended 
                                         ====================== -->
                                   <%-- <div class="layer w-100 mY-30">
                                        <div class="layers bdB">
                                            <div class="layer w-100 bdT pY-5">
                                                <div class="peers ai-c jc-sb fxw-nw">
                                                    <div class="peer">
                                                        <span>Wind</span>
                                                    </div>
                                                    <div class="peer ta-r">
                                                        <span class="fw-600 c-grey-800">10km/h</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="layer w-100 bdT pY-5">
                                                <div class="peers ai-c jc-sb fxw-nw">
                                                    <div class="peer">
                                                        <span>Sunrise</span>
                                                    </div>
                                                    <div class="peer ta-r">
                                                        <span class="fw-600 c-grey-800">05:00 AM</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="layer w-100 bdT pY-5">
                                                <div class="peers ai-c jc-sb fxw-nw">
                                                    <div class="peer">
                                                        <span>Pressure</span>
                                                    </div>
                                                    <div class="peer ta-r">
                                                        <span class="fw-600 c-grey-800">1B</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                    <!-- ====================
                                            Week Forecast
                                         ==================== -->
                                    <%--<div class="layer w-100">
                                        <div class="peers peers-greed ai-fs ta-c">
                                            <div class="peer">
                                                <h6 class="mB-10">MON</h6>
                                                <canvas class="sleet" width="30" height="30"></canvas>
                                                <span class="d-b fw-600">
                                                        32<sup>°F</sup>
                                                    </span>
                                            </div>
                                            <div class="peer">
                                                <h6 class="mB-10">TUE</h6>
                                                <canvas class="clear-day" width="30" height="30"></canvas>
                                                <span class="d-b fw-600">
                                                        30<sup>°F</sup>
                                                    </span>
                                            </div>
                                            <div class="peer">
                                                <h6 class="mB-10">WED</h6>
                                                <canvas class="partly-cloudy-day" width="30" height="30"></canvas>
                                                <span class="d-b fw-600">
                                                        28<sup>°F</sup>
                                                    </span>
                                            </div>
                                            <div class="peer">
                                                <h6 class="mB-10">THR</h6>
                                                <canvas class="cloudy" width="30" height="30"></canvas>
                                                <span class="d-b fw-600">
                                                        32<sup>°F</sup>
                                                    </span>
                                            </div>
                                            <div class="peer">
                                                <h6 class="mB-10">FRI</h6>
                                                <canvas class="snow" width="30" height="30"></canvas>
                                                <span class="d-b fw-600">
                                                        24<sup>°F</sup>
                                                    </span>
                                            </div>
                                            <div class="peer">
                                                <h6 class="mB-10">SAT</h6>
                                                <canvas class="wind" width="30" height="30"></canvas>
                                                <span class="d-b fw-600">
                                                        28<sup>°F</sup>
                                                    </span>
                                            </div>
                                            <div class="peer">
                                                <h6 class="mB-10">SUN</h6>
                                                <canvas class="sleet" width="30" height="30"></canvas>
                                                <span class="d-b fw-600">
                                                        32<sup>°F</sup>
                                                    </span>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>
                            

                            <!-- ====================
                                       #Weather End
                                 ==================== -->

                        
                        <%--<div class="masonry-item col-md-6">
                            <!-- ====================
                                        #Chat 
                                 ==================== -->
                            <div class="bd bgc-white">
                                <div class="layers">
                                    <div class="layer w-100 p-20">
                                        <h6 class="lh-1">Quick Chat</h6>
                                    </div>
                                    <div class="layer w-100">
                                        <!-- ====================
                                                    Chat Box 
                                             ====================-->
                                        <div class="bgc-grey-200 p-20 gapY-15">
                                            <!-- ====================
                                                  Chat Conversation
                                                 ==================== -->
                                            <div class="peers fxw-nw">
                                                <div class="peer mR-20">
                                                    <img class="w-2r bdrs-50p" src="assets/static/images/men/11.jpg" alt="">
                                                </div>
                                                <div class="peer peer-greed">
                                                    <div class="layers ai-fs gapY-5">
                                                        <div class="layer">
                                                            <div class="peers fxw-nw ai-c pY-3 pX-10 bgc-white bdrs-2 lh-3/2">
                                                                <div class="peer mR-10">
                                                                    <small>10:00 AM</small>
                                                                </div>
                                                                <div class="peer-greed">
                                                                    <span>Lorem Ipsum is simply dummy text of</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="layer">
                                                            <div class="peers fxw-nw ai-c pY-3 pX-10 bgc-white bdrs-2 lh-3/2">
                                                                <div class="peer mR-10">
                                                                    <small>10:00 AM</small>
                                                                </div>
                                                                <div class="peer-greed">
                                                                    <span>the printing and typesetting industry.</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="layer">
                                                            <div class="peers fxw-nw ai-c pY-3 pX-10 bgc-white bdrs-2 lh-3/2">
                                                                <div class="peer mR-10">
                                                                    <small>10:00 AM</small>
                                                                </div>
                                                                <div class="peer-greed">
                                                                    <span>Lorem Ipsum has been the industry's</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- =====================
                                                   Chat Conversation 
                                                 ===================== -->
                                            <div class="peers fxw-nw ai-fe">
                                                <div class="peer ord-1 mL-20">
                                                    <img class="w-2r bdrs-50p" src="assets/static/images/men/12.jpg" alt="">
                                                </div>
                                                <div class="peer peer-greed ord-0">
                                                    <div class="layers ai-fe gapY-10">
                                                        <div class="layer">
                                                            <div class="peers fxw-nw ai-c pY-3 pX-10 bgc-white bdrs-2 lh-3/2">
                                                                <div class="peer mL-10 ord-1">
                                                                    <small>10:00 AM</small>
                                                                </div>
                                                                <div class="peer-greed ord-0">
                                                                    <span>Heloo</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="layer">
                                                            <div class="peers fxw-nw ai-c pY-3 pX-10 bgc-white bdrs-2 lh-3/2">
                                                                <div class="peer mL-10 ord-1">
                                                                    <small>10:00 AM</small>
                                                                </div>
                                                                <div class="peer-greed ord-0">
                                                                    <span>??</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- ====================
                                                Chat Send 
                                             ====================-->
                                        <div class="p-20 bdT bgc-white">
                                            <div class="pos-r">
                                                <input type="text" class="form-control bdrs-10em m-0" placeholder="Say something...">
                                                <button type="button" class="btn btn-primary bdrs-50p w-2r p-0 h-2r pos-a r-1 t-1">
                                                        <i class="fa fa-paper-plane-o"></i>
                                                    </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- ====================
                                        #Chat End
                                 ==================== -->

                        </div>--%>
                    
                
            <!-- =============================================
                 ### $App Screen Content Child Content End ###
                 ============================================= -->

                  <script src="../UI/DataTable/DataTableScripts/JS/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/dataTables.buttons.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.flash.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/jszip.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/pdfmake.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Ajax/vfs_fonts.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.html5.min.js"></script>
    <script src="../UI/DataTable/DataTableScripts/Button/buttons.print.min.js"></script> 


</asp:Content>
