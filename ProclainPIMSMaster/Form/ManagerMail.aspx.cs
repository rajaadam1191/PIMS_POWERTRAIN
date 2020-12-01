using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;

namespace ProclainPIMSMaster.Form
{

    public class EmpEmailContents
    {
        public string empid { get; set; }
        public string empname { get; set; }
        public string Department { get; set; }
        public string Designation { get; set; }
        public string Date { get; set; }
        public string category { get; set; }
        public string subject { get; set; }
        public string Before { get; set; }
        public string After { get; set; }
        public string Benifit { get; set; }
        public string status { get; set; }
        public string UpLoad1 { get; set; }
        public string UpLoad2 { get; set; }
        public string UpLoad3 { get; set; }
        public string ErrorLabel { get; set; }
        public string EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public string Email { get; set; }
        public string DepartmentName { get; set; }
        public string fromTag { get; set; }
        public string EIDTag { get; set; }
        public string DepTag { get; set; }
        public string DesTag { get; set; }
        public string CatTag { get; set; }
        public string IdIdTag { get; set; }
        public string BefTag { get; set; }
        public string AftTag { get; set; }
        public string BenTag { get; set; }
        public string IdeaIdTag { get; set; }
        public string upl1Tag { get; set; }
        public string upl2Tag { get; set; }
        public string upl3Tag { get; set; }
        public string upload1 { get; set; }
        public string upload2 { get; set; }
        public string upload3 { get; set; }

        public string Description { get; set; }

    }
    [System.Web.Script.Services.ScriptService]
    public partial class ManagerMail : System.Web.UI.Page
    {
        Mailling M = new Mailling();
        Manager MM = new Manager();
        DataBankManager DBM = new DataBankManager();
        NewSuggestionModel NSM = new NewSuggestionModel();
        RegistrationLogin RL = new RegistrationLogin();
        static string SendID;
        static string[] ena;
        static string[] mail;
        static int index;
        static string us1="";
        static string TeamID = "";
        static string SIDepPopID;
        static string ProjectID;
        static string UserName;
        static string k;
        static int z = 0;
        static int y = 0;
        static string rowId="";
        static string TeamSel;
        static string ComEvalInboxID;

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
                        if (Session["UserId"] != null)
                        {
                            NSDataPasser dp = new NSDataPasser();
                            dp.sesid = Session["UserId"].ToString().TrimStart().TrimEnd();

                        }
                        else
                        {
                            Response.Redirect("Login.aspx");
                        }

                        load();
                        IMPDepartmentNameView();



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
            try
            {
                if (Session["UserId"] == null)
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    us1 = Session["UserId"].ToString();
                    string depid = Session["ManDep"].ToString();
                    DataSet Ds = new DataSet();
                    RL.HEmployeeID = us1;
                    //Ds = RL.LoginUserDetail(RL);
                    //UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    //M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                    //Ds = M.DepartmetnRepeterView(M);
                    //M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    M.IEmpId = us1.ToString();
                    M.DepId = depid.ToString();

                    Ds = M.ManagerSelectRepeterView(M);
                    int c = Ds.Tables[0].Rows.Count;
                    count.InnerHtml = c.ToString();
                    MailRepeater.DataSource = Ds.Tables[0];
                    //MailRepeater.SelectMethod = "IdeaId";
                    MailRepeater.DataBind();

                    Ds = M.ManagerSelectRepeterViewassigned(M);
                    int cass = Ds.Tables[0].Rows.Count;
                    countass.InnerHtml = cass.ToString();
                    MailRepeaterassigned.DataSource = Ds.Tables[0];
                    //MailRepeater.SelectMethod = "IdeaId";
                    MailRepeaterassigned.DataBind();

                    Ds = M.ManagerSelectRepeterViewcomplete(M);
                    int ccom = Ds.Tables[0].Rows.Count;
                    countcom.InnerHtml = ccom.ToString();
                    MailRepeatercomplete.DataSource = Ds.Tables[0];
                    //MailRepeater.SelectMethod = "IdeaId";
                    MailRepeatercomplete.DataBind();

                    Ds = M.ManagerSelectRepeterViewhold(M);
                    int chol = Ds.Tables[0].Rows.Count;
                    counthol.InnerHtml = chol.ToString();
                    MailRepeaterhold.DataSource = Ds.Tables[0];
                    //MailRepeater.SelectMethod = "IdeaId";
                    MailRepeaterhold.DataBind();

                    //Ds = M.ManagerSelectRepeterViewReject(M);
                    //int crej = Ds.Tables[0].Rows.Count;
                    //countrej.InnerHtml = crej.ToString();
                    //MailRepeaterreject.DataSource = Ds.Tables[0];
                    ////MailRepeater.SelectMethod = "IdeaId";
                    //MailRepeaterreject.DataBind();

                    Ds = M.ManagerSelectRepeterViewotherdept(M);
                    int cotr = Ds.Tables[0].Rows.Count;
                    countotr.InnerHtml = cotr.ToString();
                    MailRepeaterotherdept.DataSource = Ds.Tables[0];
                    //MailRepeater.SelectMethod = "IdeaId";
                    MailRepeaterotherdept.DataBind();

                    FromDateTextBox.Text = System.DateTime.Now.Date.ToString("dd-MM-yyyy");
                    ToDateTextBox.Text = System.DateTime.Now.Date.AddDays(30).ToString("dd-MM-yyyy");

                    TeamDetailView();
                }
            }
            catch (Exception e1)
            {
                 
            }
           
        }
        #endregion

        public void TeamDetailView()
        {
            try
            {
                string depid = Session["ManDep"].ToString();
                MM.IDepID = depid.ToString();
                MM.TeamHead = us1.ToString();
                DataSet Ds = new DataSet();


                Ds = MM.TeamMemDDList_GetDepId(MM);
               
                TeamNamePopUPDDList.DataSource = Ds.Tables[0];
                TeamNamePopUPDDList.DataTextField = "EmployeeName";
                TeamNamePopUPDDList.DataValueField = "EmployeeId";
                TeamNamePopUPDDList.DataBind();

            }
            catch (Exception e1)
            {
                 
            }
           
        }

        protected void MailRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Session["IdeaID"] = e.CommandArgument.ToString();
                rowId = Session["IdeaID"].ToString();
                if(rowId != "")
                {
                    //MangerSearchMailContent();
                }
            }
        }
        [WebMethod()]
        public static EmpEmailContents MailContent(string idea)
        {
            
            EmpEmailContents EECS = new EmpEmailContents();
            Mailling M = new Mailling();
            DataSet DS = new DataSet();
            try
            {
                
                
                M.IdeaId = idea.ToString();
                
                DS = M.Repeatersearch(M);


                EECS.fromTag = "From : ";
                EECS.EIDTag = "Employee ID : ";
                EECS.DepTag = "Department : ";
                EECS.DesTag = "Designaton : ";
                EECS.CatTag = "Category : ";
                EECS.IdIdTag = "Idea ID: ";
                EECS.BefTag = "Before : ";
                EECS.AftTag = "After : ";
                EECS.BenTag = "Benefits : ";
                EECS.upl1Tag = "FileUpload1";
                EECS.upl2Tag = "FileUpload2";
                EECS.upl3Tag = "FileUpload3";
                EECS.IdeaIdTag = idea.ToString();

                EECS.empname = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                EECS.empid = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                EECS.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EECS.Designation = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EECS.Date = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                EECS.category = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                EECS.subject = DS.Tables[0].Rows[0].ItemArray[6].ToString();
                EECS.Before = DS.Tables[0].Rows[0].ItemArray[7].ToString();
                EECS.After = DS.Tables[0].Rows[0].ItemArray[8].ToString();
                EECS.Benifit = DS.Tables[0].Rows[0].ItemArray[9].ToString();
                EECS.UpLoad1 = DS.Tables[0].Rows[0].ItemArray[11].ToString();
                // EEC.upload1 = "/PIMS/UI/Image/" + EEC.UpLoad1;
                EECS.upload1 = "../UI/Image/" + EECS.UpLoad1;
                EECS.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[12].ToString();
                //EEC.upload2 = "/PIMS/UI/Image/" + EEC.UpLoad2;
                EECS.upload2 = "../UI/Image/" + EECS.UpLoad2;
                EECS.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[13].ToString();
                // EEC.upload3 = "/PIMS/UI/Image/" + EEC.UpLoad3;
                EECS.upload3 = "../UI/Image/" + EECS.UpLoad3;
                EECS.Description= DS.Tables[0].Rows[0].ItemArray[14].ToString();
                return EECS;


            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }
            

        }
        public void DepIdAutoGeneretion()
        {
            DataSet DS = new DataSet();
            DS = MM.TeamIDAuto();
            SendID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        public void ComEvalInboxIDAutoGeneration()
        {
            DataSet DS = new DataSet();
            DS = MM.ComEvalInboxIDAuto();
            ComEvalInboxID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        public string ComEvalInboxAutoID()
        {
            
                DataSet DS = new DataSet();
                DS = MM.ComEvalInboxIDAuto();
               return DS.Tables[0].Rows[0].ItemArray[0].ToString();
           
        }
        public void Insert()
        {
            DataSet Ds = new DataSet();
            try
            {
                int i = 0;
                int j = 0;
                string array1 = mailidtext.Text.ToString();
                //string array = EmpDepTextBox.Text.ToString();
                string ds = EmpIDTextBox.Text.ToString();

                string[] breakMysentence = ds.Split(',');
                string[] breakMysentence1 = array1.Split(',');
                string[] ena1 = new string[breakMysentence.Length];
                string[] mail1 = new string[breakMysentence.Length];
                foreach (string data in breakMysentence)
                {

                    ena1[i] = data;

                    i = i + 1;

                }

                foreach (string data1 in breakMysentence1)
                {
                    mail1[j] = data1;
                    j = j + 1;

                }
                DepIdAutoGeneretion();
                for (int x = 0; x < ena1.Length; x++)
                {

                    ComEvalInboxIDAutoGeneration();


                    MM.SendId = SendID.ToString();
                    MM.IdeaId = IMPIdeaIdTextBox.Text.ToString();
                    MM.HEmployeeName = us1.ToString();
                    MM.TempMail = array1.ToString();
                    MM.TempId = ds.ToString();
                    MM.Date = System.DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                    MM.HEmployeeID = ena1[x].ToString().TrimStart().TrimEnd();
                    MM.Email = mail1[x].ToString().TrimStart().TrimEnd();
                    MM.Subject = subjecttext.Text.TrimStart().TrimEnd().ToString();
                    MM.Discription = ComposeTextBox.Text.TrimStart().TrimEnd().ToString();
                    MM.TargetDate= ToDateTextBox.Text.TrimStart().TrimEnd().ToString();
                    MM.Remark1 = "i";
                    MM.Remark2 = "Team";


                    MM.ComInboxID = ComEvalInboxID.ToString();
                    MM.DBMEmail = Session["Email"].ToString();
                    
                    MM.TeamInboxInsert(MM);





                }
                MM.ManagerEvaInsert(MM);
                
                string myscript = "alert ('Mail Send ImplementTeam');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                z = 1;

                //E.EmployeeInsert(E);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);

            }
            catch (Exception e1)
            {
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }
        public void Clear()
        {
            TOIMPTextBox.Text = "";
            EmpIDIMPTextBox.Text = "";
            DupEmpIDIMPTextBox.Text = "";
            MailIdIMPTextBox.Text = "";
            SubjectIMPTextBox.Text = "";
            ContectIMPTextBox.Text = "";
            IMPDepaDLists.SelectedIndex = 0;
        }
        [WebMethod()]
        public static CESEmpEmailContents MChecking(string emp)
        {


            
            CESEmpEmailContents EEC = new CESEmpEmailContents();
            DataSet DS = new DataSet();
            Manager M = new Manager();

            try
            {

                try
                {

                    if (emp != "" && emp != "System.Data.DataRowView")
                    {

                        M.IEmpName = emp.ToString();

                        DS = M.ManagerNameSelect(M);
                        EEC.HEmployeeID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        EEC.HEmployeeName = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        EEC.Email = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        EEC.ErrorLabel = "0";

                    }

                    else if (emp == "")
                    {

                        EEC.ErrorLabel = "Check the Employee ID ";
                    }

                    else
                    {
                        string err = "Check the Input Record is not Exit ";
                    }

                }
                catch (Exception ex)
                {
                    string err = "Check the Input Record is not Exit ";

                }
                return EEC;
            }

            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }


        }

        public void IMPDepartmentNameView()
        {
            try
            {
                DataSet Ds = new DataSet();


                Ds = MM.ManagerDDl();

                IMPDepaDLists.DataSource = Ds.Tables[0];
                IMPDepaDLists.DataTextField = "Members";
                IMPDepaDLists.DataValueField = "EmpId";
                IMPDepaDLists.DataBind();
            }
            catch (Exception e1)
            {
                 
            }
          

        }


        protected void OwnTeamPopButton_Click(object sender, EventArgs e)
        {
            if (ImpCheckRadioButtonList.SelectedValue == "feas")
            {
                try
                {
                    Insert();
                    Response.Redirect("ManagerMail.aspx",false);
                }
                catch (Exception e1)
                {
                }
            }
            if (ImpCheckRadioButtonList.SelectedValue == "Notfeasible")
            {
                try
                {
                    Notfeasible();
                    Response.Redirect("ManagerMail.aspx");
                }
                catch (Exception e1)
                {
                }

            }
            if (ImpCheckRadioButtonList.SelectedValue == "alreadyimpl")
            {
                try
                {
                    Alreadyimpl();
                    Response.Redirect("ManagerMail.aspx");
                }
                catch (Exception e1)
                {
                }

            }
        }
        public void Notfeasible()
        {
            DataSet Ds = new DataSet();
            try
            {
                MM.IdeaId = IMPIdeaIdTextBox.Text.ToString();
                MM.ManagerEvaInsertNotfeasible(MM);
            }
            catch (Exception e1) { }
        }
        public void Alreadyimpl()
        {
            DataSet Ds = new DataSet();
            try
            {
                MM.IdeaId = IMPIdeaIdTextBox.Text.ToString();
                MM.ManagerEvaInsertNotAlreadyimpl(MM);
            }
            catch (Exception e1) { }
        }
        [WebMethod()]
        public static EmpEmailContents Checking(string emp)
        {


            
            EmpEmailContents EE = new EmpEmailContents();
            Manager M = new Manager();
            DataSet DS = new DataSet();
            int count;
            string ei;
            string en;
            string em;
            try
            {

                try
                {

                    if (emp != "" && emp != "System.Data.DataRowView")
                    {
                       

                        M.IEmpId = emp.ToString();
                        DS = M.EmployeeEmailDashBoard(M);
                        count = DS.Tables[0].Rows.Count;
                        if (DS != null || DS.Tables[0].Rows.Count > 0)
                        {
                            if (count == 1)
                            {
                                EE.EmployeeId = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                                EE.EmployeeName = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                                EE.Email = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                            }
                            else
                            {
                                for (int i = 0; i < count; i++)
                                {
                                    ei = DS.Tables[0].Rows[i].ItemArray[5].ToString();
                                    en = DS.Tables[0].Rows[i].ItemArray[3].ToString();
                                    em = DS.Tables[0].Rows[i].ItemArray[4].ToString();
                                    if (i < count - 1)
                                    {
                                        EE.EmployeeId = EE.EmployeeId + ei + ", ";
                                        EE.EmployeeName = EE.EmployeeName + en + ", ";
                                        EE.Email = EE.Email + em + ", ";
                                    }
                                    else
                                    {
                                        EE.EmployeeId = EE.EmployeeId + ei;
                                        EE.EmployeeName = EE.EmployeeName + en;
                                        EE.Email = EE.Email + em;
                                    }


                                }
                            }
                            EE.ErrorLabel = "0";
                        }
                        else if (emp == "")
                        {

                            EE.ErrorLabel = "Check the Employee ID ";
                        }
                        else
                        {
                            EE.ErrorLabel = "1";
                        }
                    }
                    else
                    {
                        string err = "Check the Input Record is not Exit ";
                    }

                }
                catch (Exception ex)
                {
                    string err = "Check the Input Record is not Exit ";

                }
                return EE;
            }

            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }


        }
        public string ComEvalSendIDAutoGeneration()
        {
            string dataoutput = "";
            try
            {
                DataSet DS = new DataSet();
                DS = DBM.ComEvalSendBoxAuto();
                dataoutput= DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
                 
            }
            return dataoutput;


        }
        protected void ManagerButton_Click(object sender, EventArgs e)
        {
            try
            {
                ManagerSentToOtherManager();
                Response.Redirect("ManagerMail.aspx");
            }
            catch (Exception e1)
            { 
            }
          
        }
        public void ManagerSentToOtherManager()
        {
            DataSet Ds = new DataSet();
            try
            {
                int i = 0;
                int j = 0;
                string array1 = MailIdIMPTextBox.Text.ToString();
                //string array = EmpDepTextBox.Text.ToString();
                string ds = EmpIDIMPTextBox.Text.ToString();

                string[] breakMysentence = ds.Split(',');
                string[] breakMysentence1 = array1.Split(',');
                string[] ena1 = new string[breakMysentence.Length];
                string[] mail1 = new string[breakMysentence.Length];
                foreach (string data in breakMysentence)
                {

                    ena1[i] = data;

                    i = i + 1;

                }

                foreach (string data1 in breakMysentence1)
                {
                    mail1[j] = data1;
                    j = j + 1;

                }
                DepIdAutoGeneretion();
                for (int x = 0; x < ena1.Length; x++)
                {

                   // ComEvalInboxIDAutoGeneration();


                    DBM.SendId = SendID.ToString();
                    DBM.IdeaId = IMPIdeaIdTextBox.Text.ToString();
                    DBM.HEmployeeName = us1.ToString();
                    DBM.TempMail = array1.ToString();
                    DBM.TempId = ds.ToString();
                    DBM.Date = System.DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                    DBM.HEmployeeID = ena1[x].ToString().TrimStart().TrimEnd();
                    DBM.Email = mail1[x].ToString().TrimStart().TrimEnd();
                    DBM.Subject = SubjectIMPTextBox.Text.TrimStart().TrimEnd().ToString();
                    DBM.Discription = ContectIMPTextBox.Text.TrimStart().TrimEnd().ToString();
                    DBM.Remark1 = "i";
                    DBM.Remark2 = "Manager";


                    DBM.ComInboxID = this.ComEvalInboxAutoID();// ComEvalInboxID.ToString();
                    DBM.DBMEmail = Session["Email"].ToString();
                    //   MM.ManagerEvaInsert(MM()
                 //   DBM.CMID = ComEvalSendIDAutoGeneration();
                    DBM.ManagerEvaInsert_OtherSend(DBM);



                }
                //   DBM.ManagerEvaInsert_OtherSend(DBM);
                string myscript = "alert ('Mail Send Manager');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
               
                z = 1;

                //E.EmployeeInsert(E);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);

            }
            catch (Exception e1)
            {
                
                 throw new Exception("Error Initializing Data Class." + Environment.NewLine + e1.Message);
            }
        }
        public void ManagerEvaluvationInsert()
        {
            DataSet Ds = new DataSet();
            try
            {
                int i = 0;
                int j = 0;
                string array1 = MailIdIMPTextBox.Text.ToString();
                //string array = EmpDepTextBox.Text.ToString();
                string ds = EmpIDIMPTextBox.Text.ToString();

                string[] breakMysentence = ds.Split(',');
                string[] breakMysentence1 = array1.Split(',');
                string[] ena1 = new string[breakMysentence.Length];
                string[] mail1 = new string[breakMysentence.Length];
                foreach (string data in breakMysentence)
                {

                    ena1[i] = data;

                    i = i + 1;

                }

                foreach (string data1 in breakMysentence1)
                {
                    mail1[j] = data1;
                    j = j + 1;

                }
                DepIdAutoGeneretion();
                for (int x = 0; x < ena1.Length; x++)
                {




                    MM.SendId = SendID.ToString();
                    MM.IdeaId = IMPIdeaIdTextBox.Text.ToString();
                    MM.HEmployeeName = us1.ToString();
                    MM.TempMail = array1.ToString();
                    MM.TempId = ds.ToString();
                    MM.Date = System.DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                    MM.HEmployeeID = ena1[x].ToString().TrimStart().TrimEnd();
                    MM.Email = mail1[x].ToString().TrimStart().TrimEnd();
                    MM.Subject = SubjectIMPTextBox.Text.TrimStart().TrimEnd().ToString();
                    MM.Discription = ContectIMPTextBox.Text.TrimStart().TrimEnd().ToString();
                    MM.Remark1 = "i";
                    MM.Remark2 = "Manager";


                    MM.ComInboxID = ComEvalInboxID.ToString();
                    MM.DBMEmail = Session["Email"].ToString();
                    MM.ManagerInboxInsert(MM);





                }
                MM.ManagerEvaInsert(MM);
                string myscript = "alert ('Mail Send Manager');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                z = 1;

                //E.EmployeeInsert(E);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);

            }
            catch (Exception e1)
            {
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }
    }
}