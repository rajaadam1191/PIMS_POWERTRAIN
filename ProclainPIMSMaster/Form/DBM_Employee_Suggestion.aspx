<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DBM_Employee_Suggestion.aspx.cs" Inherits="ProclainPIMSMaster.Form.DBM_Employee_Suggestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
  <!--  <link href="../UI/Style/select2Search.css" rel="stylesheet" />
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript"></script>
          -->
    
    <link href="../UI/Style/style.css" rel="stylesheet" />
    <link href="../UI/Style/css.css" rel="stylesheet" />
    <link href="../UI/Style/fonts.css" rel="stylesheet" />
    <script src="../UI/Style/jquery.min.js"></script>   
     <link href="../UI/Style/select2.min.css" rel="stylesheet" />
    <script src="../UI/Script/select2.min.js" type="text/javascript"></script>
    <script src="../UI/Script/sweetalert2@9.js"></script>
   

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
    .form-control {}
</style>
    
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
     
<style type="text/css">
@keyframes ldio-l05zvogs5db {
  0% {
    opacity: 1;
    backface-visibility: hidden;
    transform: translateZ(0) scale(2.4099999999999997,2.4099999999999997);
  } 100% {
    opacity: 0;
    backface-visibility: hidden;
    transform: translateZ(0) scale(1,1);
  }
}
.ldio-l05zvogs5db div > div {
  position: absolute;
  width: 24px;
  height: 24px;
  border-radius: 50%;
  background: #72c4ff;
  animation: ldio-l05zvogs5db 1s linear infinite;
}.ldio-l05zvogs5db div:nth-child(1) > div {
  left: 148px;
  top: 88px;
  animation-delay: -0.8888888888888888s;
}
.ldio-l05zvogs5db > div:nth-child(1) {
  transform: rotate(0deg);
  transform-origin: 160px 100px;
}.ldio-l05zvogs5db div:nth-child(2) > div {
  left: 134px;
  top: 127px;
  animation-delay: -0.7777777777777778s;
}
.ldio-l05zvogs5db > div:nth-child(2) {
  transform: rotate(40deg);
  transform-origin: 146px 139px;
}.ldio-l05zvogs5db div:nth-child(3) > div {
  left: 98px;
  top: 147px;
  animation-delay: -0.6666666666666666s;
}
.ldio-l05zvogs5db > div:nth-child(3) {
  transform: rotate(80deg);
  transform-origin: 110px 159px;
}.ldio-l05zvogs5db div:nth-child(4) > div {
  left: 58px;
  top: 140px;
  animation-delay: -0.5555555555555556s;
}
.ldio-l05zvogs5db > div:nth-child(4) {
  transform: rotate(120deg);
  transform-origin: 70px 152px;
}.ldio-l05zvogs5db div:nth-child(5) > div {
  left: 32px;
  top: 109px;
  animation-delay: -0.4444444444444444s;
}
.ldio-l05zvogs5db > div:nth-child(5) {
  transform: rotate(160deg);
  transform-origin: 44px 121px;
}.ldio-l05zvogs5db div:nth-child(6) > div {
  left: 32px;
  top: 67px;
  animation-delay: -0.3333333333333333s;
}
.ldio-l05zvogs5db > div:nth-child(6) {
  transform: rotate(200deg);
  transform-origin: 44px 79px;
}.ldio-l05zvogs5db div:nth-child(7) > div {
  left: 58px;
  top: 36px;
  animation-delay: -0.2222222222222222s;
}
.ldio-l05zvogs5db > div:nth-child(7) {
  transform: rotate(240deg);
  transform-origin: 70px 48px;
}.ldio-l05zvogs5db div:nth-child(8) > div {
  left: 98px;
  top: 29px;
  animation-delay: -0.1111111111111111s;
}
.ldio-l05zvogs5db > div:nth-child(8) {
  transform: rotate(280deg);
  transform-origin: 110px 41px;
}.ldio-l05zvogs5db div:nth-child(9) > div {
  left: 134px;
  top: 49px;
  animation-delay: 0s;
}
.ldio-l05zvogs5db > div:nth-child(9) {
  transform: rotate(320deg);
  transform-origin: 146px 61px;
}
.loadingio-spinner-spin-70jldgjfy3 {

   width: 200px;
            height: 200px;
            position: absolute;
            left: 50%;
            top: 50%;
            
            background-repeat: no-repeat;
            background-position: center;
            margin: -100px 0 0 -100px;
}
.ldio-l05zvogs5db {
  width: 100%;
  height: 100%;
  position: relative;
  transform: translateZ(0) scale(1);
  backface-visibility: hidden;
  transform-origin: 0 0; /* see note above */
}
.ldio-l05zvogs5db div { box-sizing: content-box; }
/* generated by https://loading.io/ */
</style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <script>
       $(document).ready(function () {
           $("#preloader").hide();
        
       });
   </script>
    <div id="preloader">
         <!--
<div id="status"  >&nbsp;</div>-->
         <div class="loadingio-spinner-spin-70jldgjfy3"><div class="ldio-l05zvogs5db">
<div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div><div><div></div></div>
</div></div>
</div>
<div class="col-12 peer pX-40  h-100 bgc-white scrollable pos-r" style="min-width:320px; padding-top: 28px">
    <center><h4 class="fw-300 c-grey-902 mB-30">IMPROVEMENT IDEA FORM
        <br />
        <small>முன்னேற்றம் / யோசனை படிவம்</small>
            </h4> </center>

    <div class="row errordiv" id="Error"><div class="col-sm-12">
        <asp:Label ID="ErrorLabel" CssClass="ErrorLabelClass" runat="server" style="color:red" ></asp:Label>
        
        </div>
        </div>
   <div class="row"><div class="col-sm-5">
       <label>DATE:     </label>
                   <b> <label id="TimeLable" runat="server" style="color:red"> </label></b>
                    
                    </div><div class ="col-sm-5">
                        
                          </div>
       <div class="col-sm-2"><lable>IDEA ID:     </lable>
<%--           <asp:TextBox ID="txtIdeaId" CssClass="form-control" runat="server"></asp:TextBox>--%>
           <input type="text" class="form-control" onkeyup="checkIDeaID(this.value)" name="txtIdeaId" id="txtIdeaId"/>
          <b style="display:none"><label id="IdeaIdLable" runat="server" style="color:red" > </label></b> 

       </div></div><br />
    <div class="form-group">
         
            <div class="row">
                 <div class="col-sm-3">
                    <label>Employee ID<small> (எண்) </small></label>
                            <asp:TextBox ID="EmployeeIdTextBox" CssClass="form-control EmployeeIdTextBoxClass" placeholder="Employee Id" runat="server"  onkeydown="return tableInputKeyPress(event);" ></asp:TextBox>

                     </div> 
                
                     
                <div class="col-sm-3">
                    <label>Employee Name<small> (பெயர்)</small></label>
                    <asp:TextBox ID="EmployeeTextBox" CssClass="form-control EmpNameClass" Width="100%" Enabled="false" placeholder="Employee Name" runat="server" ></asp:TextBox>
                   
                </div>
                
                <div class="col-sm-3">
                    <label>Department <small>(துறை)</small></label>
                    <asp:TextBox ID="DepartmentTextBox" CssClass="form-control" Width="100%" Enabled="false" placeholder="Department Name" runat="server"></asp:TextBox>
               
                </div>
                 

                <div class="col-sm-3">
                    <label>Designation<small> (பதவி)</small></label><br />

                    <asp:TextBox ID="DesignationTextBox" CssClass="form-control" Width="100%" Enabled="false" placeholder="Designation Name" runat="server"></asp:TextBox>
                   
                </div>
                 
              </div>
        <br />
             <div class="row">
             <div class="col-sm-5">
              
                   <label>Improvement Idea Subject<small> </small></label> 
                    <asp:TextBox ID="SubjectTextBox" CssClass="form-control SubjectTextBoxClass" placeholder="Specify Area, Machine, Department for better Understanding" runat="server" TextMode="MultiLine" Height="100px" Width="400px" onkeydown="return MoveNext('BenefitsTextBox',event.keyCode);"></asp:TextBox>
              </div>
                 <div class="col-sm-4">
                     <label>Benefits</label>
                    <asp:TextBox ID="BenefitsTextBox" CssClass="form-control BenefitsTextBoxClass" placeholder="Attach Sheets If Needed" runat="server" TextMode="MultiLine" Height="100px" Width="320px" onkeydown = "return MoveNext('BeforeTextBox',event.keyCode);"></asp:TextBox>
              
                    </div>
                 <div class="col-sm-3">
                 <label>Category</label><br />
                 <asp:CheckBoxList ID="CategoryCheckBoxList" CssClass="CheckBoxList" runat="server" RepeatDirection="Vertical" RepeatColumns="2" RepeatLayout="Table">
                         
                         <asp:ListItem>Productivity</asp:ListItem>
                         <asp:ListItem>Health & Safety</asp:ListItem>
                         <asp:ListItem>Quality</asp:ListItem>
                         <asp:ListItem>Cost</asp:ListItem>
                         <asp:ListItem>6S</asp:ListItem>
                         <asp:ListItem>Energy</asp:ListItem>
                         <asp:ListItem>IT</asp:ListItem>
                         <asp:ListItem>Others</asp:ListItem>
                     </asp:CheckBoxList>
                 </div>
             </div>
        
        
       
           <br />

             <div class="form-group">
                 
        <div class="row">
                 <div class="col-sm-5">
                  <label> Before <small> (விளக்கம்)</small></label></div>
            <div class="col-sm-5">
                  <label> After <small> (விளக்கம்)</small></label></div>
            <div class="col-sm-2">
                  <label> Upload <small> (விளக்கம்)</small></label></div>
            </div>
         <div class="row">
                 <div class="col-sm-5">
                 <asp:TextBox ID="BeforeTextBox" CssClass="form-control BeforeTextBoxClass" runat="server" placeholder="Attach Sheets If Needed" TextMode="MultiLine" Rows="10" onkeydown = "return MoveNext('AfterTextBox',event.keyCode);"></asp:TextBox></div>
             <div class="col-sm-5">
                 <asp:TextBox ID="AfterTextBox" CssClass="form-control AfterTextBoxClass" runat="server" placeholder="Attach Sheets If Needed" TextMode="MultiLine" Rows="10" onkeydown = "return MoveNext('ImageFileUpload1',event.keyCode);"></asp:TextBox></div>
             
                  <div class="col-sm-2">
                      <asp:FileUpload ID="ImageFileUpload1" CssClass="form-control" runat="server" /><br />
                      <asp:FileUpload ID="ImageFileUpload2" CssClass="form-control" runat="server" /><br />
                 <asp:FileUpload ID="ImageFileUpload3" CssClass="form-control" runat="server" hidden />
                 </div>
                 </div>
             </div>
              
             <div class="form-group">
    <div class="row">
       <%-- <div class="col-sm-5">
                 </div>--%>
        <div class="col-sm-10">
                <div class="peer">
                 <asp:Button ID="Submit" CssClass="form-control submitBTN" Width="100%" BorderColor ="DodgerBlue"  runat="server" AutoPostBack="false" Text="Submit" style="display:none"   OnClick="Submit_Click"   /> 
                      <input type="button" class="form-control submitBTN" style="width:100%;border-color:dodgerblue" value="Submit" onclick="sendEmail()" /> 
                 </div>
    <div class="col-sm-2">
             <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>              
                            </div>
             </div>
      </div>
    </div>
        </div> 

    </div>
     <script>
         function checkIDeaID(ideatext)
         {
             if (ideatext.length>=4) //Enter
             {
                  
                // var empId = $('.EmployeeIdTextBoxClass').val();
                 $.ajax({
                     url: 'DBM_Employee_Suggestion.aspx/CheckingIdeaID',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data;},
                    data: '{ideaid:' + JSON.stringify(ideatext) + '}',
                    dataType: "json",                   
                    success: function (data) {
                        console.log(data.d.Status, data.d.Subject);
                        if (data.d.Status == "Y")
                        {
                            
                            Swal.fire({
                                title: 'Invalid IDEA ID',
                                text: "This Idea id already exists please check and change!",
                                icon: 'warning'
                            }).then($("#txtIdeaId").focus());
                        }
                        else
                        {
                            $(".EmployeeIdTextBoxClass").focus();
                        }
                        
                    },
                    error: function (err) {
                        Swal.fire({
                            title: 'Invalid IDEA ID',
                            text: "This Idea id already exists please check and change!",
                            icon: 'warning'
                        }).then($("#txtIdeaId").focus());
                    }
                 });
                 e.preventDefault();
              document.getElementById('<%= EmployeeIdTextBox.ClientID %>').focus();
                 return false;
    
             }
         }
        function sendEmail()
        {
            var idea = $("#txtIdeaId");
            console.log(idea.val())
            if (idea.val() != null && idea.val() != '') {

                console.log(document.getElementById('<%= IdeaIdLable.ClientID %>').innerHTML, document.getElementById('<%= SubjectTextBox.ClientID %>').value, document.getElementById('<%= EmployeeTextBox.ClientID %>').value, document.getElementById('<%= EmployeeIdTextBox.ClientID %>').value, document.getElementById('<%= DepartmentTextBox.ClientID %>').value)

                $("#preloader").show();
                var formData = new FormData();
                 formData.append("toAddress", "jeyapandi.palani@poclain.com");
                //formData.append("toAddress", "manikandan.ramsaro@gmail.com");
                formData.append("toName", "Jeyapandi");
                formData.append("toId", "PI-266");
                formData.append("subject", "New Suggestion Posting");
                formData.append("ideaID", document.getElementById('<%= IdeaIdLable.ClientID %>').innerHTML);
                formData.append("content", document.getElementById('<%= SubjectTextBox.ClientID %>').value);
                formData.append("sender", document.getElementById('<%= EmployeeTextBox.ClientID %>').value + ",<br/>" + document.getElementById('<%= EmployeeIdTextBox.ClientID %>').value + ",<br/>" + document.getElementById('<%= DepartmentTextBox.ClientID %>').value);


                formData.append("resci", "Sir");
                formData.append("type", "New");
                formData.append("subTitle", "Evaluation");
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
                        document.getElementById("<%=Submit.ClientID %>").click();
                        console.log('button clicked');
                        //  document.getElementById("Submit").click();
                    },
                    error: function (err) {
                        console.log('err', err);
                        document.getElementById("<%=Submit.ClientID %>").click();
                        console.log('button clicked');
                        // document.getElementById("Submit").click();
                    }
                });
            }
            else

            {
                Swal.fire({
                    title: 'Invalid IDEA ID',
                    text: "Please enter idea id!",
                    icon: 'warning'
                }).then($("#txtIdeaId").focus());

            }
        }
    </script>

    <script>
         function submitBtn(e) {


                 Swal.fire({
                     title: 'Are you sure?',
                     text: "Do You Want To Post YOU Suggestion!",
                     icon: 'warning',
                     showCancelButton: true,
                     confirmButtonColor: '#3085d6',
                     cancelButtonColor: '#d33',
                     confirmButtonText: 'Yes, Post!'
                 }).then((result) => {
                     if (result.value == 1) {
                         console.log(result.value);
                         Swal.fire(
                           'Posted!',
                           'Your file has been Posted Sucessfully.',
                           'success'
                         )
                     }
                 })
                 return false;
                 e.preventDefault();
             //});
         }
      </script>
               
    <script type="text/javascript">
            function MoveNext(next_ctrl,_key) {
              
                if (_key == 13) {
                    //alert(next_ctrl);
                    var _next = document.getElementById(next_ctrl);
                    _next.focus();
                    return false;
                }
               
             }
        </script>

     <script>
         function tableInputKeyPress(e) {
             // alert('Keypress called');
             e = e || window.event;
             var key = e.keyCode;
             
             if (key == 13 || key == 9) //Enter
             {
                 //alert('keydown');
                 var empId = $('.EmployeeIdTextBoxClass').val();
                 $.ajax({
                    url: 'DBM_Employee_Suggestion.aspx/Checking',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    dataFilter: function (data) { return data;},
                    data: '{emp:' + JSON.stringify(empId) + '}',
                    dataType: "json",                   
                    success: function (data) {
                        console.log(data);
                        var er = data.d.ErrorLabel;                       
                        if (er != 1) {
                            $("#Error").hide();
                        console.log("test" + data.d.empname);
                        console.log("test" + data.d.Department);
                        console.log("test" + data.d.Designation);
                        document.getElementById('<%= EmployeeTextBox.ClientID %>').value = data.d.empname;
                        document.getElementById('<%= DepartmentTextBox.ClientID %>').value = data.d.Department;
                        document.getElementById('<%= DesignationTextBox.ClientID %>').value = data.d.Designation;
              
               
               
                        }
                        else
                        {
                            $("#Error").show();
                            document.getElementById('<%= ErrorLabel.ClientID %>').value = "Employee ID Does Not Exist";
                            $('.ErrorLabelClass').text("Employee ID Does Not Exist");
                        
                        }

                    },
                    error: function (err) {
                        alert('Error : ' + data); console.log(err);
                        tableInputKeyPress(e);
                    }
                 });
                 e.preventDefault();
              document.getElementById('<%= SubjectTextBox.ClientID %>').focus();
                 return false;
    
             }
        }
          
         </script> 
                            
</asp:Content>
