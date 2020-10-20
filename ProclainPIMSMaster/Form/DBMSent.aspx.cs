using ProclainPIMSMaster.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProclainPIMSMaster.Form
{
    public partial class DBMSent : System.Web.UI.Page
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
        static string ComEvalInboxID;
        static string chk;
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

                        ProclainPIMSMaster.AdminMaster admaster = (ProclainPIMSMaster.AdminMaster)this.Master;
                        admaster.ChangeTitle("DBM sent mails");
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }
          
        }
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

                    DataSet Ds = new DataSet();
                    RL.HEmployeeID = us1;
                    //Ds = RL.LoginUserDetail(RL);
                    //UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    //M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                    //Ds = M.DepartmetnRepeterView(M);
                    //M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

                    Ds = M.SelectRepeterView_Type("DBA");
                    int c = Ds.Tables[0].Rows.Count;
                    count.InnerHtml = c.ToString();
                    MailRepeaterCom.DataSource = Ds.Tables[0]; 
                    MailRepeaterCom.DataBind();

                    Ds = M.SelectRepeterView_Type_HOD("DBA");
                    int chod = Ds.Tables[0].Rows.Count;
                    counthod.InnerHtml = chod.ToString();
                    MailRepeaterHOD.DataSource = Ds.Tables[0];
                    MailRepeaterHOD.DataBind();

                    Ds = M.SelectRepeterView_Type_IMPL("DBA");
                    int cimp = Ds.Tables[0].Rows.Count;
                    countimp.InnerHtml = cimp.ToString();
                    MailRepeaterimp.DataSource = Ds.Tables[0];
                    MailRepeaterimp.DataBind();

                    Ds = M.SelectRepeterView_Type_HOS("DBA");
                    int chos = Ds.Tables[0].Rows.Count;
                    counthos.InnerHtml = chos.ToString();
                    MailRepeaterHOS.DataSource = Ds.Tables[0];
                    MailRepeaterHOS.DataBind();

                    Ds = M.SelectRepeterView_Type_BEN("DBA");
                    int cben = Ds.Tables[0].Rows.Count;
                    countben.InnerHtml = cben.ToString();
                    MailRepeaterben.DataSource = Ds.Tables[0];
                    MailRepeaterben.DataBind();

                    Ds = M.SelectRepeterView_Type_FIN("DBA");
                    int cfin = Ds.Tables[0].Rows.Count;
                    countfin.InnerHtml = cfin.ToString();
                    MailRepeaterfin.DataSource = Ds.Tables[0];
                    MailRepeaterfin.DataBind();

                }
            }
            catch (Exception EX)
            {

            }



        }
        [WebMethod()]
        public static EmpEmailContent MailContent(string idea)
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
                EEC.upload1 = "../UI/Image/" + EEC.UpLoad1;
                EEC.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[12].ToString();
                EEC.upload2 = "../UI/Image/" + EEC.UpLoad2;
                EEC.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[13].ToString();
                EEC.upload3 = "../UI/Image/" + EEC.UpLoad3;

                EEC.status = DS.Tables[0].Rows[0].ItemArray[10].ToString();
                DS = M.DBMReplyCE(M);
                chk = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                if (chk != "Empty")
                {
                    EEC.RIdeaID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                    EEC.REmpID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                    EEC.RMail = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                    EEC.RSub = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                    EEC.RCon = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                    string[] breakMysentence = EEC.REmpID.Split(',');
                    string[] ena1 = new string[breakMysentence.Length];
                    string n = "";
                    foreach (string data in breakMysentence)
                    {

                        ena1[i] = data;
                        i = i + 1;
                        RL.HEmployeeID = data.ToString().TrimStart().TrimEnd();
                        DS = RL.LoginSearch(RL);
                        if (n != "")
                        {
                            n = n + ", " + DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        }
                        else
                        {
                            n = n + DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        }


                    }
                    EEC.REmpName = n;
                }
                 
                return EEC;


            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }
        }
    }
}