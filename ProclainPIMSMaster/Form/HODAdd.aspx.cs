using ProclainPIMSMaster.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProclainPIMSMaster.Form
{
    public partial class HODAdd : System.Web.UI.Page
    {
        NewSuggestionModel NSM = new NewSuggestionModel();
        ValidationClass VC = new ValidationClass();
        RegistrationLogin RL = new RegistrationLogin();
        DataBankManager DBM = new DataBankManager();

        int SIDepID;
        int SIDesID;
        string Remark1 = "i";
        string Remark2 = "i";
        string P;
        string cp;
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
                if (!IsPostBack)
                {
                    DepartmentNameView();
                    DesignationNameView();
                    SuggestionTableView();

                    ProclainPIMSMaster.AdminMaster admaster = (ProclainPIMSMaster.AdminMaster)this.Master;
                    admaster.ChangeTitle("Add Credential Employees");

                }
                Label1.Visible = false;
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
        public void SuggestionTableView()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = DBM.HODDetailGridView();
                SuggestionGridView.DataSource = Ds.Tables[0];
                SuggestionGridView.DataBind();
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

        #region Insert

        public void SignUpInsert()
        {
            DataSet Ds = new DataSet();
            P = PasswordTextBox.Text.ToString().Trim();
            cp = ConformPasswordTextBox.Text.ToString().Trim();
            try
            {
                if (cp == P)
                {

                    RL.HEmployeeID = HEmployeeIDTextBox.Text.ToString().TrimStart().TrimEnd();
                    RL.HEmployeeName = HEmployeeNameTextBox.Text.ToString().TrimStart().TrimEnd();
                    SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);
                    RL.HDepartmentID = SIDepID.ToString();
                    SIDesID = Convert.ToInt32(DesignationDDList.SelectedValue);
                    RL.HDesignationID = SIDesID.ToString().Trim();
                    RL.Email = EmailTextBox.Text.ToString().Trim();
                    RL.PhoneNo = PhoneNoTextBox.Text.ToString().Trim();
                    RL.Password = PasswordTextBox.Text.ToString().Trim();
                    RL.Remark1 = Remark1.ToString().Trim();
                    RL.Remark2 = Remark2.ToString().Trim();

                    RL.HEmpInsert(RL);

                    string myscript = "alert ('Employee Detail is Added');";
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Password Did Not Match";
                }

            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }



        #endregion

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            try
            {
                SignUpInsert();
                SuggestionTableView();
                clear();
            }
            catch (Exception e1)
            {
                 
            }
            
        }
        public void clear()
        {
            HEmployeeIDTextBox.Text = "";
            HEmployeeNameTextBox.Text = "";
            DepartmentDDList.SelectedIndex = 0;
            DesignationDDList.SelectedIndex = 0;
            EmailTextBox.Text = "";
            PhoneNoTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConformPasswordTextBox.Text = "";
        }
    }
}