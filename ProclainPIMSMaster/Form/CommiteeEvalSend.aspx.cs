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
        public string CCMail { get; set; }
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
                        SuggestionTableView();
                        IMPDepartmentNameView();

                        ProclainPIMSMaster.AdminMaster admaster = (ProclainPIMSMaster.AdminMaster)this.Master;
                        admaster.ChangeTitle("Committe Response");
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
                //RL.HEmployeeID = us1;
                //Ds = RL.LoginUserDetail(RL);
                //UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                //M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                //Ds = M.DepartmetnRepeterView(M);
                //M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                
                Ds = DBM.ComtEvalRepViewSend();
                int c = Ds.Tables[0].Rows.Count;
                count.InnerHtml = c.ToString();
                MailRepeater.DataSource = Ds.Tables[0];
                //MailRepeater.SelectMethod = "IdeaId";
                MailRepeater.DataBind();

                Ds = DBM.ComtEvalRepViewSendcomplete();
                int chod = Ds.Tables[0].Rows.Count;
                counthod.InnerHtml = chod.ToString();
                MailRepeatercomplete.DataSource = Ds.Tables[0];
                //MailRepeater.SelectMethod = "IdeaId";
                MailRepeatercomplete.DataBind();

                Ds = DBM.ComtEvalRepViewSendreject();
                int crej = Ds.Tables[0].Rows.Count;
                countrej.InnerHtml = crej.ToString();
                MailRepeaterreject.DataSource = Ds.Tables[0];
                //MailRepeater.SelectMethod = "IdeaId";
                MailRepeaterreject.DataBind();

                Ds = DBM.ComtEvalRepViewSendFromManager();
                int cfrmman = Ds.Tables[0].Rows.Count;
                countman.InnerHtml = cfrmman.ToString();
                MailRepeaterFrmman.DataSource = Ds.Tables[0];
                //MailRepeater.SelectMethod = "IdeaId";
                MailRepeaterFrmman.DataBind();


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
            try
            {
                DataSet DS = new DataSet();
                DS = MM.ManIdAuto();
                ManID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
                 
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
        public void SuggestionTableView()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = DBM.CommitteeEvaluvationSendGridView();
                SuggestionGridView.DataSource = Ds.Tables[0];
                SuggestionGridView.DataBind();
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
                        if (chk != "Empty")
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
            try
            {
                DataSet DS = new DataSet();
                DS = DBM.ComEvalSendIDAuto();
                SendID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
 
            }
          
        }

        public void CommitteeEvaluvationInsert()
        {
            try
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
                        string st = IMPDepaDLists.Text.ToString();
                        string[] res = st.Split(',');
                        DBM.Remark3 = res[1];


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
            catch (Exception e1)
            {
                 
            }
            
        }

        protected void ManagerButton_Click(object sender, EventArgs e)
        {
            try
            {
                CommitteeEvaluvationInsert();
                if (z == 1)
                {
                    Clear();
                    SuggestionTableView();
                    Response.Redirect("CommiteeEvalSend.aspx");
                }
            }
            catch (Exception e1)
            {
                 
            }
          
        }

        protected void Alterreject_Click(object sender, EventArgs e)
        {
            try
            {
                DBM.Rejideaid = IdeaIDRepTextBox.Text.ToString();
                DBM.Rejstatus = RepCheckRadioButtonList.SelectedItem.Text.ToString();
                DBM.Rejempid = EmpIdRepTextBox.Text.ToString();
                DBM.DBMchangereject(DBM);
                Response.Redirect("CommiteeEvalSend.aspx");
            }
            catch (Exception e1)
            {

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
        [WebMethod ]
        public static EmpEmailContent GetDetail(string idea)
        {

            EmpEmailContent EEC = new EmpEmailContent();
            Mailling M = new Mailling();
            DataSet DS = new DataSet();
            RegistrationLogin RL = new RegistrationLogin();
            try
            {
                int i = 0;

                //RepeaterItem item = (sender as TextBox).Parent as RepeaterItem;
                //index = int.Parse((item.FindControl("lblImageNameTextBox") as Label).Text);

                M.IdeaId = idea.ToString();

                DS = M.Repeatersearch(M);


                EEC.fromTag = "From : ";
                EEC.EIDTag = "Employee ID : ";
                EEC.DepTag = "Department : ";
                EEC.DesTag = "Designaton : ";
                EEC.CatTag = "Category : ";
                EEC.IdIdTag = "Idea ID: ";
                EEC.BefTag = "Before : ";
                EEC.AftTag = "After : ";
                EEC.BenTag = "Benefits : ";
                EEC.upl1Tag = "FileUpload1";
                EEC.upl2Tag = "FileUpload2";
                EEC.upl3Tag = "FileUpload3";
                EEC.IdeaIdTag = idea.ToString();

                EEC.empname = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                EEC.empid = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                EEC.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                EEC.Designation = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                EEC.Date = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                EEC.category = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                EEC.subject = DS.Tables[0].Rows[0].ItemArray[6].ToString();
                EEC.Before = DS.Tables[0].Rows[0].ItemArray[7].ToString();
                EEC.After = DS.Tables[0].Rows[0].ItemArray[8].ToString();
                EEC.Benifit = DS.Tables[0].Rows[0].ItemArray[9].ToString();
                EEC.UpLoad1 = DS.Tables[0].Rows[0].ItemArray[11].ToString();
                // EEC.upload1 = "/PIMS/UI/Image/" + EEC.UpLoad1;
                EEC.upload1 = "../UI/Image/" + EEC.UpLoad1;
                EEC.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[12].ToString();
                //EEC.upload2 = "/PIMS/UI/Image/" + EEC.UpLoad2;
                EEC.upload2 = "../UI/Image/" + EEC.UpLoad2;
                EEC.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[13].ToString();
                // EEC.upload3 = "/PIMS/UI/Image/" + EEC.UpLoad3;
                EEC.upload3 = "../UI/Image/" + EEC.UpLoad3;
                






                return EEC;


            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }
        }
    }


}