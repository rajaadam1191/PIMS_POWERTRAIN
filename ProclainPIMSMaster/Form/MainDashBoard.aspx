<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainDashBoard.aspx.cs" Inherits="ProclainPIMSMaster.Form.MainDashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PIMS </title>
    
    <script src="../UI/Style/jquery.min.js"></script>
    <link href="../UI/Style/bootstrap.min.css" rel="stylesheet" />
    <script src="../UI/Style/bootstrap.min.js"></script>
    <script src="../UI/Style/popper.min.js"></script>

<style>
    .bgcolor{
        background: linear-gradient(to right, #66ccff 0%, #cc99ff 100%);
        margin-top:5%;
       
    }
    body{
        background-color:#006a9c!important;
    }
</style>
</head>
<body class="bgcolor" >
    <form id="form1" runat="server" >
        <div class="container" style="margin:auto">
            <div class="card  "  >
                 <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3"></div>
                    <div class="col-md-3"></div>
                    <div class="col-md-3">
                        <asp:LinkButton runat="server" ID="GoSignIn" style="padding-left:50%;" OnClick="GoSignIn_Click"><u>Go SignIn</u></asp:LinkButton>
                    </div>
                </div>
					<div class="row" >
						<div class="col-md-4" >
						      <div class="card jumbotron" style="
	
    width: 322px;
    margin-left: 15px;
    margin-top: 11px;
    margin-bottom: 22px;
">
							    <asp:Repeater ID="MailRepeater" runat="server" >
                                     <ItemTemplate>
                                         <div class="ideadiv" style="padding-left:10px">
                                             <asp:Label ID="lblImageName" CssClass="IdeaIdclass" runat="server"  hidden></asp:Label>             
                                            <div class="row">
                                                <div class="col-sm-10">
                                                   <asp:TextBox   ID="lblImageNameTextBox" name="lblImageNameTextBox" CssClass="IdeaIdclasstxt" runat="server" hidden> </asp:TextBox>
                                  
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-sm-12 form-control" style="border:none!important;" >
                                                   
                                                   
                                                  
                                                    
                                                     <%# Eval("CEOMessage") %>
                                                    
                                                </div>
                                            </div>
                                         </div>

                                     </ItemTemplate>



                                 </asp:Repeater>
							   </div>
							  
							  
						</div>
						<div class="col-md-8" >
 

  <div class="row" style=" margin-top: 12px;margin-right: 2%;">
<div class="container mt-3" style="width:100%;height:100%;">

                  <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item" id="User" style="width:50%; font-size:100%;  padding-left:2%;">
                            <a class="nav-link active" data-toggle="tab" href="#new" style="font-weight:bold ;text-align:center;">MONTHLY</a>

                        </li>
                        <li class="nav-item" id="Implement" style="width:50%; font-size:100%;padding-right:2%; ">
                            <a class="nav-link" data-toggle="tab" href="#assigned" style="font-weight:bold ;text-align:center;">YEAR</a>

                        </li>
                  </ul>
             
<div class="tab-content">
     <div id="new" class="container tab-pane active">
        <div class="row">
                            <div class="col-md-4" >
							   <div class="card" >
							      <div class="card-header">
								      <h6><center>RANK-1</center></h6>
								  </div>
								  <div class="card-BODY" >
                                      
                                      <img src="../UI/assets/static/images/71oQvWs_.jpg" style="width: 62%;" />
								  </div>
                                   <div class="card-footer">
                                       <center>
                                       <asp:Label runat="server" ID="rank1Id" >--123--</asp:Label><br />
                                       <asp:Label runat="server" ID="rank1Name" >--xyz--</asp:Label>
                                   </center>
                                           </div>
							   </div>
						    
							</div>
							 <div class="col-md-4" >
							 <div class="card" >
							       <div class="card-header">
								      <h6><center>RANK-2</center></h6>
								  </div>
								  <div class="card-BODY">
                                      <img src="avatar1.webp" style="width: 62%;margin-left: 21%;"/>
								      
								  </div>
                                   <div class="card-footer">
                                       <center>
                                       <asp:Label runat="server" ID="rank2Id" >--123--</asp:Label><br />
                                       <asp:Label runat="server" ID="rank2Name" >--xyz--</asp:Label>
                                           </center>
                                   </div>
							   </div>
						    
							</div>
							 <div class="col-md-4" >
							 <div class="card" >
							       <div class="card-header">
								      <h6><center>RANK-3</center></h6>
								  </div>
								  <div class="card-BODY">
                                      <img src="avatar1.webp" style="width: 62%;margin-left: 21%;"/>
								      
								  </div>
                                   <div class="card-footer">
                                       <center>
                                       <asp:Label runat="server" ID="rank3Id" >--123--</asp:Label><br />
                                       <asp:Label runat="server" ID="rank3Name" >--xyz--</asp:Label>
                                           </center>
                                   </div>
							   </div>
						    
							</div>
			</div>			
            	</div>
    

    

     <div id="assigned" class="container tab-pane">
          <div class="row">
                             <div class="col-md-4" >
							   <div class="card" >
							      <div class="card-header">
								      <h6><center>RANK-4</center></h6>
								  </div>
								  <div class="card-BODY">
                                    <%--  <img src="avatar1.webp" style="width: 62%;margin-left: 21%;"/>--%>
								       <div id="imgAt2" style="display: none">
                                              <img src="ContentPlaceHolder1_UpLoad2Tag" id="UpLoad2Tag" style="height: 100px; width: 100px;" runat="server" alt="NoAttachment" />
                                       </div>
                                       
								  </div>
                                   <div class="card-footer">
                                       <p>Employee1</p>
                                   </div>
							   </div>
						    
							</div>
							 <div class="col-md-4" >
							 <div class="card" >
							       <div class="card-header">
								      <h6><center>RANK-5</center></h6>
								  </div>
								  <div class="card-BODY">
                                      <img src="avatar1.webp" style="width: 62%;margin-left: 21%;"/>
								      
								  </div>
                                   <div class="card-footer">
                                       <p>Employee2</p>
                                   </div>
							   </div>
						    
							</div>
							 <div class="col-md-4" >
							 <div class="card" >
							       <div class="card-header">
								      <h6><center>RANK-6</center></h6>
								  </div>
								  <div class="card-BODY">
                                      <img src="avatar1.webp" style="width: 62%;margin-left: 21%;"/>
								      
								  </div>
                                   <div class="card-footer">
                                       <p>Employee3</p>
                                   </div>
							   </div>
						    
							</div>
			</div>				
          </div>
    
    </div>
                </div>            

                              </div>

						 
							  <div class="row" style="
    margin-top: 30px;
    margin-bottom: 3%;
	 margin-right: 2%;
">
                            <div class="col-md-6" >
							    <div class="card" >
							     
					
  
<script type="text/javascript">
    function PieChart(newSug,reject,approved) {
        console.log(newSug, reject, approved);
    var chart = new CanvasJS.Chart("chartContainer2", {
        animationEnabled: true,
        title: {
            text: "LAST 3MONTH REPORT"
        },
        data: [{
            type: "pie",
            startAngle: 240,
            //yValueFormatString: "##0.00\"%\"",
            indexLabel: "{label} {y}",
            dataPoints: [
                { y: parseInt(newSug), label: "NewSuggestion" },
                { y: parseInt(reject), label: "Rejected" },
                { y: parseInt(approved), label: "Approved" }
                //{ y: 4.91, label: "Yahoo" },
                //{ y: 1.26, label: "Others" }
            ]
        }]
    });
    chart.render();



    }

</script>



<div id="chartContainer2" style="height: 300px; width: 100%;"></div>


							   </div>
						    
							</div>
<div class="col-md-6" >
							  
  <div class="card"> 
    <script type="text/javascript">
        function bindgraph(g1new,g1reject,g1approve,g2new,g2reject,g2apprve)
        {
            PieChart(g1new, g1reject, g1approve);
            PieChartYear(g2new, g2reject, g2apprve);
        }


        function PieChartYear(newSugyear, rejectyear, approvedyear) {
            console.log(newSugyear, rejectyear, approvedyear);
        var chartpie = new CanvasJS.Chart("chartContainer1", {
            animationEnabled: true,
            title: {
                text: "YEARLY REPORT",
                horizontalAlign: "left"
            },
            data: [{
                type: "doughnut",
                startAngle: 60,
                //innerRadius: 60,
               // indexLabelFontSize: 17,
                indexLabel: "{label} - #percent%",
                toolTipContent: "<b>{label}:</b> {y} (#percent%)",
                dataPoints: [
                    { y: parseInt(newSugyear), label: "NewSuggestion" },
                    { y: parseInt(rejectyear), label: "Rejected" },
                    { y: parseInt(approvedyear), label: "Approved" }
                    //{ y: 7, label: "Drafts" },
                    //{ y: 15, label: "Trash" },
                    //{ y: 6, label: "Spam" }
                ]
            }]
        });
        chartpie.render();
    }
</script>

<div id="chartContainer1" style="height: 300px; width: 100%;"></div>
      </div>
							   </div>
						    
							
							
							</div>
								
							
							</div>
						
                        </div>
               
    
    </div>
               </div> 
            <script src="../UI/Style/canvasjs.min.js"></script>	
    </form>
</body>
</html>
