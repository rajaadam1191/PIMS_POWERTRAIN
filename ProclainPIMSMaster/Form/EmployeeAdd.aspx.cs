using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;


namespace ProclainPIMSMaster.Form
{
    public class EMtestDataPassers
    {
        public string empid { get; set; }
        public string empname { get; set; }
        public string Department { get; set; }
        public string Designation { get; set; }
        public string Memberof { get; set; }
        public string Other { get; set; }
        public string ErrorLabel { get; set; }
        public string DupCheck { get; set; }
    }
    [System.Web.Script.Services.ScriptService]
    public partial class EmployeeAdd : System.Web.UI.Page
    {

        NewSuggestionModel NSM = new NewSuggestionModel();
        ValidationClass VC = new ValidationClass();
        Employee E = new Employee();
        int Check = 0;
        string EmpId="";
        int SIDepID;
        static int DID;
        static int DDesID;
        int SIDesID=0;
        int SIDepPopID=0;
        string DepID;
        string DesID;
        string ComID;
        string points = "0";
        string Allowance = "0";
        string Remark1 = "0";
        string Remark2 = "0";
        static string CMID;
        ManagerMaster MA = new ManagerMaster();


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
                    load();
                    EmployeeIdTextBox.Enabled = true;
                    ////EmployeeTableView();
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }
           


        }

        private void load()
        {
            try
            {
                if ((!IsPostBack) || (Check == 1))
                {
                    DepartmentNameView();
                    DesignationNameView();
                    DesignationPopUptNameView();
                    CompanyNameView();
                    SuggestionTableView();

                    ProclainPIMSMaster.AdminMaster admaster = (ProclainPIMSMaster.AdminMaster)this.Master;
                    admaster.ChangeTitle("Add New Employees");
                }
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
                DS = E.DepartmentIdAuto();
                DepID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
                 
            }
           
        }
        public void ComIdAutoGeneretion()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = E.CompanyIdAuto();
                ComID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {

            }

        }
        

        public void DesIdAutoGeneretion()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = E.DesignationIdAuto();
                DesID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
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


                Ds = NSM.DepartmentSelectAll();

                DepartmentDDList.DataSource = Ds.Tables[0];
                DepartmentDDList.DataTextField = "DepName";
                DepartmentDDList.DataValueField = "DepId";
                DepartmentDDList.DataBind();
                //DepartmentDDList.Items.Insert(0, new ListItem("", ""));
                //SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);
            }
            catch (Exception e1)
            {
                 
            }
          

        }

        public void CompanyNameView()
        {
            try
            {
                DataSet Ds = new DataSet();


                Ds = NSM.CompanySelectAll();

                CompanyDDList.DataSource = Ds.Tables[0];
                CompanyDDList.DataTextField = "CompanyName";
                CompanyDDList.DataValueField = "CompanyId";
                CompanyDDList.DataBind();
                //DepartmentDDList.Items.Insert(0, new ListItem("", ""));
                //SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);
            }
            catch (Exception e1)
            {

            }


        }
        public void DesignationNameView()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = NSM.DesignationSelectAll();
                DesignationDDList.DataSource = Ds.Tables[0];
                DesignationDDList.DataTextField = "DesName";
                DesignationDDList.DataValueField = "DesId";
                DesignationDDList.DataBind();

                //SIDesID = Convert.ToInt32(DesignationDDList.SelectedValue);
            }
            catch (Exception e1)
            {
                 
            }
         

        }

        public void DesignationPopUptNameView()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = NSM.DepartmentSelectAll();
                DepartmentPopUPDDList.DataSource = Ds.Tables[0];
                DepartmentPopUPDDList.DataTextField = "DepName";
                DepartmentPopUPDDList.DataValueField = "DepId";
                DepartmentPopUPDDList.DataBind();
                //DepartmentDDList.Items.Insert(0, new ListItem("", ""));

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
                Ds = E.EmpSelectAll();
                //if((Ds !=null) (Ds! ="System.Data.DataRowView"))
                //  {
                SuggestionGridView.DataSource = Ds.Tables[0];
                SuggestionGridView.DataBind();
                //}
            }
            catch (Exception e1)
            {
                 
            }
           
        }
        protected void SuggestionGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }
        #region Insert Record

        #region Insert Validation
        private bool validation()
        {
            
            bool a = txtvalid(EmployeeNameTextBox);
            bool b = txtvalid(PhoneNoTextBox);
           
            if (a == false && b == false )
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        private bool txtvalid(TextBox t)
        {
            bool va = VC.TextBoxValidation(t);
            if (va == true)
            {
                //this.RequiredFieldValidator1.Text = t +  "This Fields Must Contain Text";
                return true;
            }
            else
            {
                //this.RequiredFieldValidator1.Text = t + " ";
                return false;
            }

        }
        private void PhNovalid(Object s, EventArgs e)
        {
            Regex re = new Regex("^9[0-9]{9}");

            if (re.IsMatch(PhoneNoTextBox.Text.Trim()) == false || PhoneNoTextBox.Text.Length > 10)
            {
               // this.RequiredFieldValidator1.Text = "Invalid Indian Mobile Number!!";
                PhoneNoTextBox.Focus();
            }

        }

        #endregion

        public void clear()
        {
            
            EmployeeIdTextBox.Text="";
            EmployeeNameTextBox.Text="";
            DepartmentDDList.SelectedIndex = 0;
            DesignationDDList.SelectedIndex = 0;
            PhoneNoTextBox.Text = "";
        }


        /* Insert New Emloyee Details*/
        
        public void Insert()
        {
            DataSet Ds = new DataSet();
            try
            {
                if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                {
                    E.EmployeeId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd();

                    E.EmployeeName = EmployeeNameTextBox.Text.ToString().Trim();
                    SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);
                    E.DepartmentId = SIDepID.ToString();
                    SIDesID = Convert.ToInt32(DesignationDDList.SelectedValue);
                    E.DesignationId = SIDesID.ToString().Trim();
                    E.PhoneNo = PhoneNoTextBox.Text.ToString().Trim();
                    E.Password = password.Text.ToString().Trim();
                    E.Email= email.Text.ToString().Trim();
                    E.Point = points.ToString().Trim();
                    E.Allowance = Allowance.ToString().Trim();
                    E.Remark1 = Remark1.ToString().Trim();
                    E.Remark2 = Remark2.ToString().Trim();

                    E.EmployeeInsert(E);
                    string myscript = "alert ('Employee Detail is Added');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                    Check = 1;
                    Response.Redirect("EmployeeAdd.aspx");
                    

                }
                else
                {
                    string myscript = "alert ('Check the Employee Detail');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }

            }
            catch (Exception e1)
            {
               // throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }


        /* Insert New Departmetn Details*/

        public void DepInsert()
        {
            
            try
            {
                E.DepartmentId = DepID.ToString().Trim();
                E.DepartmentName = DepDDLPopTextBox.Text.ToString().Trim();
                E.DepartmentInsert(E);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Department Is Added')", true);
            }
            catch (Exception e1)
            {
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }

        public void ComInsert()
        {

            try
            {
                E.CompanyId = ComID.ToString().Trim();
                E.CompanyName = ComDDl.Text.ToString().Trim();
                E.CompanyInsert(E);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Comapany Is Added')", true);
            }
            catch (Exception e1)
            {
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }


        /* Insert New Designation Details*/

        public void DesInsert()
        {

            try
            {

                SIDepPopID = Convert.ToInt32(DepartmentPopUPDDList.SelectedValue);
                E.DepartmentId = SIDepPopID.ToString();
                E.DesignationId = DesID.ToString().Trim();
                E.DesignationName = DesDDLPopTextBox.Text.ToString().Trim();
                E.DesignationInsert(E);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Designation Is Added')", true);
            }
            catch (Exception e1)
            {
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }




        #endregion
       

        protected void AddDetailsSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                validation();
                Insert();
                clear();

                //Form.UnLoad();
            }
            catch (Exception e1)
            {
                 
            }
            

        }

        protected void DesignationPopButton_Click(object sender, EventArgs e)
        {
            try
            {
                DesIdAutoGeneretion();
                DesInsert();
                clear();
            }
            catch (Exception e1)
            {
                 
            }
            

        }

        protected void DepartmentPopButton_Click(object sender, EventArgs e)
        {
            try
            {
                DepIdAutoGeneretion();

                DepInsert();
                //DepartmentDDList.DataSource = null;

                //Check = 1;
                clear();

                //DepartmentNameView();
            }
            catch (Exception e1)
            {
                 
            }
          
        }

        protected void PhoneNoTextBox_TextChanged(object s, EventArgs e)
        {
            PhNovalid(s,e);
        }
        #region Employee Id Search

        public void search()
        {
            try
            {

                if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                {
                    E.EmployeeId = EmployeeIdTextBox.Text.ToString().Trim();

                    DataSet DS = new DataSet();
                    DS = E.search(E);
                    EmployeeNameTextBox.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                    //DepartmentDDList.SelectedItem.Text = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                    DepartmentDDList.SelectedValue = DS.Tables[0].Rows[0].ItemArray[2].ToString();

                    DID = Convert.ToInt32(DS.Tables[0].Rows[0].ItemArray[2].ToString());
                    string data = DepartmentDDList.SelectedItem.ToString();
                    string data1 = DepartmentDDList.SelectedIndex.ToString();
                    string data2 = DepartmentDDList.SelectedValue.ToString();
                    DesignationDDList.SelectedValue = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                    DDesID = Convert.ToInt32(DS.Tables[0].Rows[0].ItemArray[4].ToString());
                    
                    PhoneNoTextBox.Text = DS.Tables[0].Rows[0].ItemArray[5].ToString();




                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Enter The Employee Id')", true);
                }

            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
                
            }
        }
        

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            search();
            EmployeeIdTextBox.Enabled = false;
        }
        #endregion


        #region Employee Update Process

        public void Update()
        {
            DataSet Ds = new DataSet();
            try
            {
                if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                {

                    E.EmployeeId = EmployeeIdTextBox.Text.ToString();
                    E.EmployeeName = EmployeeNameTextBox.Text.ToString().Trim();
                    SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue.ToString());
                    E.DepartmentId = SIDepID.ToString();
                    SIDesID = Convert.ToInt32(DesignationDDList.SelectedValue.ToString());
                    E.DesignationId = SIDesID.ToString().Trim();
                    //if ((SIDepID == 0) && (SIDesID == 0))
                    //{
                    //    E.DepartmentId = DID.ToString();

                    //    E.DesignationId = DDesID.ToString().Trim();
                    //}
                    //else if((SIDepID !=0) && (SIDesID == 0))
                    //{
                    //    E.DepartmentId = SIDepID.ToString();
                    //    E.DesignationId = DDesID.ToString().Trim();
                    //}

                    //else if ((SIDepID == 0) && (SIDesID != 0))
                    //{
                    //    E.DepartmentId = DID.ToString();
                    //    E.DesignationId = SIDesID.ToString().Trim();

                    //}
                    //else
                    //{

                    //}

                    E.PhoneNo = PhoneNoTextBox.Text.ToString().Trim();

                    E.EmployeeUpdate(E);
                    string myscript = "alert ('Employee Detail is Added');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }
                else
                {
                    string myscript = "alert ('Check The Employee Record');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {

                Update();
                clear();
            }
            catch (Exception e1)
            { 
            }
        }

        #endregion


        protected void DisableButton_Click(object sender, EventArgs e)
        {
            try
            {

                Response.Redirect("EmployeeDisable.aspx");
            }
            catch (Exception e1)
            {
            }
        }




        //public void EmployeeTableView()
        //{
        //    DataSet Ds = new DataSet();
        //    Ds = E.EmployeeDetailAll();
        //    EmployeeGridView.DataSource = Ds.Tables[0];
        //    EmployeeGridView.DataBind();
        //}



        [WebMethod()]
        public static EMtestDataPassers CMChecking(string cmid)
        {
            ManagerMaster M = new ManagerMaster();
            
            Employee E = new Employee();
            EMtestDataPassers tdp = new EMtestDataPassers();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                    if ((cmid != "") && (cmid != "System.Data.DataRowView"))
                    {
                        CMID = cmid.ToString().Trim();
                        Console.Write(cmid);
                        E.EmployeeId = cmid.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = E.search(E);

                        tdp.empid = cmid.ToString().TrimStart().TrimEnd();
                        tdp.empname = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        //SIDepID = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        tdp.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        //SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                        tdp.Designation = DS.Tables[0].Rows[0].ItemArray[4].ToString();

                        tdp.DupCheck = DS.Tables[0].Rows[0].ItemArray[5].ToString();


                        tdp.ErrorLabel = "0";
                    }

                    else if (cmid == "")
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

        protected void TempEmpInsert_Click(object sender, EventArgs e)
        {
            try
            {
                validation();
                InsertTemp();
                clear();

                //Form.UnLoad();
            }
            catch (Exception e1)
            {

            }
        }
        public void InsertTemp()
        {
            DataSet Ds = new DataSet();
            try
            {
                if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                {
                    E.EmployeeId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd();

                    E.EmployeeName = EmployeeNameTextBox.Text.ToString().Trim();
                    SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);
                    E.DepartmentId = SIDepID.ToString();
                    SIDesID = Convert.ToInt32(DesignationDDList.SelectedValue);
                    E.DesignationId = SIDesID.ToString().Trim();
                    E.PhoneNo = PhoneNoTextBox.Text.ToString().Trim();
                    E.Password = password.Text.ToString().Trim();
                    E.Email = email.Text.ToString().Trim();
                    E.Point = points.ToString().Trim();
                    E.Allowance = Allowance.ToString().Trim();
                    E.Remark1 = "D";
                    E.Remark2 = CompanyDDList.Text.ToString().Trim();

                    E.EmployeeInsert(E);
                    string myscript = "alert ('Employee Detail is Added');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                    Check = 1;
                    Response.Redirect("EmployeeAdd.aspx");


                }
                else
                {
                    string myscript = "alert ('Check the Employee Detail');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }

            }
            catch (Exception e1)
            {
                // throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }

        protected void DDLCompanyAdd_Click(object sender, EventArgs e)
        {
            try
            {
                ComIdAutoGeneretion();

                DepInsert();
                //DepartmentDDList.DataSource = null;

                //Check = 1;
                clear();

                //DepartmentNameView();
            }
            catch (Exception e1)
            {

            }
        }
    }
}