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

    public class CMtestDataPassers
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

    public partial class New_Mail : System.Web.UI.Page
    {
        static string SIDepID;
        static string SIDesID;
        static string CMID;
        static string CMIDUP;
        static int i = 0;
        DataBankManager DBM = new DataBankManager();
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
                        SuggestionTableView();
                        COMEVALIdAutoGeneretion();

                        ProclainPIMSMaster.AdminMaster admaster = (ProclainPIMSMaster.AdminMaster)this.Master;
                        admaster.ChangeTitle("Add Committee Members");
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }
          
        }
        public void SuggestionTableView()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = DBM.CommitteeEvaluvationGridView();
                SuggestionGridView.DataSource = Ds.Tables[0];
                SuggestionGridView.DataBind();
            }
            catch (Exception e1)
            {
                 
            }
           
        }
        public void COMEVALIdAutoGeneretion()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = DBM.ComEvalIDAuto();
                CMID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
                 
            }
           
        }

        //ComEvalIDAuto
        protected void SuggestionGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }



        [WebMethod()]
        public static CMtestDataPassers Checking(string emp)
        {
            Manager M = new Manager();
            Employee E = new Employee();
            CMtestDataPassers tdp = new CMtestDataPassers();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                    if ((emp != "") && (emp != "System.Data.DataRowView"))
                    {
                        Console.Write(emp);

                        M.IEmpId = emp.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = M.EmpIDSearch(M);


                        tdp.empname = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        SIDepID = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        tdp.Department = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                        SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                        tdp.Designation = DS.Tables[0].Rows[0].ItemArray[5].ToString();
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

        [WebMethod()]
        public static CMtestDataPassers CMChecking(string cmid)
        {
            ManagerMaster M = new ManagerMaster();
            DataBankManager DBM = new DataBankManager();
            Employee E = new Employee();
            CMtestDataPassers tdp = new CMtestDataPassers();
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

                        DBM.CMID = cmid.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = DBM.CommitteeIDsearch(DBM);

                        tdp.empid = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        tdp.empname = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        //SIDepID = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        tdp.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        //SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                        tdp.Designation = DS.Tables[0].Rows[0].ItemArray[3].ToString();

                        tdp.DupCheck= DS.Tables[0].Rows[0].ItemArray[5].ToString();
                        if (tdp.DupCheck != "Other")
                        {
                            tdp.Memberof = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                        }
                        else
                        {
                            tdp.Memberof = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                            tdp.Other = DS.Tables[0].Rows[0].ItemArray[4].ToString();

                        }
                        
                        tdp.ErrorLabel = "0";
                    }

                    else if (cmid == "")
                    {

                        tdp.ErrorLabel = "Check the Committee ID ";
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
        #region Clear Record
        public void Clear()
        {
            EmployeeIdTextBox.Text = null;
            EmployeeTextBox.Text = "";
            DepartmentTextBox.Text = "";
            DesignationTextBox.Text = "";
            MemDesignationDDList.SelectedIndex = 0;
            OthersTextBox.Text = "";



        }
        #endregion

        #region Insert Record
        public void Insert()
        {


            DataSet Ds = new DataSet();
            try
            {
                if ((EmployeeIdTextBox.Text != "") && (EmployeeIdTextBox.Text != "System.Data.DataRowView"))
                    {
                    COMEVALIdAutoGeneretion();
                    DBM.CMID = CMID.ToString();
                    DBM.IEmpId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd();
                    DBM.HEmployeeName = EmployeeTextBox.Text.TrimStart().TrimEnd();
                    //DBM.IDepID = SIDepID.ToString();
                    //DBM.IDesID = SIDesID.ToString();
                    if (OthersTextBox.Text == "")
                    {
                        DBM.IDepName = DepartmentTextBox.Text.ToString().TrimStart().TrimEnd();
                        DBM.ODepName = MemDesignationDDList.Text.ToString().TrimStart().TrimEnd();
                    }
                    else
                    {
                        DBM.IDepName = OthersTextBox.Text.TrimStart().TrimEnd();
                        DBM.ODepName = "Other";
                    }

                    DBM.Remark1 = "I";
                    DBM.Remark2 = "0";

                    DBM.ComEvalDetailInsert(DBM);

                    string myscript = "alert ('Committee Member is Added');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                    //ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme('Your Suggestion Posted')", true);
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your Suggestion Posted')", true);
                    i = 1;
                }
                else
                {
                    string myscript = "alert ('No Record Has Been Found');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }

            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }
        #endregion


        #region Update Record
        public void Update()
        {


            DataSet Ds = new DataSet();
            try
            {
                if ((CMID != "")&& (CMID != "System.Data.DataRowView")&&(EmployeeIdTextBox.Text!="")&& (EmployeeIdTextBox.Text != "System.Data.DataRowView"))
                {

                
                DBM.CMID = CMID.ToString();
                DBM.IEmpId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd();
                DBM.HEmployeeName = EmployeeTextBox.Text.TrimStart().TrimEnd();
                //DBM.IDepID = SIDepID.ToString();
                //DBM.IDesID = SIDesID.ToString();
                if (OthersTextBox.Text == "")
                {
                    DBM.IDepName = DepartmentTextBox.Text.ToString().TrimStart().TrimEnd();
                    DBM.ODepName = MemDesignationDDList.Text.ToString().TrimStart().TrimEnd();
                }
                else
                {
                    DBM.IDepName = OthersTextBox.Text.TrimStart().TrimEnd();
                    DBM.ODepName = "Other";
                }

                DBM.Remark1 = "D";
                DBM.Remark2 = "0";

                DBM.ComEvalUpdate(DBM);

                string myscript = "alert ('Record Has Been Deleted Succesfully');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                //ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme('Your Suggestion Posted')", true);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your Suggestion Posted')", true);
                i = 1;
                }
                else
                {
                    string myscript = "alert ('No Record Has Been Selected');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                }

            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }
        #endregion
        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                Insert();
                if (i == 1)
                {
                    Clear();
                    SuggestionTableView();
                }
            }
            catch (Exception e1)
            { 
            }
           
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {
                Update();
                if (i == 1)
                {
                    Clear();
                    CMID = "";
                    SuggestionTableView();
                }
            }
            catch (Exception e1)
            {
                 
            }
            
        }
    }
}