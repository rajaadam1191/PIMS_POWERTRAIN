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
    public class UserInfo
    {
        public string UserName { get; set; }
        public string UserId { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string process { get; set; }
    }
    public partial class Login : System.Web.UI.Page
    {

        NewSuggestionModel NSM = new NewSuggestionModel();
        ValidationClass VC = new ValidationClass();
        RegistrationLogin RL = new RegistrationLogin();
        static string P;
        static string LP;
        static string EM;
        static string UsID="";
        static string chk;
        static string value;
        static string mailid;
        static string Rmk;
        static string firstlogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            try
            {
                

                if (EmployeeIDTextBox.Text != "" && PasswordTextBox.Text != "")
                {

                    Session["UserId"] = EmployeeIDTextBox.Text.ToString().TrimStart().TrimEnd();
                    if (EmployeeIDTextBox.Text == "admin" && PasswordTextBox.Text == "admin")
                    {

                        Response.Redirect("Deptdashboardlink.aspx?value=" + EmployeeIDTextBox.Text.ToString());
                    }
                    else
                    {
                        SignInInsert();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Welcome To Pims','','info')", true);
                    }



                }
                else
                {
                   // Label1.Visible = true;
                   // Label1.Text = "Please Enter User Name and Password";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Please Enter User Name and Password','','info')", true);
                }
            }
            catch (Exception e1)
            {
                 
            }
            
            
        }
        protected void Changepassword_Click(object sender, EventArgs e)
        {
            changePassword();
             


        }

       

        public void changePassword()
        {
            try
            {
                string Empid = EmpIdOTP.Text.ToString().Trim();
                string OTPpass = OldPassOTP.Text.ToString().Trim();
                string Newpass = chgnewpass.Text.ToString().Trim();
                string Conpass = chgconpass.Text.ToString().Trim();
                if (Newpass == Conpass)
                {
                    DataSet Ds = new DataSet();
                    Ds = RL.CheckoldpasswordGetOTP(Empid);
                    string chkold = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    if (chkold == OTPpass)
                    {
                        RL.Newpassword(Empid, Newpass);
                        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Succcessfully Changed Your Password')", true);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Succcessfully Changed Your Password','','success')", true);
                    }
                    else
                    {
                        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Enter Your Correct Old Password')", true);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Enter Your Correct Old Password','','info')", true);
                    }
                }
                else
                {
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Mismatch For New Password and Confirm Password')", true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Mismatch For New Password and Confirm Password','','warning')", true);

                }
            }
            catch (Exception e1)
            {

            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {
                string credential = passforgot.Text.ToString().Trim();
                string empid = Empidforgot.Text.ToString().Trim();

                DataSet Ds = new DataSet();
                 Ds = RL.ResetPassword(empid);
                string forgot = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                string empname= Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                string emaill1= Ds.Tables[0].Rows[0].ItemArray[2].ToString(); 
                string emaill = EmailId.Text.ToString().Trim();
                if (forgot == credential)
                {
                    
                    Random R = new Random();
                    int split= R.Next();
                    string str = split.ToString();
                    string aftsplit= str.Substring(0,4);
                    int randomNum = int.Parse(aftsplit);
                    RL.UpdateOTPRandom(empid, randomNum);


                    //string apiUrl = "http://10.14.0.40/WebEmail/api/Email";   // located in IIS server
                    //string apiUrlLocal = "http://10.14.0.40/WebEmail/api/Email";     // Running instance from Visual Studio
                    string apiUrl = "http://localhost/WebEmail/api/Email";   // located in IIS server
                    string apiUrlLocal = "http://localhost/WebEmail/api/Email";
                    object input = new
                    {
                        UserName = empname.ToString(),
                        UserId = empid,
                        email = emaill.ToString(),
                        password = randomNum,
                        process = "Forgot Password"
                    };
                    string inputJson = (new JavaScriptSerializer()).Serialize(input);
                    WebClient client = new WebClient();
                    client.Headers["Content-type"] = "application/json";
                    client.Encoding = Encoding.UTF8;
                    // string json = client.UploadString(apiUrl + "/posted", inputJson);   // IIS server webapi project method
                    string json = client.UploadString(apiUrlLocal + "/SendEmailFromWebfrom", inputJson);   // Running instance from Visual Studio - webapi project method
                    var data = (new JavaScriptSerializer()).Deserialize<UserInfo>(json);  // using UserInfo class receview response from api
                    Response.Write(data.password.ToString());

                    //RL.UpdatePassword(empid);
                    //passforgot.Text = "";
                    //Empidforgot.Text = "";

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Successfully Send OTP IN Your Email','','success')", true);

                    //     swal("Good job!", "You clicked the button!", "success");
                    //       lblmsgsuccess.Text = "Successfully Changed Your Default Password";

                }
                else
                {
                    passforgot.Text = "";
                    Empidforgot.Text = "";
                    
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Enter Your Correct Credential','','warning')", true);
                    //      lblmsg.Text = "Enter Your Correct Credential";
                }
            }
            catch (Exception e1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Enter Your Correct Employee Id','','warning')", true);
            }
            
           



        }
        
        

        

        public void search()
        {

            try
            {
                if (EmployeeIDTextBox.Text != "" && EmployeeIDTextBox.Text != "System.Data.DataRowView")
                {
                    RL.HEmployeeID = EmployeeIDTextBox.Text.ToString().Trim();

                    DataSet DS = new DataSet();

                    DS = RL.LoginSearch(RL);
                    P = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                    EM = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                    mailid = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                    chk = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                    firstlogin = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                    Rmk = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                }
                else
                {
                  //  Label1.Visible = true;
                  //  Label1.Text = "Enter the Employee Id";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Enter the Employee Id','','warning')", true);
                }
            }
            catch(Exception e)
            {
                //Label1.Visible = true;
                //Label1.Text = "User Name and Password Incorrect";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('User Name and Password Incorrect','','warning')", true);
            }
           
        }

        #region Insert
        public void SignInInsert()
        {
            search();
            DataSet Ds = new DataSet();
            LP = PasswordTextBox.Text.ToString().Trim();
            
            Session["UserName"] = EM.ToString().TrimStart().TrimEnd();
            Session["Email"] = mailid.ToString();
            try
            {
                try
                {
                    //search();
                    if (P == LP)
                    {

                        RL.HEmployeeID = EmployeeIDTextBox.Text.ToString().TrimStart().TrimEnd();
                        RL.HEmployeeName = EM.ToString();
                        RL.DateTiming = DateTime.Now.ToString();
                        RL.OutTime = "IN";
                        RL.Remark1 = "I";
                        RL.Remark2 = "I";



                        DataTO Da = new DataTO();
                        SqlParameter OP = new SqlParameter("@empid", RL.HEmployeeID);
                        Da.parameters.Add(OP);

                        UsID = Da.ExecuteScalar("EmployeeDesig").ToString();

                        if (firstlogin == "null" || firstlogin == "")
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", "openModal();", true);

                            //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModalChangePassword').modal();", true);
                            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "none","<script>$('#myModalChangePassword').modal('show');</script>", false);
                            //ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script>$(function() { $('#myModalChangePassword').modal('show'); });</script>", false);
                        }
                        else
                        {
                            if (Rmk != "D")
                            {
                                


                                if (chk == "staff" && mailid == "jeyapandi.palani@poclain.com"|| chk == "staff" && mailid == "sivabalan.gunasekara@poclain.com")
                                {
                                    RL.LogInsert(RL);
                                    Response.Redirect("AdminDashboard.aspx", false);
                                }
                                else if (chk == "staff" || chk == "com" && mailid != "jeyapandi.palani@poclain.com")
                                {
                                    if (chk == "staff" && mailid != "jeyapandi.palani@poclain.com" && EM == "Rajesh")
                                    {
                                        RL.LogInsert(RL);
                                        Response.Redirect("FinanceDashboard.aspx?value=" + RL.HEmployeeID, false);
                                    }

                                    else
                                    {
                                        //   RL.LogInsert(RL);
                                        Response.Redirect("Deptdashboardlink.aspx?value=" + RL.HEmployeeID, false);
                                    }


                                }

                                else
                                {
                                    string i = "1";
                                    Response.Redirect("default.aspx?value=" + RL.HEmployeeID, false);
                              
                                }

                            }
                            else
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('UnAuthorized User','','error')", true);
                            }

                        }
                    }
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);


                    else
                    {
                        Label1.Visible = false;
                        Label1.Text = "Incorrect Password";
                        //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect Employee Id or Password')", true);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Incorrect Employee Id or Password','','warning')", true);
                    }

                        
                    
                }
                catch (Exception ex)
                {
                    Label1.Visible = false;
                    Label1.Text = "Employee Id or Password Incorrect";
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Employee Id or Password Incorrect')", true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Employee Id or Password Incorrect','','warning')", true);
                }
        }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
                
        }

        //protected void EmployeeIDTextBox_TextChanged(object sender, EventArgs e)
        //{

        //}



        #endregion

        protected void GenerateBeforeOTP_Click(object sender, EventArgs e)
        {
            try
            {
                string Empid = EmpIdOTP.Text.ToString();
                string Oldpass = OldPassOTP.Text.ToString();
                DataSet Ds = new DataSet();
                Ds = RL.CheckoldpasswordGetOTP(Empid);
                string chkold = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                string empname = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                string emaill = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                if (chkold == Oldpass)
                {
                    Random R = new Random();
                    int randomNum = R.Next();
                    RL.UpdateOTPRandom(Empid, randomNum);

                    string apiUrl = "http://10.14.0.40/WebEmail/api/Email";   // located in IIS server
                    string apiUrlLocal = "http://10.14.0.40/EmailApi/api/Email";     // Running instance from Visual Studio
                    object input = new
                    {
                        UserName = empname.ToString(),
                        UserId = Empid.ToString(),
                        email = emaill.ToString(),
                        password = randomNum,
                        process = "Change Password"
                    };
                    string inputJson = (new JavaScriptSerializer()).Serialize(input);
                    WebClient client = new WebClient();
                    client.Headers["Content-type"] = "application/json";
                    client.Encoding = Encoding.UTF8;
                    // string json = client.UploadString(apiUrl + "/posted", inputJson);   // IIS server webapi project method
                    string json = client.UploadString(apiUrlLocal + "/SendEmailFromWebfrom", inputJson);   // Running instance from Visual Studio - webapi project method
                    var data = (new JavaScriptSerializer()).Deserialize<UserInfo>(json);  // using UserInfo class receview response from api
                    Response.Write(data.password.ToString());





                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Successfully Send OTP In Your Email','','success')", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Enter Your Correct Old Password','','info')", true);
                }
            }
            catch(Exception e1)
            {

            }
               
        }

        protected void UpdatepasswordForgot_Click(object sender, EventArgs e)
        {
            try
            {
                string Empid = chgempidForgot.Text.ToString().Trim();
                string OTPpass = chgoldpassForgot.Text.ToString().Trim();
                string Newpass = chgnewpassForgot.Text.ToString().Trim();
                string Conpass = chgconpassForgot.Text.ToString().Trim();
                if (Newpass == Conpass)
                {
                    DataSet Ds = new DataSet();
                    Ds = RL.Checkoldpassword(Empid);
                    string chkold = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    if (chkold == OTPpass)
                    {
                        RL.Newpassword(Empid, Newpass);
                        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Succcessfully Changed Your Password')", true);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Succcessfully Changed Your Password','','success')", true);
                    }
                    else
                    {
                        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Enter Your Correct Old Password')", true);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Enter Your Correct OTP Number','','info')", true);
                    }
                }
                else
                {
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Mismatch For New Password and Confirm Password')", true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Mismatch For New Password and Confirm Password','','warning')", true);

                }
            }
            catch (Exception e1)
            {

            }
        }
    }
}