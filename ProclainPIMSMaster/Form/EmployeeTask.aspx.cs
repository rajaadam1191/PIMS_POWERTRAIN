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
    

    [System.Web.Script.Services.ScriptService]
    public partial class EmployeeTask : System.Web.UI.Page
    {
        Manager MM = new Manager();
        Mailling M = new Mailling();
        DataBankManager DBM = new DataBankManager();
        NewSuggestionModel NSM = new NewSuggestionModel();
        Employee em = new Employee();
        static string SendID;
        static string[] ena;
        static string[] mail;
        static string index;
        static string ComEvalInboxID;
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
        static string extn;
        static string etn;
        static string path;
        string giud = Guid.NewGuid().ToString();
        static string ImageName;
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
                       
                            NSDataPasser dp = new NSDataPasser();
                            dp.sesid = Session["UserId"].ToString().TrimStart().TrimEnd();
                             load();
                        //if(dp.sesid != "admin")
                        //{
                        //    load();
                        //}

                        //
                        //         IMPDepartmentNameView();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        //public void IMPDepartmentNameView()
        //{
        //    try
        //    {
        //        DataSet Ds = new DataSet();


        //        //        Ds = MM.HOSDDl();

        //        IMPDepaDLists.DataSource = Ds.Tables[0];
        //        IMPDepaDLists.DataTextField = "Members";
        //        IMPDepaDLists.DataValueField = "EmpId";
        //        IMPDepaDLists.DataBind();
        //    }
        //    catch (Exception e1)
        //    {
                 
        //    }
          

        //}

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
                Ds = em.ImplTeamEvalRepView(em);


                
                    MailRepeater.DataSource = Ds.Tables[0];
                    //MailRepeater.SelectMethod = "IdeaId";
                    MailRepeater.DataBind();
                  
               


               




            }
        }
        #endregion

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
        protected void ManagerButton_Click(object sender, EventArgs e)
        {
            try
            {
                TeamEvaluvationInsert();
                Response.Redirect("EmployeeTask.aspx",false);
                if (z == 1)
                {
                    Clear();

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
            DupEmpIDIMPTextBox.Text = "";
            MailIdIMPTextBox.Text = "";
            DupMailIdIMPTextBox.Text = "";
            SubjectIMPTextBox.Text = "";
            ContectIMPTextBox.Text = "";
            //IMPDepaDLists.SelectedIndex = 0;
        }
        public void DepIdAutoGeneretion()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = em.ComEvalSendIDAuto();
                SendID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
                 
            }
          
        }
        public void ComEvalInboxIDAutoGeneration()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = DBM.IMPLTeamEvalInboxIDAuto();
                ComEvalInboxID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
                 
            }
          
        }
        public void TeamEvaluvationInsert()
        {
            CEmpEmailContents EECS = new CEmpEmailContents();
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

                    if (ImageFileUpload3.HasFile)
                    {
                        if (ImageFileUpload3.PostedFile.ContentLength < 20728650)
                        {
                            extn = System.IO.Path.GetExtension(ImageFileUpload3.FileName);
                            // path = Server.MapPath("\\PIMS\\UI\\Image\\");
                            path = Server.MapPath("..\\UI\\Image\\");
                            ImageName = ImageFileUpload3.FileName;
                            ImageFileUpload3.SaveAs(path + ImageName);
                            etn = ImageName;
                            //Label1.Text = path;
                        }
                    }
                    else
                    {
                        etn = "No File";
                    }
                    DBM.FileUpload3 = etn.ToString();

                    DBM.Remark1 = "i";
                    DBM.Remark2 = "HOS";
                    string idof = txtHODid.Text;//Request.Form["hodid2"];
                    DBM.HODID = idof;

                   DBM.ComInboxID = ComEvalInboxID.ToString();
                    DBM.DBMEmail = Session["Email"].ToString();
                    DBM.HosInboxInsert(DBM);





                }
                DBM.ImplTeamEvaInsert(DBM);
                string myscript = "alert ('Mail Send HOS');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                z = 1;

                //E.EmployeeInsert(E);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);

            }
            catch (Exception e1)
            {
                NSM.ExceptionInsert(e1.ToString());
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
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
               // em.IdeaID = us1.ToString();
               em.IdeaID= idea.ToString();
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

                EECS.subject = DS.Tables[0].Rows[0].ItemArray[16].ToString();
                EECS.Before = DS.Tables[0].Rows[0].ItemArray[17].ToString();
                EECS.After = DS.Tables[0].Rows[0].ItemArray[18].ToString();
                EECS.UpLoad1 = DS.Tables[0].Rows[0].ItemArray[24].ToString();
                // EEC.upload1 = "/PIMS/UI/Image/" + EEC.UpLoad1;
                EECS.upload1 = "../UI/Image/" + EECS.UpLoad1;
                EECS.UpLoad2 = DS.Tables[0].Rows[0].ItemArray[25].ToString();
                //EEC.upload2 = "/PIMS/UI/Image/" + EEC.UpLoad2;
                EECS.upload2 = "../UI/Image/" + EECS.UpLoad2;
                EECS.UpLoad3 = DS.Tables[0].Rows[0].ItemArray[26].ToString();
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
                        DS = M.HOSDDl(M);
                    //    DS = M.ManagerNameSelect(M);
                        EEC.HEmployeeID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        EEC.HEmployeeName = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        EEC.Email = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        EEC.CCMail= DS.Tables[0].Rows[0].ItemArray[3].ToString();
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

        
    }
}