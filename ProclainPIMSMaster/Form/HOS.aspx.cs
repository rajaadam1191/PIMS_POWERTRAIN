using ProclainPIMSMaster.Form;
using ProclainPIMSMaster.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProclainPIMSMaster
{
    public class HOSEmpEmailContents
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
    }
    [System.Web.Script.Services.ScriptService]
    public partial class HOS : System.Web.UI.Page
    {
        Mailling M = new Mailling();
        DataBankManager DBM = new DataBankManager();
        NewSuggestionModel NSM = new NewSuggestionModel();
        RegistrationLogin RL = new RegistrationLogin();
        static string SendID;
        static string[] ena;
        static string[] mail;
        static int index;
        static string us1;
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
        public static CESEmpEmailContents Checking(string emp)
        {
            CommiteeEvalSend NM = new CommiteeEvalSend();
            DataBankManager M = new DataBankManager();
            Employee E = new Employee();
            CESEmpEmailContents tdp = new CESEmpEmailContents();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                    if ((emp != "") && (emp != "System.Data.DataRowView"))
                    {
                        Console.Write(emp);

                        M.IdeaId = emp.ToString().Trim();
                       


                    }

                    else if (emp == "")
                    {

                        tdp.ErrorLabel = "Check the Employee ID ";
                    }
                    else
                    {
                        tdp.ErrorLabel = "1";
                    }

                }
                catch (Exception ex)
                {
                    tdp.ErrorLabel = "1";

                }
                return tdp;
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);


            }
        }
    }

}