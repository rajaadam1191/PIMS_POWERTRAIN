using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;

using Newtonsoft.Json;
using System.Web.Script.Serialization;

namespace ProclainPIMSMaster.Form
{
    public partial class HOSDashboard : System.Web.UI.Page
    {
        Mailling M = new Mailling();
        DataBankManager DBM = new DataBankManager();
        NewSuggestionModel NSM = new NewSuggestionModel();
        Employee em = new Employee();

        HOSModule hos = new HOSModule();

        static string SendID;
        static string[] ena;
        static string[] mail;
        static string index;
        static string us1;
        static string from;
        static string to;
        static string Fmail;
        static string TMail;
        static string TeamID = "";
        static string SIDepPopID;
        static string ProjectID;
        static string UserName;
        static string k;
        static int z = 0;
        static int y = 0;
        static string ComEvalSendID;
        static string Idea;
        static string rowId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["UserId"].ToString() == null || Session["UserId"].ToString() == "")
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    if (!IsPostBack)
                    {

                        load();
                        fillDropdown();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }
            
        }
        #region Default Employee Details
        public void load()
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                us1 = Session["UserId"].ToString();

                DataSet Ds = new DataSet();
                em.EmployeeId = us1;
                //Ds = em.search(em);
                //UserName = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                //M.IDepID = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                //Ds = M.DepartmetnRepeterView(M);
                //M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                em.CMID = us1.ToString();
                Ds = hos.getEmailbyHOSId(us1);//em.ImplTeamEvalRepView(em);





                MailRepeater.DataSource = Ds.Tables[0];
                //MailRepeater.SelectMethod = "IdeaId";
                MailRepeater.DataBind();




            }
        }
        #endregion
        public void fillDropdown()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = hos.getManagerList("");
                if (Ds.Tables[0].Rows.Count > 0)
                {
                    ddlBenifialTeam.DataSource = Ds;
                    ddlBenifialTeam.DataTextField = "Name";
                    ddlBenifialTeam.DataValueField = "SL_No";
                    ddlBenifialTeam.DataBind();

                    //listHOD.DataSource = Ds;
                    //listHOD.DataTextField = "Name";
                    //listHOD.DataValueField = "SL_No";
                    //listHOD.DataBind();

                }
                //for(int i = 0; i <= 100; i++)
                //{
                //    int count = i + 5;
                //    scorecount.DataSource = count;
                //    scorecount.DataBind();
                //}
            }
            catch (Exception e1)
            {
                 
            }
            
        }
        public void ComEvalSendIDAutoGeneration()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = DBM.ComEvalSendBoxAuto();
                ComEvalSendID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
                 
            }
           
        }


        protected void Mailrepeater_cmd(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Session["IdeaID"] = e.CommandArgument.ToString();
                rowId = Session["IdeaID"].ToString();
                if (rowId != "")
                {
                    //MangerSearchMailContent();
                }
            }
        }
        [WebMethod()]
        public static CEmpEmailContents getDetails(string idea)
        {
            CEmpEmailContents EECS = new CEmpEmailContents();
            Mailling M = new Mailling();
            DataBankManager DBM = new Models.DataBankManager();
            Employee em = new Employee();
            DataSet DS = new DataSet();

            HOSModule hos = new HOSModule(); 
            try
            {

                
                index = idea.ToString();
                em.IdeaID = idea.ToString();
                //Session["IdeaID"] = idea.ToString();

                DS = hos.getEmailbySno(idea, "header");


                EECS.fromTag = "From : ";
                EECS.EIDTag = "Employee ID : ";
                EECS.DepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.CatTag = "Category : ";
                EECS.IdIdTag = "Idea ID: ";
                EECS.BefTag = "Before : ";
                EECS.AftTag = "After : ";
                EECS.BenTag = "Benefits : ";
                EECS.upl1Tag = "FileUpload1";
                EECS.upl2Tag = "FileUpload2";
                EECS.upl3Tag = "FileUpload3";


                EECS.SfromTag = "From : ";
                EECS.SEIDTag = "Employee ID : ";
                EECS.SDepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.cmtid = idea.ToString();
                EECS.IdeaIdTag = DS.Tables[0].Rows[0].ItemArray[8].ToString();
                idea = DS.Tables[0].Rows[0].ItemArray[8].ToString();

                EECS.Sempname = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EECS.MailID = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                EECS.Sempid = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDepartment = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                //EECS.Designation = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDate = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                EECS.SSubject = DS.Tables[0].Rows[0].ItemArray[6].ToString();
                EECS.SContent = DS.Tables[0].Rows[0].ItemArray[7].ToString();

                EECS.empid = DS.Tables[0].Rows[0].ItemArray[9].ToString();
                EECS.empname = DS.Tables[0].Rows[0].ItemArray[10].ToString();
                EECS.Department = DS.Tables[0].Rows[0].ItemArray[11].ToString();
                EECS.Designation = DS.Tables[0].Rows[0].ItemArray[12].ToString();
                EECS.category = DS.Tables[0].Rows[0].ItemArray[13].ToString();
                EECS.Benifit = DS.Tables[0].Rows[0].ItemArray[14].ToString();
                EECS.Date = DS.Tables[0].Rows[0].ItemArray[15].ToString();
                EECS.UpLoad1 = DS.Tables[0].Rows[0].ItemArray[24].ToString();
                // EEC.upload1 = "/PIMS/UI/Image/" + EEC.UpLoad1;
                EECS.upload1 = "../UI/Image/" + EECS.UpLoad1;
                EECS.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[25].ToString();
                //EEC.upload2 = "/PIMS/UI/Image/" + EEC.UpLoad2;
                EECS.upload2 = "../UI/Image/" + EECS.UpLoad2;
                EECS.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[26].ToString();
                // EEC.upload3 = "/PIMS/UI/Image/" + EEC.UpLoad3;
                EECS.upload3 = "../UI/Image/" + EECS.UpLoad3;
                EECS.subject = DS.Tables[0].Rows[0].ItemArray[16].ToString();
                EECS.Before = DS.Tables[0].Rows[0].ItemArray[17].ToString();
                EECS.After = DS.Tables[0].Rows[0].ItemArray[18].ToString();

                EECS.Reply = " Implementation Team Information ";
                EECS.Status = DS.Tables[0].Rows[0].ItemArray[20].ToString();
                EECS.SReason = DS.Tables[0].Rows[0].ItemArray[22].ToString();
                EECS.SResponse = DS.Tables[0].Rows[0].ItemArray[21].ToString();
                EECS.SenderID = DS.Tables[0].Rows[0].ItemArray[23].ToString();
                return EECS;


            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }
        }

        [WebMethod]
        public static string getFillGrid(string idea)
        {
            DataSet DS = new DataSet();

            HOSModule hos = new HOSModule();
            try
            {

                DS = hos.getEmailbySno(idea, "gridview");
            }
            catch (Exception e) { }
            return DS.GetXml(); 
        }


        [WebMethod()]
        public static CEmpEmailContents MailContent(string idea)
        {

            CEmpEmailContents EECS = new CEmpEmailContents();
            Mailling M = new Mailling();
            DataBankManager DBM = new Models.DataBankManager();
            Employee em = new Employee();
            DataSet DS = new DataSet();
            try
            {

                //RepeaterItem item = (sender as TextBox).Parent as RepeaterItem;
                //index = int.Parse((item.FindControl("lblImageNameTextBox") as Label).Text);
                index = idea.ToString();
                em.IdeaID = idea.ToString();
                //Session["IdeaID"] = idea.ToString();

                DS = em.ImplTeamRepViewUpatePannel(em);


                EECS.fromTag = "From : ";
                EECS.EIDTag = "Employee ID : ";
                EECS.DepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.CatTag = "Category : ";
                EECS.IdIdTag = "Idea ID: ";
                EECS.BefTag = "Before : ";
                EECS.AftTag = "After : ";
                EECS.BenTag = "Benefits : ";

                EECS.SfromTag = "From : ";
                EECS.SEIDTag = "Employee ID : ";
                EECS.SDepTag = "Department : ";
                //EECS.DesTag = "Designaton : ";
                EECS.cmtid = idea.ToString();
                EECS.IdeaIdTag = DS.Tables[0].Rows[0].ItemArray[8].ToString();
                idea = DS.Tables[0].Rows[0].ItemArray[8].ToString();

                EECS.Sempname = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EECS.MailID = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                EECS.Sempid = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDepartment = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                //EECS.Designation = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.SDate = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                EECS.SSubject = DS.Tables[0].Rows[0].ItemArray[6].ToString();
                EECS.SContent = DS.Tables[0].Rows[0].ItemArray[7].ToString();

                EECS.empid = DS.Tables[0].Rows[0].ItemArray[9].ToString();
                EECS.empname = DS.Tables[0].Rows[0].ItemArray[10].ToString();
                EECS.Department = DS.Tables[0].Rows[0].ItemArray[11].ToString();
                EECS.Designation = DS.Tables[0].Rows[0].ItemArray[12].ToString();
                EECS.category = DS.Tables[0].Rows[0].ItemArray[13].ToString();
                EECS.Benifit = DS.Tables[0].Rows[0].ItemArray[14].ToString();
                EECS.Date = DS.Tables[0].Rows[0].ItemArray[15].ToString();

                EECS.subject = DS.Tables[0].Rows[0].ItemArray[16].ToString();
                EECS.Before = DS.Tables[0].Rows[0].ItemArray[17].ToString();
                EECS.After = DS.Tables[0].Rows[0].ItemArray[18].ToString();

                EECS.Reply = " Reply ";
                EECS.Status = DS.Tables[0].Rows[0].ItemArray[20].ToString();
                EECS.SReason = DS.Tables[0].Rows[0].ItemArray[22].ToString();
                EECS.SResponse = DS.Tables[0].Rows[0].ItemArray[21].ToString();
                EECS.SenderID = DS.Tables[0].Rows[0].ItemArray[23].ToString();
                return EECS;


            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }
            //DataSet DS = new DataSet();
            //DS = M.Repeatersearch(M);
            //fromTag.InnerHtml = "From : ";
            //EIDTag.InnerHtml = "Employee ID : ";
            //DepTag.InnerHtml = "Department : ";
            //DesTag.InnerHtml = "Designaton : ";
            //CatTag.InnerHtml = "Category : ";
            //BefTag.InnerHtml = "Before : ";
            //AftTag.InnerHtml = "After : ";
            //BenTag.InnerHtml = "Benefits : ";

            //EmployeeNameTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[1].ToString();
            //EmployeeIDTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            //DepartmentTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[2].ToString();
            //DesignationTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[3].ToString();

            //TimeTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[4].ToString();
            //CategoryTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[5].ToString();
            //SubjectTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[6].ToString();
            //BeforeTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[7].ToString();
            //AfterTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[8].ToString();
            //BenefitsTag.InnerHtml = DS.Tables[0].Rows[0].ItemArray[9].ToString();


        }


        [WebMethod()]
        public static CEmpEmailContents Checking(string emp)
        {
            NewSuggestionModel NSM = new NewSuggestionModel();
            Employee E = new Employee();
            CEmpEmailContents tdp = new CEmpEmailContents();
            DataBankManager DBM = new DataBankManager();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                    if (emp != "" && emp != "System.Data.DataRowView")
                    {
                        Console.Write(emp);

                        DBM.IEmpId = emp.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = DBM.EmpIDSearch(DBM);

                        tdp.empid = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        tdp.empname = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        //SIDepID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        tdp.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        //SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                        tdp.Designation = DS.Tables[0].Rows[0].ItemArray[4].ToString();

                    }

                    else
                    {

                    }
                    return tdp;
                }
                catch (Exception ex)
                {
                    throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);


            }
        }



        [WebMethod()]
        public static CEmpEmailContents CheckingUpdate(string emp)
        {
            NewSuggestionModel NSM = new NewSuggestionModel();
            Employee E = new Employee();
            CEmpEmailContents tdp = new CEmpEmailContents();
            DataBankManager DBM = new DataBankManager();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                    if (emp != "" && emp != "System.Data.DataRowView")
                    {
                        Console.Write(emp);

                        DBM.IdeaId = emp.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = DBM.ComEvalUpdateDashboardProcess(DBM);

                        tdp.Type = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        tdp.Reason = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        //SIDepID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        tdp.Response = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        tdp.Sempid = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                        tdp.Sempname = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                        //SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();


                    }

                    else
                    {

                    }
                    return tdp;
                }
                catch (Exception ex)
                {
                    throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);


            }
        }
        protected void ApproveButton_Click(object sender, EventArgs e)
        {
            try
            {
                ComEvalSendIDAutoGeneration();
                insert();

            }
            catch (Exception e1)
            {
                 
            }
          
        }
        public void insert()
        {
            try
            {
                if (index != "" && index != "System.Data.DataRowView")
                {
                    DBM.ComInboxID = index.ToString();
                    DBM.Status = "Accepted";
                    //DBM.Suggestion = RBTApTextBox.Text.ToString().TrimStart().TrimEnd();
                    DBM.Reason = "Accepted";
                    DBM.ComiteeResponse(DBM);

                    string myscript = "alert ('Thanks For Response');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                }
                else
                {
                    string myscript = "alert ('Forget To Select the IDea ID');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }
            }
            catch (Exception e1)
            {
                 
            }
           
        }

        public void Rejinsert()
        {
            try
            {
                if (index != "" && index != "System.Data.DataRowView")
                {
                    DBM.ComInboxID = index.ToString();
                    DBM.Status = "Rejected";
                    //DBM.Suggestion = RemarkByTeamTextBox.Text.ToString().TrimStart().TrimEnd();
                    //DBM.Reason = ReasonTextBox.Text.ToString().TrimStart().TrimEnd();
                    DBM.ComiteeResponse(DBM);

                    string myscript = "alert ('Thanks For Response');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                }
                else
                {
                    string myscript = "alert ('Forget To Select the IDea ID');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }
            }
            catch (Exception e1)
            {
                 
            }
            
        }
        /*
        public void Upinsert()
        {
            if (index != "" && index != "System.Data.DataRowView")
            {
                DBM.ComInboxID = index.ToString();
                string check;
                check =
                check = RepCheckRadioButtonList.SelectedItem.Text.ToString();
                DBM.Status = RepCheckRadioButtonList.SelectedItem.Text.ToString();
                if (check == "Accepted")
                {
                    DBM.Reason = "NULL";
                }
                else
                {
                    DBM.Reason = ReasonRejTextBox.Text.ToString().TrimStart().TrimEnd();
                }
                DBM.Suggestion = ResponseTextBox.Text.ToString().TrimStart().TrimEnd();

                DBM.ComiteeResponse(DBM);

                string myscript = "alert ('Thanks For Response');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
            }
            else
            {
                string myscript = "alert ('Forget To Select the IDea ID');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

            }
        }
        */

        protected void RejectPopButton_Click(object sender, EventArgs e)
        {
            try
            {
                ComEvalSendIDAutoGeneration();
                Rejinsert();
            }
            catch (Exception e1)
            {
                 
            }
          
        }
        protected string Values1;
        protected string Values2;
        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {
                string ImplementsJSON = Request.Form["ImplementationTeam"];
                DataTable dt = JsonConvert.DeserializeObject<DataTable>(ImplementsJSON);


                string[] managerName = Request.Form.GetValues("managerName");
                string[] managerEmail = Request.Form.GetValues("managerEmail");


                string IdeaId = Request.Form["IdeaId"];
                string txtMailBody = Request.Form["txtMailBody"];

                string gradeText = Request.Form["gradeText"];
                string gradeSub = Request.Form["gradeSub"];
                string gradeVal = Request.Form["gradeVal"];

                string senderID = Request.Form["empID"];
                string senderMail = Request.Form["empMailID"];
                string recivedDate = Request.Form["recivedDate"];

                for (int i = 0; i < managerName.Length; i++)
                {
                    string[] userData = managerName[i].Split('-');
                    string[] userMails = managerEmail[i].Split('-');
                    string reciverID = userMails[1] + "-" + userMails[2];
                    hos.sendMailToBenificials(senderMail, senderID, reciverID.Trim(), IdeaId, senderMail, userMails[0], txtMailSubject.Text, txtMailBody, "Accepted", "A", txtMailBody, "", gradeText, gradeSub + " - " + gradeVal, recivedDate);
                }
                for (int j = 0; j < dt.Rows.Count; j++)
                {
                    hos.UpdateEmployeeScore("Accepted", dt.Rows[j].ItemArray[1].ToString(), IdeaId, dt.Rows[j].ItemArray[5].ToString(), "");
                }
                hos.updateHOSMail("", senderID, IdeaId);
                Response.Redirect("HOSDashboard.aspx");
            }
            catch (Exception e1)
            {
                 
            }
           
        }
    }
}