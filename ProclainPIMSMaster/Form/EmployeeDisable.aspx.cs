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
    public class EMtestDataPassersdisable
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
    public partial class EmployeeDisable : System.Web.UI.Page
    {

        NewSuggestionModel NSM = new NewSuggestionModel();
        ValidationClass VC = new ValidationClass();
        Employee E = new Employee();
        int Check = 0;
        string EmpId = "";
        int SIDepID;
        static int DID;
        static int DDesID;
        int SIDesID = 0;
        int SIDepPopID = 0;
        string DepID;
        string DesID;
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
                   
                   
                    SuggestionTableView();

                    ProclainPIMSMaster.AdminMaster admaster = (ProclainPIMSMaster.AdminMaster)this.Master;
                    admaster.ChangeTitle("Disable Employees");
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


       
       

       

        public void SuggestionTableView()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = E.EmpSelectAllDisable();
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

                    NSM.IEmpId = emp.ToString();

                    DataSet DS = new DataSet();
                    DS = NSM.search(NSM);



                    tdp.empname = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                    

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


        #region Insert Record

        #region Insert Validation
        private bool validation()
        {

            bool a = txtvalid(EmployeeNameTextBox);
           

            if (a == false)
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
     

        #endregion

        public void clear()
        {

            EmployeeIdTextBox.Text = "";
            EmployeeNameTextBox.Text = "";

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

                  

                    E.EmployeeDisable(E);
                   //string myscript = "alert ('Employee Detail is Disabled');";
                   //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Employee Detail is Disabled','','success')", true);
                    Check = 1;
                    Response.Redirect("EmployeeDisable.aspx");


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

      


        /* Insert New Designation Details*/

      




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
              
                    DDesID = Convert.ToInt32(DS.Tables[0].Rows[0].ItemArray[4].ToString());

                



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

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeAdd.aspx");
        }

        protected void Enable_Click(object sender, EventArgs e)
        {
            try
            {
                validation();
                Enabledemployee();
                clear();

                //Form.UnLoad();
            }
            catch (Exception e1)
            {

            }
        }
        public void Enabledemployee()
        {
            DataSet Ds = new DataSet();
            try
            {
                if (EmployeeIdTextBox.Text != "" && EmployeeIdTextBox.Text != "System.Data.DataRowView")
                {
                    E.EmployeeId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd();



                    E.EmployeeEnable(E);
                    //string myscript = "alert ('Employee Detail is Disabled');";
                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Employee Detail is Enabled','','success')", true);
                    Check = 1;
                    Response.Redirect("EmployeeDisable.aspx");


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
    }
}