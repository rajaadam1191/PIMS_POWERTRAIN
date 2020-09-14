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
    public class CEmpEmailContentsben
    {
        public string cmtid { get; set; }
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
        public string upload1 { get; set; }
        public string upload2 { get; set; }
        public string upload3 { get; set; }
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
        public string DesTag { get; set; }
        public string CatTag { get; set; }
        public string IdIdTag { get; set; }
        public string BefTag { get; set; }
        public string AftTag { get; set; }
        public string BenTag { get; set; }
        public string upl1Tag { get; set; }
        public string upl2Tag { get; set; }
        public string upl3Tag { get; set; }
        public string IdeaIdTag { get; set; }
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
        public string MailID { get; set; }
        public string Type { get; set; }
        public string Response { get; set; }
        public string Reason { get; set; }
        public string Status { get; set; }
        public string SResponse { get; set; }
        public string SReason { get; set; }
        public string SenderID { get; set; }
        public string Reply { get; set; }
        public string grade { get; set; }
        public string benmatrix { get; set; }

        public string SGrade { get; set; }
        public string SBenefitsmatrix { get; set; }
        
    }
    [System.Web.Script.Services.ScriptService]
    public partial class BeneficiaryDashboard : System.Web.UI.Page
    {
        Mailling M = new Mailling();
        DataBankManager DBM = new DataBankManager();
        NewSuggestionModel NSM = new NewSuggestionModel();
        RegistrationLogin RL = new RegistrationLogin();
        Manager MM = new Manager();
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

                        load();
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
                    //RL.HEmployeeID = us1;
                    //Ds = RL.LoginUserDetail(RL);
                    //UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    //M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                    //Ds = M.DepartmetnRepeterView(M);
                    //M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    MM.CMID = us1.ToString();
                    Ds = MM.BenEvalRepView(MM);
                    MailRepeater.DataSource = Ds.Tables[0];
                    //MailRepeater.SelectMethod = "IdeaId";
                    MailRepeater.DataBind();

                }
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

        [WebMethod()]
        public static CEmpEmailContentsben MailContent(string idea)
        {

            CEmpEmailContentsben EECS = new CEmpEmailContentsben();
            Mailling M = new Mailling();
            DataBankManager DBM = new Models.DataBankManager();
            Manager MM = new Manager();
            DataSet DS = new DataSet();
            try
            {

                //RepeaterItem item = (sender as TextBox).Parent as RepeaterItem;
                //index = int.Parse((item.FindControl("lblImageNameTextBox") as Label).Text);
                index = idea.ToString();
                MM.IdeaId = idea.ToString();
                //Session["IdeaID"] = idea.ToString();
                DS = MM.BenEvalRepViewUpatePannel(MM);


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

                EECS.SGrade = "Grade :";
                EECS.SBenefitsmatrix = "Benefits Matrix :";

                EECS.cmtid = idea.ToString();
                EECS.IdeaIdTag = DS.Tables[0].Rows[0].ItemArray[8].ToString();
                idea = DS.Tables[0].Rows[0].ItemArray[8].ToString();

                EECS.grade = DS.Tables[0].Rows[0].ItemArray[24].ToString();
                EECS.benmatrix = DS.Tables[0].Rows[0].ItemArray[25].ToString();

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
                EECS.UpLoad1 = DS.Tables[0].Rows[0].ItemArray[26].ToString();
                // EEC.upload1 = "/PIMS/UI/Image/" + EEC.UpLoad1;
                EECS.upload1 = "../UI/Image/" + EECS.UpLoad1;
                EECS.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[27].ToString();
                //EEC.upload2 = "/PIMS/UI/Image/" + EEC.UpLoad2;
                EECS.upload2 = "../UI/Image/" + EECS.UpLoad2;
                EECS.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[28].ToString();
                // EEC.upload3 = "/PIMS/UI/Image/" + EEC.UpLoad3;
                EECS.upload3 = "../UI/Image/" + EECS.UpLoad3;
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
           

        }
        [WebMethod()]
        public static CEmpEmailContentsben Checking(string emp)
        {
            NewSuggestionModel NSM = new NewSuggestionModel();
            Employee E = new Employee();
            CEmpEmailContentsben tdp = new CEmpEmailContentsben();
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
        public static CEmpEmailContentsben CheckingUpdate(string emp)
        {
            NewSuggestionModel NSM = new NewSuggestionModel();
            Employee E = new Employee();
            CEmpEmailContentsben tdp = new CEmpEmailContentsben();
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

            
            insert();

        }
        public void insert()
        {
            try
            {
                if (index != "" && index != "System.Data.DataRowView")
                {
                    MM.ComInboxID = index.ToString();
                    MM.Status = "Same";
                    //DBM.Suggestion = RBTApTextBox.Text.ToString().TrimStart().TrimEnd();
                    MM.Reason = "Same";
                    MM.BeneficiaryResponse(MM);

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
                    MM.ComInboxID = index.ToString();
                    MM.Status = "Change";
                    //DBM.Suggestion = RemarkByTeamTextBox.Text.ToString().TrimStart().TrimEnd();
                    //DBM.Reason = ReasonTextBox.Text.ToString().TrimStart().TrimEnd();
                    MM.BeneficiaryResponse(MM);

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
        public void BenSendIDAutoGeneration()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = MM.BenSendBoxAuto();
                MM.CMID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
                 
            }
          
        }
        public void Upinsert()
        {
            try
            {

                string idea = CEideaidTextBox.Text;
                CEmpEmailContentsben eee = new CEmpEmailContentsben();
                if (index != "" && index != "System.Data.DataRowView")
                {
                    MM.IdeaId = idea;
                    MM.ComInboxID = index.ToString();
                    string check;
                    check = RepCheckRadioButtonList.SelectedItem.Text.ToString();
                    MM.Status = RepCheckRadioButtonList.SelectedItem.Text.ToString();

                    if (check == "Same")
                    {

                        MM.benselect(MM);

                    }
                    else
                    {
                        MM.BENGRADE = Request.Form["fname"];
                        MM.BENRATING = Request.Form["fname1"] + "-" + Request.Form["fname2"];
                        MM.benselectchange(MM);
                    }


                    // MM.BeneficiaryResponse(MM);


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

        protected void RejectPopButton_Click(object sender, EventArgs e)
        {
            
            Rejinsert();
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            Upinsert();
            Response.Redirect("BeneficiaryDashboard.aspx");
            
        }


        
        public void ComEvalInboxIDAutoGeneration()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = MM.ComEvalInboxIDAuto();
                ComEvalInboxID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
                 
            }
           
        }













    }
}