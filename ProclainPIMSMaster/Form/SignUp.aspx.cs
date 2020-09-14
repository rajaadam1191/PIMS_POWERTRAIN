using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;

namespace ProclainPIMSMaster.Form
{
    public partial class Register : System.Web.UI.Page
    {
        NewSuggestionModel NSM = new NewSuggestionModel();
        ValidationClass VC = new ValidationClass();
        RegistrationLogin RL = new RegistrationLogin();
        Employee E = new Employee();
        static int SIDepPopID;
        static string DepID;
        static string DesID;
        int SIDepID;
        int SIDesID;
        string Remark1="i";
        string Remark2="i";
        string P;
        string cp;
        protected void Page_Load(object sender, EventArgs e)
        {
            load();
        }
        private void load()
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
                        DepartmentNameView();
                        DesignationNameView();
                        DesignationPopUptNameView();


                    }
                    Label1.Visible = false;
                }
            }
            catch (Exception)
            {

                Response.Redirect("Login.aspx", false);
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

        public void clear()
        {

            HEmployeeIDTextBox.Text = "";
            HEmployeeNameTextBox.Text = "";
            DepartmentDDList.SelectedIndex = 0;
            DesignationDDList.SelectedIndex = 0;
            PhoneNoTextBox.Text = "";
            EmailTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConformPasswordTextBox.Text = "";
        }
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

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Employee Record Is Added')", true);

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
        public void DepIdAutoGeneretion()
        {
            DataSet DS = new DataSet();
            DS = E.DepartmentIdAuto();
            DepID = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        public void DepInsert()
        {

            try
            {
                E.DepartmentId = DepID.ToString().Trim();
                E.DepartmentName = DepDDLPopTextBox.Text.ToString().Trim();
                E.DepartmentInsert(E);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Department Is Added')", true);
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
        }

        protected void DepartmentPopButton_Click(object sender, EventArgs e)
        {
            DepIdAutoGeneretion();

            DepInsert();
            //DepartmentDDList.DataSource = null;

            //Check = 1;
            clear();

            //DepartmentNameView();
        }

        #endregion

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            try
            {
                SignUpInsert();
                Response.Redirect("Login.aspx");
            }
            catch (Exception e1)
            {
                 
            }
            
        }
    }
}