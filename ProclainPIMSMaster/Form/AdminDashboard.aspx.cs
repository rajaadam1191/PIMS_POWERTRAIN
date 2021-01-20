using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;

namespace ProclainPIMSMaster.Form
{
    public class EmpEmailContent
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
        public string upload1 { get; set; }
        public string upload2 { get; set; }
        public string upload3 { get; set; }
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
        public string ErrorLabel { get; set; }
        public string RIdeaID { get; set; }
        public string REmpID { get; set; }
        public string REmpName { get; set; }
        public string RSub { get; set; }
        public string RCon { get; set; }
        public string RMail { get; set; }

    }
    [System.Web.Script.Services.ScriptService]
    public partial class AdminDashboard : System.Web.UI.Page
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
                //Session["UserId"]="PI-266";
                if (Session["UserId"].ToString() == null || Session["UserId"].ToString() == "")
                {
                    Response.Redirect("MainDashBoard.aspx");
                }
                else
                {
                    us1 = Session["UserId"].ToString();
                    if (!IsPostBack)
                    {

                        ProclainPIMSMaster.AdminMaster admaster = (ProclainPIMSMaster.AdminMaster)this.Master;
                        admaster.ChangeTitle("New Suggestions Dashboard");


                        PFuthurImageButton.Visible = false;
                        DepartmentNameView();

                        MailingRepeterControl();
                        IMPDepartmentNameView();
                        //clear();
                        IdeaIDTextBox.Text = CEideaidTextBox.Text;
                        IMPIdeaIdTextBox.Text = CEideaidTextBox.Text;


                        //DesignationPopUptNameView();

                    }
                }

               
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx");
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
        public void DepartmentNameView()
        {
            try
            {
                DataSet Ds = new DataSet();

                Ds = DBM.DepartmentSelectOthersAllComEvaPopUp();


                DepartmentPopUPDDList.DataSource = Ds.Tables[0];
                DepartmentPopUPDDList.DataTextField = "DepName";
                DepartmentPopUPDDList.DataValueField = "DepId";
                DepartmentPopUPDDList.DataBind();
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


                Ds = NSM.DepartmentSelectAll();

                IMPDepaDLists.DataSource = Ds.Tables[0];
                IMPDepaDLists.DataTextField = "DepName";
                IMPDepaDLists.DataValueField = "DepId";
                IMPDepaDLists.DataBind();

            }
            catch (Exception e1)
            {
            }
           
        }

        #region Default Employee Details
        public void load()
        {
            try {
                if (Session["UserId"] == null)
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    us1 = Session["UserId"].ToString();

                    if (us1 == "admin")
                    {
                        DataSet Ds = new DataSet();
                        RL.HEmployeeID = us1;
                        //Ds = RL.LoginUserDetail(RL);
                        //UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                        //M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                        //Ds = M.DepartmetnRepeterView(M);
                        //M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

                        Ds = M.SelectRepeterView();
                        if (Ds == null)
                        {
                            MailRepeater.DataSource = "No Record Found";
                        }
                        MailRepeater.DataSource = Ds.Tables[0];
                        //MailRepeater.SelectMethod = "IdeaId";
                        MailRepeater.DataBind();
                    }
                    else
                    {
                        DataSet Ds = new DataSet();
                        RL.HEmployeeID = us1;
                        Ds = RL.LoginUserDetail(RL);
                        UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                        M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                        Ds = M.DepartmetnRepeterView(M);
                        M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

                        Ds = M.SelectRepeterView();
                        if (Ds == null)
                        {
                            MailRepeater.DataSource = "No Record Found";
                        }
                        MailRepeater.DataSource = Ds.Tables[0];
                        //MailRepeater.SelectMethod = "IdeaId";
                        MailRepeater.DataBind();

                    }
                    

                }
                }
                catch(Exception EX)
            {

            }


            
        }
        #endregion


        #region Employee Id Search
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
                //EEC.upl3Tag = "FileUpload3";
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
        #endregion

        public void MailingRepeterControl()
        {
            load();
        }


        public void lnk_mailLink_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                string x = e.ToString();
                PFuthurImageButton.Visible = true;
                string s = sender.ToString();
                RepeaterItem item = (sender as ImageButton).Parent as RepeaterItem;
                index = int.Parse((item.FindControl("lblImageName") as Label).Text);
                IdeaIDTextBox.Text = CEideaidTextBox.Text;
                IMPIdeaIdTextBox.Text = CEideaidTextBox.Text;
                //lblHeadertag.InnerHtml = index.ToString();
                //search();
            }
            catch (Exception)
            {

                throw;
            }
        }
        public string EmailContent(string idx)
        {
            return idx;
        }
        protected void PFuthurImageButton_Click(object sender, ImageClickEventArgs e)
        {

            //IdeaIDTextBox.Text = index.ToString();

        }

        protected void DepRepCheckBoxList_SelectedIndexChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < DepRepCheckBoxList.Items.Count; i++)
            {
                if (DepRepCheckBoxList.Items[i].Selected)
                {
                    k = k + DepRepCheckBoxList.Text + ", ";

                    if (DepRepCheckBoxList.Items[i].Text == "Others")
                    {


                        k = k + OthersDepRepTextBox.Text;
                    }

                    ToTextBox.Text = k.ToString();

                }

            }





            //protected void MailRepeater_ItemCreated(object sender, RepeaterItemEventArgs e)
            //{
            //    index = int.Parse((e.Item.FindControl("lblImageName") as Label);
            //    search();
            //}
        }
        [WebMethod()]
        public static EmpEmailContent Checking(string emp)
        {


            DataBankManager DBM = new DataBankManager();
            EmpEmailContent EEC = new EmpEmailContent();
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

                        DBM.IDepName = emp.ToString();
                      DS = DBM.CommitteeEmailDashBoard(DBM);  //this works based on departments
                     //   DS=DBM.CommitteeEmailDashBoard_byEmployeeeID(emp); // this works based on employee id
                        count = DS.Tables[0].Rows.Count;
                        if (DS != null || DS.Tables[0].Rows.Count > 0)
                        {
                            if (count == 1)
                            {
                                EEC.HEmployeeID = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                                EEC.HEmployeeName = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                                EEC.Email = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                            }
                            else
                            {
                                for (int i = 0; i < count; i++)
                                {
                                    ei = DS.Tables[0].Rows[i].ItemArray[5].ToString();
                                    en = DS.Tables[0].Rows[i].ItemArray[3].ToString();
                                    em= DS.Tables[0].Rows[i].ItemArray[4].ToString();
                                    if(i < count-1)
                                    {
                                        EEC.HEmployeeID = EEC.HEmployeeID + ei + ", ";
                                        EEC.HEmployeeName = EEC.HEmployeeName + en + ", ";
                                        EEC.Email = EEC.Email + em + ", ";
                                    }
                                    else
                                    {
                                        EEC.HEmployeeID = EEC.HEmployeeID + ei;
                                        EEC.HEmployeeName = EEC.HEmployeeName + en;
                                        EEC.Email = EEC.Email + em;
                                    }


                                }
                            }
                            EEC.ErrorLabel = "0";
                        }
                        else if (emp == "")
                        {

                            EEC.ErrorLabel = "Check the Employee ID ";
                        }
                        else
                        {
                            EEC.ErrorLabel = "1";
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
                return EEC;
            }
            
            catch (Exception ex)
            {
                 throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }


        }

        public void ManagerInsert()
        {
            DataSet Ds = new DataSet();
            try
            {
                int i = 0;
                int j = 0;

                string array1 = DupEmpIDIMPTextBox.Text.ToString();
                string array = DupEmpIDIMPTextBox.Text.ToString();
                string array2 = MailIdIMPTextBox.Text.ToString();
                string array22 = EmpIDIMPTextBox.Text.ToString();

                string[] breakMysentence = array.Split(',');
                string[] ena1 = new string[breakMysentence.Length];
                string[] mail1 = new string[breakMysentence.Length];
                foreach (string data in breakMysentence)
                {

                    ena1[i] = data;
                    i = i + 1;
                   
                }
                string[] breakMysentence1 = array1.Split(',');
                foreach (string data1 in breakMysentence1)
                {
                    mail1[j] = data1;
                    j = j + 1;

                }

                for (int x = 0; x < ena.Length; x++)
                {
                    DepIdAutoGeneretion();
                    DBM.SendId = SendID.ToString();
                    DBM.IdeaId = IMPIdeaIdTextBox.Text.ToString();
                    DBM.Date = System.DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                    DBM.HEmployeeID = ena1[x].ToString().TrimStart().TrimEnd();
                    DBM.HEmployeeName = Session["UserId"].ToString();

                    DBM.Email = mail1[x].ToString().TrimStart().TrimEnd();
                    DBM.Subject = SubjectIMPTextBox.Text.TrimStart().TrimEnd().ToString();
                    DBM.Discription = ContectIMPTextBox.Text.TrimStart().TrimEnd().ToString();
                    DBM.Remark1 = "i";
                    DBM.Type = "Manager";
                    DBM.CommitteeEvaInsert(DBM);


                }



                //E.EmployeeInsert(E);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);

            }
            catch (Exception ex)
            {
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }
        protected void CommitteePopButton_Click(object sender, EventArgs e)
        {
            try
            {
                CommitteeEvaluvationInsert();
                clear();
                Response.Redirect("AdminDashboard.aspx", false);
            }
            catch (Exception e1)
            {
                 
            }
               
        }
        
        protected void ImproButton_Click(object sender, EventArgs e)
        {
            try
            {
                ManagerInsert();
            }
            catch (Exception e1)
            {
                 
            }
           
        }

        public void clear()
        {
            IdeaIDTextBox.Text = "";
            DepRepCheckBoxList.ClearSelection();
            ToTextBox.Text = "";
            EmpIDTextBox.Text = "";
            mailidtext.Text = "";
            subjecttext.Text = "";
            ComposeTextBox.Text = "";

        }
        public void CommitteeEvaluvationInsert()
        {
            DataSet Ds = new DataSet();
            try
            {
                int i = 0;
                int j = 0;
                string array1 = mailidtext.Text.ToString();
                string array = EmpDepTextBox.Text.ToString();
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
                    

                    DBM.SendId = SendID.ToString();
                    DBM.IdeaId = IdeaIDTextBox.Text.ToString();
                    DBM.HEmployeeName = us1.ToString();
                    DBM.TempMail = array1.ToString();
                    DBM.TempId = ds.ToString();
                    DBM.Date = System.DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                    DBM.HEmployeeID = ena1[x].ToString().TrimStart().TrimEnd();
                    DBM.Email = mail1[x].ToString().TrimStart().TrimEnd();
                    DBM.Subject = subjecttext.Text.TrimStart().TrimEnd().ToString();
                    DBM.Discription = ComposeTextBox.Text.TrimStart().TrimEnd().ToString();
                    DBM.Remark1 = "i";
                    DBM.Remark2 = "Committee";

                    
                    DBM.ComInboxID = ComEvalInboxID.ToString();
                    DBM.DBMEmail = Session["Email"].ToString();
                    DBM.CommitteeEvaInboxInsert(DBM);




                }
                DBM.CommitteeEvaInsert(DBM);
                string myscript = "alert ('Mail Send');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);


                //E.EmployeeInsert(E);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);

            }
            catch (Exception ex)
            {
               // throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }

       
    }
}