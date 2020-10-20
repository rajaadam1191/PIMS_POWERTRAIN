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
    public class testDataPassers
    {
        public string empid { get; set; }
        public string empname { get; set; }
        public string Department { get; set; }
        public string Designation { get; set; }
        public string ErrorLabel { get; set; }
    }
    [System.Web.Script.Services.ScriptService]
    public partial class TeamDetail : System.Web.UI.Page
    {
        DataBankManager DBM = new DataBankManager();
        Manager MA = new Manager();
        static string SIDepID;
        static string SIDesID;
        static int i = 0;
        static string CMID;
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

                        //TeamHeadTextBox.Text = Session["UserName"].ToString();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }
          
        }
        public void COMEVALIdAutoGeneretion()
        {
            try
            {
                DataSet DS = new DataSet();
                DS = MA.TeamIdAuto();
                CMID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            }
            catch (Exception e1)
            {
                 
            }
           
        }
        public void SuggestionTableView()
        {
            try
            {
                MA.IEmpId = Session["UserId"].ToString();
                DataSet Ds = new DataSet();
                Ds = MA.EmployeeTeamGridView();
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
        public static testDataPassers Checking(string emp)
        {
            Manager M = new Manager();
            Employee E = new Employee();
            testDataPassers tdp = new testDataPassers();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                  if (emp != "" && emp != "System.Data.DataRowView")
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

                    else if(emp == "")
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

        //protected void Submit_Click(object sender, EventArgs e)
        //{

        //    Insert();
        //    if (i == 1)
        //    {
        //        Clear();
        //        SuggestionTableView();
        //    }
        //}
        //#region Clear Record
        //public void Clear()
        //{
        //    EmployeeIdTextBox.Text = null;
        //    EmployeeTextBox.Text = "";
        //    DepartmentTextBox.Text = "";
        //    DesignationTextBox.Text = "";
            



        //}
        //#endregion
        //#region Insert Record
        //public void Insert()
        //{


        //    DataSet Ds = new DataSet();
        //    try
        //    {
        //        if ((EmployeeIdTextBox.Text != "") && (EmployeeIdTextBox.Text != "System.Data.DataRowView"))
        //        {
        //            COMEVALIdAutoGeneretion();
        //            MA.TeamID = CMID.ToString();
        //            MA.TeamName = Session["Designation"].ToString().TrimStart().TrimEnd() +" "+ "Team";
        //            MA.IEmpId = EmployeeIdTextBox.Text.ToString().TrimStart().TrimEnd();
        //            MA.IDepID = SIDepID.ToString().TrimStart().TrimEnd();
        //            MA.TeamHead = Session["UserId"].ToString().TrimStart().TrimEnd();
        //            MA.TeamCount = "1";
        //            MA.Remark1 = "I";
                    

        //            MA.TeamDetailInsert(MA);

        //            string myscript = "alert ('Team Member is Added');";
        //            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

        //            //ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme('Your Suggestion Posted')", true);
        //            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your Suggestion Posted')", true);
        //            i = 1;
        //        }
        //        else
        //        {
        //            string myscript = "alert ('No Record Has Been Found');";
        //            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
        //    }
        //}
        //#endregion
    }
}