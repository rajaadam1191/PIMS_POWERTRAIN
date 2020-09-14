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
    public class CESEmpEmailContents
    {
        public string Sempid { get; set; }
        public string Sempname { get; set; }
        public string SDepartment { get; set; }
        public string SDesignation { get; set; }
        public string SDate { get; set; }
        public string SSubject { get; set; }
        public string SContent { get; set; }
        public string SfromTag { get; set; }
        public string SEIDTag { get; set; }
        public string SDepTag { get; set; }
        public string SMailID { get; set; }
        public string SConTag { get; set; }
        public string SSubTag { get; set; }
        public string SDesTag { get; set; }
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
        public string HEmployeeID { get; set; }
        public string HEmployeeName { get; set; }
        public string Email { get; set; }
        public string DepartmentName { get; set; }
        public string fromTag { get; set; }
        public string EIDTag { get; set; }
        public string DepTag { get; set; }
        public string MailID { get; set; }
        
        public string DesTag { get; set; }
        public string CatTag { get; set; }
        public string IdIdTag { get; set; }
        public string BefTag { get; set; }
        public string AftTag { get; set; }
        public string BenTag { get; set; }
        public string IdeaIdTag { get; set; }
        public string ErrorLabel { get; set; }
        public string RIdeaID { get; set; }
        public string REmpID { get; set; }
        public string REmpName { get; set; }
        public string RSub { get; set; }
        public string RCon { get; set; }
        public string RMail { get; set; }
    }
    [System.Web.Script.Services.ScriptService]
    public partial class CommiteeEvalSend : System.Web.UI.Page
    {
        Manager MM = new Manager();
        Mailling M = new Mailling();
        DataBankManager DBM = new DataBankManager();
        NewSuggestionModel NSM = new NewSuggestionModel();
        RegistrationLogin RL = new RegistrationLogin();
        static string SendID;
        static string[] ena;
        static string[] mail;
        static string ManID;
        static string us1;
        static string ComEvalInboxID;
        static string TeamID = "";
        static string SIDepPopID;
        static string ProjectID;
        static string UserName;
        static string k;
        static int z = 0;
        static int y = 0;
        static string rowId = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load();
                SuggestionTableView();
                IMPDepartmentNameView();
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
                RL.HEmployeeID = us1;
                Ds = RL.LoginUserDetail(RL);
                UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                Ds = M.DepartmetnRepeterView(M);
                M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                
                Ds = DBM.ComtEvalRepViewSend();
                MailRepeater.DataSource = Ds.Tables[0];
                //MailRepeater.SelectMethod = "IdeaId";
                MailRepeater.DataBind();




            }
        }
        #endregion
        protected void SuggestionGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }
        public void ComEvalInboxIDAutoGeneration()
        {
            DataSet DS = new DataSet();
            DS = DBM.ComEvalInboxIDAuto();
            ComEvalInboxID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        public void ManagerInboxIDAutoGeneration()
        {
            DataSet DS = new DataSet();
            DS = MM.ManIdAuto();
            ManID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        
        public void IMPDepartmentNameView()
        {
            DataSet Ds = new DataSet();


            Ds = MM.ManagerDDl();

            IMPDepaDLists.DataSource = Ds.Tables[0];
            IMPDepaDLists.DataTextField = "Members";
            IMPDepaDLists.DataValueField = "EmpId";
            IMPDepaDLists.DataBind();

        }
        public void SuggestionTableView()
        {
            DataSet Ds = new DataSet();
            Ds = DBM.CommitteeEvaluvationSendGridView();
            SuggestionGridView.DataSource = Ds.Tables[0];
            SuggestionGridView.DataBind();
        }
        protected void MailRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
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
        

        protected void OwnTeamPopButton_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Mail Has Been Send TO Your Team", "alertme()", true);
        }

        [WebMethod()]
        public static CESEmpEmailContents Checking(string IdeaID)
        {
            CommiteeEvalSend NM = new CommiteeEvalSend();
            Mailling M = new Mailling();
            Employee E = new Employee();
            CESEmpEmailContents EEC = new CESEmpEmailContents();
            string chk;
            RegistrationLogin RL = new RegistrationLogin();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                    if ((IdeaID != "") && (IdeaID != "System.Data.DataRowView"))
                    {
                        Console.Write(IdeaID);

                        M.IdeaId = IdeaID.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = M.DBMReplyCE(M);
                        chk = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        if (chk != "Emply")
                        {
                            EEC.RIdeaID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                            EEC.REmpID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                            EEC.RMail = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                            EEC.RSub = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                            EEC.RCon = DS.Tables[0].Rows[0].ItemArray[4].ToString();

                            RL.HEmployeeID = EEC.REmpID;
                            DS = RL.LoginSearch(RL);
                            EEC.REmpName = DS.Tables[0].Rows[0].ItemArray[1].ToString();

                        }
                    }
                    else if (IdeaID == "")
                    {

                        EEC.ErrorLabel = "Check the Employee ID ";
                    }
                    else
                    {
                        EEC.ErrorLabel = "1";
                    }

                }
                catch (Exception ex)
                {
                    EEC.ErrorLabel = "1";

                }
                return EEC;
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);


            }
        }

        public void Insert()
        {
            ComEvalInboxIDAutoGeneration();

        }

        [WebMethod()]
        public static CESEmpEmailContents MChecking(string emp)
        {


            DataBankManager DBM = new DataBankManager();
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
        public void DepIdAutoGeneretion()
        {
            DataSet DS = new DataSet();
            DS = DBM.ComEvalSendIDAuto();
            SendID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }

        public void CommitteeEvaluvationInsert()
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

                    ComEvalInboxIDAutoGeneration();


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


                    DBM.ComInboxID = ComEvalInboxID.ToString();
                    DBM.DBMEmail = Session["Email"].ToString();
                    DBM.ManagerInboxInsert(DBM);





                }
                DBM.CommitteeEvaInsert(DBM);
                string myscript = "alert ('Mail Send Manager');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                z = 1;

                //E.EmployeeInsert(E);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);

            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }

        protected void ManagerButton_Click(object sender, EventArgs e)
        {
            CommitteeEvaluvationInsert();
            if(z==1)
            {
                Clear();
                SuggestionTableView();
            }
        }
        public void Clear()
        {
            TOIMPTextBox.Text = "";
            EmpIDIMPTextBox.Text = "";
            DupEmpIDIMPTextBox.Text = "";
            MailIdIMPTextBox.Text = "";
            DupMailIdIMPTextBox.Text = "";
            SubjectIMPTextBox.Text = "";
            ContectIMPTextBox.Text = "";
            IMPDepaDLists.SelectedIndex = 0;
        }
    }


}