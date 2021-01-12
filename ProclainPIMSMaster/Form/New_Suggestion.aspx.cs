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
    public class NSDataPasser
    {
        public string empid { get; set; }
        public string empname { get; set; }
        public string Department { get; set; }
        public string Designation { get; set; }
        public string ErrorLabel { get; set; }
        public string sesid { get; set; }
    }
    [System.Web.Script.Services.ScriptService]
    public partial class AddSuggestion : System.Web.UI.Page
    {
        NewSuggestionModel NSM = new NewSuggestionModel();
        ValidationClass VC = new ValidationClass();
        Exception ex;
        static int str;
        string SIdeaId="";
        static int DID;
        static string SIDepID="";
        static int DDesID;
        static string SIDesID="";
        static string SIEmpID;
        static int i = 0;
        string status="Suggestion Received";
        string Approved="0";
        string Remark1 = "0";
        string Remark2 = "0";
        string Remark3 = "0";
        string Remark4 = "0";
        string Remark5 = "0";
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
                        if (Session["UserId"] != null)
                        {
                            NSDataPasser dp = new NSDataPasser();
                            dp.sesid = Session["UserId"].ToString().TrimStart().TrimEnd();



                            headerValues(dp.sesid);



                        }
                        else
                        {
                            Response.Redirect("Login.aspx");
                        }
                        SuggestionDepartmentNameView();
                    }
                    Time();
                    IdeaIdAutoGeneretion();

                }

            }
            catch (Exception )
            {
                Response.Redirect("Login.aspx", false);
            }
           
        }
        public void DBMpost()
        {
            try
            {
                NSM.IEmpId = EmployeeIdTextBox.Text.ToString().Trim();
                NSM.search(NSM);
            }
            catch (Exception )
            {
                 
            }
            
        }

        public void clear()
        {
            EmployeeIdTextBox.Text = "";
            EmployeeTextBox.Text = "";
            DepartmentTextBox.Text = "";
            DesignationTextBox.Text = "";
            AfterTextBox.Text = "";
            BeforeTextBox.Text = "";
            SubjectTextBox.Text = "";
            BenefitsTextBox.Text = "";
            CategoryCheckBoxList.ClearSelection();
            ImageFileUpload1.Dispose();
            ImageFileUpload2.Dispose();
            ImageFileUpload3.Dispose();

        }


        public void IdeaIdAutoGeneretion()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = NSM.SuggestionIdAuto();
                SIdeaId = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                str = Convert.ToInt32(SIdeaId.Length.ToString());
                if (SIdeaId.ToString() == "1")
                {
                    IdeaIdLable.InnerHtml = "205";
                    SIdeaId = "205";

                }
                else
                {
                    IdeaIdLable.InnerHtml = SIdeaId;
                }
            }
            catch (Exception)
            {
                 
            }
           

        }


        [WebMethod()]

        public static NSDataPasser Checking(string emp)
        {
            AddSuggestion A = new AddSuggestion();
            NewSuggestionModel NSM = new NewSuggestionModel();
            Employee E = new Employee();
            NSDataPasser tdp = new NSDataPasser();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");

            try
            {
                if (emp != "" && emp != "System.Data.DataRowView")
                {
                    Console.Write(emp);

                    NSM.IEmpId = tdp.sesid.ToString();

                    DataSet DS = new DataSet();
                    DS = NSM.search(NSM);



                    tdp.empname = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                    SIDepID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                    tdp.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                    SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                    tdp.Designation = DS.Tables[0].Rows[0].ItemArray[4].ToString();

                    tdp.ErrorLabel = "0";



                }

                else if (emp == "")
                {

                    tdp.ErrorLabel = "Check the Employee ID ";
                }
                else
                {
                    tdp.ErrorLabel = "1";
                }


                return tdp;

            }
            catch (Exception ex)
            {
                tdp.ErrorLabel = "alert ('The Employee Record Does Not Exist')";
                ScriptManager.RegisterClientScriptBlock(A, A.GetType(), "alertMessage", "alert('The Employee Record Does Not Exist')", true);
                return tdp;
            }


        }
        public void headerValues(string userid)
        {
            AddSuggestion A = new AddSuggestion();
            NewSuggestionModel NSM = new NewSuggestionModel();
            Employee E = new Employee();
            NSDataPasser tdp = new NSDataPasser();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");

            try
            {
                if (userid != "" && userid != null)
                {


                    NSM.IEmpId = userid;//tdp.sesid.ToString();

                    DataSet DS = new DataSet();
                    DS = NSM.search(NSM);



                    /* tdp.empname = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                     SIDepID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                     tdp.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                     SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                     tdp.Designation = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                     */
                    EmployeeIdTextBox.Text = userid;
                    tdp.ErrorLabel = "0";
                    EmployeeTextBox.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                    SIDepID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                    DepartmentTextBox.Text = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                    SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                    DesignationTextBox.Text = DS.Tables[0].Rows[0].ItemArray[4].ToString();


                }

                else if (userid == "")
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
                tdp.ErrorLabel = "alert ('The Employee Record Does Not Exist')";
                ScriptManager.RegisterClientScriptBlock(A, A.GetType(), "alertMessage", "alert('The Employee Record Does Not Exist')", true);
             }

        }
        //public void EmployeeNameView()
        //{
        //    DataSet Ds = new DataSet();
        //    Ds = NSM.EmployeeSelectAll();
        //    EmployeeDropDownList.DataSource = Ds.Tables[0];
        //    EmployeeDropDownList.DataTextField = "EmployeeName";
        //    EmployeeDropDownList.DataValueField = "EmployeeId";
        //    EmployeeDropDownList.DataBind();
        //    //DepartmentDDList.Items.Insert(0, new ListItem("", ""));


        //}


        public void SuggestionDepartmentNameView()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = NSM.DepartmentSelectAll();

                //SuggestiontoDepDDList.DataSource = Ds.Tables[0];
                //SuggestiontoDepDDList.DataTextField = "DepName";
                //SuggestiontoDepDDList.DataValueField = "DepId";
                //SuggestiontoDepDDList.DataBind();
                //DepartmentDDList.Items.Insert(0, new ListItem("", ""));
            }
            catch (Exception )
            {
                 
            }
           


        }

        
        public void Time()
        {
            TimeLable.InnerText = System.DateTime.Now.ToString("dd-MM-yyyy");
        }
        //private bool validation()
        //{
        //    bool a = VC.DropDownValidation(DepartmentDDList);

        //    if (a == false)
        //    {
        //        return true;
        //    }
        //    else
        //    {
        //        return false;
        //    }
        //}


        private bool validation(DropDownList DDL)
        {
            bool b = VC.DropDownValidation(DDL);
            
            if (b == true)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);
               
                return true;
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);
                return false;
            }
        }

        #region Insert Record
        public void Insert()
        {
            
            
            DataSet Ds = new DataSet();
            try
            {
                
                NSM.IdeaId = SIdeaId.ToString().Trim();
                NSM.IDepID = SIDepID.ToString();              
                NSM.IDesID = SIDesID.ToString();
                NSM.IEmpId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd();
                NSM.Date = System.DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                NSM.Subject = SubjectTextBox.Text.ToString().TrimStart().TrimEnd();
                NSM.Benefits = BenefitsTextBox.Text.ToString().TrimStart().TrimEnd();
                string k = "";
                for (int i = 0; i < CategoryCheckBoxList.Items.Count; i++)
                {
                    if (CategoryCheckBoxList.Items[i].Selected)
                    {

                        k = k + CategoryCheckBoxList.Items[i].Text + ", ";
                    }

                }
                NSM.Category = k.ToString().TrimStart().TrimEnd();

                NSM.Before = BeforeTextBox.Text.ToString().TrimStart().TrimEnd();
                NSM.After = AfterTextBox.Text.ToString().TrimStart().TrimEnd();

                if (ImageFileUpload1.HasFile)
                {
                    if (ImageFileUpload1.PostedFile.ContentLength < 20728650)
                    {
                        extn = System.IO.Path.GetExtension(ImageFileUpload1.FileName);
                        //path = Server.MapPath("\\PIMS\\UI\\Image\\");
                        path = Server.MapPath("..\\UI\\Image\\");
                        ImageName = ImageFileUpload1.FileName;
                        ImageFileUpload1.SaveAs(path + ImageName);
                        etn = ImageName;
                        //Label1.Text = path;
                    }
                }
                else
                {
                    etn = "No File";
                }
                NSM.FileUpload1 = etn.ToString();
                if (ImageFileUpload2.HasFile)
                {
                    if (ImageFileUpload2.PostedFile.ContentLength < 20728650)
                    {
                        extn = System.IO.Path.GetExtension(ImageFileUpload2.FileName);
                        // path = Server.MapPath("\\PIMS\\UI\\Image\\");
                        path = Server.MapPath("..\\UI\\Image\\");
                        ImageName = ImageFileUpload2.FileName;
                        ImageFileUpload2.SaveAs(path + ImageName);
                        etn = ImageName;
                        //Label1.Text = path;
                    }
                }
                else
                {
                    etn = "No File";
                }
                NSM.FileUpload2 = etn.ToString();
                if (ImageFileUpload3.HasFile)
                {
                    extn = System.IO.Path.GetExtension(ImageFileUpload3.FileName);
                   // path = Server.MapPath("\\PIMS\\UI\\Image\\");
                    path = Server.MapPath("..\\UI\\Image\\");
                    ImageName = ImageFileUpload3.FileName;
                    ImageFileUpload3.SaveAs(path + ImageName);
                    etn =ImageName;
                    //Label1.Text = path;
                }
                else
                {
                    etn = "No File";
                }
                NSM.FileUpload3 = etn.ToString();
                NSM.Status = status.ToString().TrimStart().TrimEnd();
                NSM.Approved = Approved.ToString().Trim();
                NSM.Remark2 = "UnRead";
                NSM.Remark2 = Remark2.ToString().Trim();
                NSM.Remark3 = Remark3.ToString().Trim();
                NSM.Remark4 = Remark4.ToString().Trim();
                
                NSM.SuggestionInsert(NSM);
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme('Your Suggestion Posted')", true);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your Suggestion Posted')", true);
                i = 1;
                Response.Redirect("Default.aspx?value="+NSM.IEmpId,false);
                
            }
            catch(Exception e1 )
            {
                NSM.ExceptionInsert(e1.ToString());
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }
        #endregion
        #region imageUpload
        public void imageupload()
        { 
}
        #endregion
        protected void Submit_Click(object sender, EventArgs e)
        {
            Insert();
            
            if(i==1)
            {
                clear();
            }
            
        }

        #region Employee Id Search
        public void EmployeeIDSearch()
        {

            try
            {
                try
                {

                    if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                    {
                        NSM.IEmpId = EmployeeIdTextBox.Text.ToString().Trim();
                        
                        DataSet DS = new DataSet();
                        DS = NSM.search(NSM);
                        EmployeeTextBox.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        SIDepID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        DepartmentTextBox.Text = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        SIDesID= DS.Tables[0].Rows[0].ItemArray[3].ToString(); ;
                        DesignationTextBox.Text = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                        



                    }

                }
                catch(Exception ex)
                {
                    throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

                   
                }

            }
            catch
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
                

            }
            DID = Convert.ToInt32(SIDepID.ToString());
            DDesID = Convert.ToInt32(SIDesID);


        }

        #endregion
        protected void EmplpoyeeNameImageButton_Click(object sender, ImageClickEventArgs e)
        {
            

        }

       

        protected void EmployeeIdTextBox_TextChanged(object sender, EventArgs e)
        {
            //EmployeeIDSearch();

        }
    }
}