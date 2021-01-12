<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailTriggerAutomatic.aspx.cs" Inherits="ProclainPIMSMaster.Form.MailTriggerAutomatic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
    <script type="text/javascript" >
       
        var loadvar = setInterval("reload()", 14400000);
        
        function reload() {
            console.log("enter");
            location.reload();
            console.log("exit");

        }
        //14400000==4hours
    </script> 


</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
