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
    public partial class Suggestions_Status : System.Web.UI.Page
    {

        NewSuggestionModel NSM = new NewSuggestionModel();
        ValidationClass VC = new ValidationClass();
        Employee E = new Employee();
        string SIDesID = "";
        static int DID;
        string SIDepID = "";
        static string employeeId;
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

                        GridView();

                    }
                    //GridView();
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }
          
            
        }

        public void GridView()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = E.SuggestionSelectAll();
                SuggestionGridViews.DataSource = Ds.Tables[0];
                SuggestionGridViews.DataBind();
            }
            catch (Exception e1)
            {
                 
            }
           
        }

        
        


        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            SuggestionGridViews.PageIndex = e.NewPageIndex;
            this.DataBind();
            //this.BindGrid();
        }
        public void gr()
        {
            string Em = EmployeeIDTextBox.Text.ToString();
            string FD = FromDateTextBox.Text.ToString();
            string To = ToDateTextBox.Text.ToString();

            if( Em == "")
            {

            }

        }


       
        public void EmployeeIDSearch()
        {

            try
            {
                try
                {

                    if (EmployeeIDTextBox.Text != "" && EmployeeIDTextBox.Text != "System.Data.DataRowView")
                    {
                        NSM.IEmpId = EmployeeIDTextBox.Text.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = NSM.search(NSM);
                        EmployeeNameTextBox.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        SIDepID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        DepartmentTextBox.Text = DS.Tables[0].Rows[0].ItemArray[2].ToString();                       
                        SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString(); 
                        DesignationTextBox.Text = DS.Tables[0].Rows[0].ItemArray[4].ToString();
                        




                    }

                }
                catch (Exception ex)
                {
                    throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

                    //if (label2.Text == "")
                    //{
                    //    label2.Text = "Scan/Enter Barcode";
                    //}
                    //label2.Text = "NOT FOUND";





                    // MessageBox.Show("The Vehicle is not Authorized");
                    // clear();
                    //throw;
                }

            }
            catch(Exception e1)
            {//
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
                //MessageBox.Show("The Vehicle is not Authorized");

            }
           


        }

        protected void Gridimgbtn_Click(object sender, ImageClickEventArgs e)
        {
            var closeLink = (Control)sender;
            GridViewRow row = (GridViewRow)closeLink.NamingContainer;
            

             employeeId = row.Cells[1].Text;  

            Ideasearch(employeeId);

        }


        public void Ideasearch(string e)
        {
            try
            {



                NSM.IdeaId = e;

                    DataSet DS = new DataSet();
                    DS = NSM.Ideasearch(NSM);
                    
                    EmpIDLable.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                    DepLabel.Text= DS.Tables[0].Rows[0].ItemArray[1].ToString();
                    DesLabel.Text = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                    SuggLabel.Text = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                    CatLabel.Text =  DS.Tables[0].Rows[0].ItemArray[4].ToString();
                    DateLabel.Text = DS.Tables[0].Rows[0].ItemArray[5].ToString();
                    SubLabel.Text = DS.Tables[0].Rows[0].ItemArray[6].ToString();
                    DesLabel.Text = DS.Tables[0].Rows[0].ItemArray[7].ToString();
                    StatusLabel.Text = DS.Tables[0].Rows[0].ItemArray[8].ToString();
                    AppLabel.Text = DS.Tables[0].Rows[0].ItemArray[9].ToString();






            }
            catch (Exception e1)
            {
                //throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }
        }

        
        protected void SuggestionGridViews_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }

       

        protected void EmployeeIDTextBox_TextChanged(object sender, EventArgs e)
        {
            EmployeeIDSearch();
        }

        protected void EmployeeIDTextBox_TextChanged1(object sender, EventArgs e)
        {
            EmployeeIDSearch();
        }
    }
}