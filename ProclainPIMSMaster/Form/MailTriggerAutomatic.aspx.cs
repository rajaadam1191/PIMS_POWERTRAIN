using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;
using System.Data.SqlClient;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web.Script.Serialization;

namespace ProclainPIMSMaster.Form
{
    public partial class MailTriggerAutomatic : System.Web.UI.Page
    {
        RegistrationLogin RL = new RegistrationLogin();
        public string Employee { get; set; }
        public string Days { get; set; }
        public string Email { get; set; }
        public string IdeaCount { get; set; }
        public string Rolename { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
        try {
                load();
        }
        catch(Exception e1) { }
        }
       

        public void load()
        {
            DataSet Ds = new DataSet();//"com", "hod", "imp", "hos", "ben", "fin"
            string[] loopvar= { "com", "hod", "imp", "hos", "ben", "fin" };
            for (int i = 0; i < loopvar.Length; i++)
            {
                if (loopvar[i].ToString() == "com")
                {
                    Rolename = "Committee";
                }
                else if (loopvar[i].ToString() == "hod")
                {
                    Rolename = "Manager";
                }
                else if (loopvar[i].ToString() == "imp")
                {
                    Rolename = "Implement";
                }
                else if (loopvar[i].ToString() == "hos")
                {
                    Rolename = "HOS";
                }
                else if (loopvar[i].ToString() == "ben")
                {
                    Rolename = "Beneficiary";
                }
                else
                {
                    Rolename = "Finance";
                }
                Ds = RL.AutoMailTrigger(loopvar[i]);
                for(int x=0;x<Ds.Tables[0].Rows.Count;x++)
                {
                    Employee = Ds.Tables[0].Rows[x].ItemArray[0].ToString();
                    IdeaCount = Ds.Tables[0].Rows[x].ItemArray[1].ToString();
                    Email = Ds.Tables[0].Rows[x].ItemArray[2].ToString();
                    Days = Ds.Tables[0].Rows[x].ItemArray[3].ToString();
                    //string apiUrl = "http://10.14.0.40/WebEmail/api/Email";   // located in IIS server
                    //string apiUrlLocal = "http://10.14.0.40/WebEmail/api/Email";     // Running instance from Visual Studio
                    string apiUrl = "http://localhost/WebEmail/api/Email";   // located in IIS server
                    string apiUrlLocal = "http://localhost/WebEmail/api/Email";
                    object input = new
                    {
                        Employee = Employee.ToString(),
                        Days = Days,
                        AutoEmail = Email.ToString(),
                        Ideacount=IdeaCount.ToString(),
                        RoleName = Rolename.ToString(),
                        Message = "Kindly Response The suggestions",
                        process = "Alert Mail"
                    };
                    string inputJson = (new JavaScriptSerializer()).Serialize(input);
                    WebClient client = new WebClient();
                    client.Headers["Content-type"] = "application/json";
                    client.Encoding = Encoding.UTF8;
                    // string json = client.UploadString(apiUrl + "/posted", inputJson);   // IIS server webapi project method
                    string json = client.UploadString(apiUrlLocal + "/SendAutoEmailTriggerFromWebfrom", inputJson);   // Running instance from Visual Studio - webapi project method
                    var data = (new JavaScriptSerializer()).Deserialize<UserInfo>(json);  // using UserInfo class receview response from api
                    //Response.Write(data.password.ToString());

                    //RL.UpdatePassword(empid);
                    //passforgot.Text = "";
                    //Empidforgot.Text = "";

                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Successfully Send OTP IN Your Email','','success')", true);

                    //     swal("Good job!", "You clicked the button!", "success");
                    //       lblmsgsuccess.Text = "Successfully Changed Your Default Password";


                }


            }
        }


    }
}