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
    public class ADSEmpEmailContents
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

    }
    [System.Web.Script.Services.ScriptService]
    public partial class AdminSend : System.Web.UI.Page
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
                    Response.Redirect("MainDashBoard.aspx");
                }
                else
                {
                    if (!IsPostBack)
                    {
                        load();
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
                //Ds = RL.LoginUserDetail(RL);
                //UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                //M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                //Ds = M.DepartmetnRepeterView(M);
                //M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                M.IEmpId = us1.ToString();
                Ds = M.DBMSEndRepeterView(M);
                MailRepeater.DataSource = Ds.Tables[0];
                //MailRepeater.SelectMethod = "IdeaId";
                MailRepeater.DataBind();




            }
        }
        #endregion

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
        [WebMethod()]
        public static ADSEmpEmailContents MailContent(string idea)
        {

            ADSEmpEmailContents EECS = new ADSEmpEmailContents();
            Mailling M = new Mailling();
            DataSet DS = new DataSet();
            try
            {

                //RepeaterItem item = (sender as TextBox).Parent as RepeaterItem;
                //index = int.Parse((item.FindControl("lblImageNameTextBox") as Label).Text);

                M.IdeaId = idea.ToString();
                //Session["IdeaID"] = idea.ToString();
                DS = M.DBMSenderRepeatersearch(M);


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

                EECS.IdeaIdTag = DS.Tables[0].Rows[0].ItemArray[8].ToString();

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

        protected void OwnTeamPopButton_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Mail Has Been Send TO Your Team", "alertme()", true);
        }
    }
}