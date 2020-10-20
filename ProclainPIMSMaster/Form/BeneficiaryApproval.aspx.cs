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
    public class CESEmpEmailContentshrApproval
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
    public partial class BeneficiaryApproval : System.Web.UI.Page
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
        static string index;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["UserId"].ToString() == null || Session["UserId"].ToString() == "")
                {
                    Response.Redirect("MainDashBoard.aspx");
                }
                else
                {
                    if (!IsPostBack)
                    {

                        //ProclainPIMSMaster.AdminMaster admaster = (ProclainPIMSMaster.AdminMaster)this.Master;
                        //admaster.ChangeTitle("Beneficiary Department Response");


                        load();
                        SuggestionTableView();
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
            if (Session["UserId"] == null)
            {
                Response.Redirect("MainDashBoard.aspx");
            }
            else
            {
                us1 = Session["UserId"].ToString();

                DataSet Ds = new DataSet();
                RL.HEmployeeID = us1;
                //Ds = RL.LoginUserDetail(RL);
                //UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                //M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                //Ds = M.DepartmetnRepeterView(M);
                //M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                MM.CMID = us1.ToString();
                Ds = MM.HREvalRepView(MM);
                int c = Ds.Tables[0].Rows.Count;
                count.InnerHtml = c.ToString();
                MailRepeater.DataSource = Ds.Tables[0];
                //MailRepeater.SelectMethod = "IdeaId";
                MailRepeater.DataBind();

                Ds = MM.HREvalRepViewComplete(MM);
                int ccom = Ds.Tables[0].Rows.Count;
                countcom.InnerHtml = ccom.ToString();
                MailRepeatercomplete.DataSource = Ds.Tables[0];
                //MailRepeater.SelectMethod = "IdeaId";
                MailRepeatercomplete.DataBind();




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
            try
            {
                DataSet DS = new DataSet();
                DS = DBM.ComEvalInboxIDAuto();
                ComEvalInboxID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {

            }

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
                Ds = MM.FinanceEvaluvationSendGridView();
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
        public static CESEmpEmailContentshrApproval Checking(string IdeaID)
        {
            CommiteeEvalSend NM = new CommiteeEvalSend();
            Mailling M = new Mailling();
            Employee E = new Employee();
            CESEmpEmailContentshrApproval EEC = new CESEmpEmailContentshrApproval();
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
                        DS = M.BeneficiaryReplyCE(M);
                        chk = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        if (chk != "Empty")
                        {
                            EEC.RIdeaID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                            EEC.REmpID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                            EEC.RMail = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                            if (EEC.RMail == "A")
                                EEC.BefTag = "1500";
                            else if (EEC.RMail == "B")
                                EEC.BefTag = "1000";
                            else
                                EEC.BefTag = "500";
                            EEC.RSub = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                            //EEC.RCon = DS.Tables[0].Rows[0].ItemArray[4].ToString();

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
            try
            {
                ComEvalInboxIDAutoGeneration();

            }
            catch (Exception e1)
            {

            }

        }

        [WebMethod()]
        public static CESEmpEmailContentsfin MChecking(string emp)
        {


            DataBankManager DBM = new DataBankManager();
            CESEmpEmailContentsfin EEC = new CESEmpEmailContentsfin();
            DataSet DS = new DataSet();
            Manager M = new Manager();

            try
            {

                try
                {

                    if (emp != "" && emp != "System.Data.DataRowView")
                    {
                        M.IdeaId = emp.ToString();
                        index = emp.ToString();
                        DS = M.EmployeeNameSelect(M);
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

        public void HREvaluvationInsert()
        {
            try
            {
                DataSet Ds = new DataSet();

                if (index != "" && index != "System.Data.DataRowView")
                {
                    MM.ComInboxID = IMPIdeaIdTextBox.Text;

                    MM.ApproveUser = ideamember.Text.ToString();
                    MM.ApproveUseramt = ideamemberamount.Text.ToString();
                    MM.Approveimpl= implementmember.Text.ToString();
                    MM.Approveimplamt= implementmemberamount.Text.ToString();
                    MM.HRSelect(MM);

                    string myscript = "alert ('Thanks For Response');";
                    Response.Redirect("BeneficiaryApproval.aspx");
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                    z = 1;
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

        protected void ManagerButton_Click(object sender, EventArgs e)
        {
            try
            {
                HREvaluvationInsert();
                if (z == 1)
                {
                    Clear();
                    SuggestionTableView();
                }
            }
            catch (Exception e1)
            {

            }

        }
        public void Clear()
        {
            TOIMPTextBox.Text = "";
            EmpIDIMPTextBox.Text = "";
            finance.Text = "";
            MailIdIMPTextBox.Text = "";
            financeID.Text = "";
            financeMailID.Text = "";

            SubjectIMPTextBox.Text = "";






        }
    }


}