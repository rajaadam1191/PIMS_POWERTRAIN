using System;
using System.Collections.Generic;
using System.Linq;


using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using ProclainPIMSMaster.Models;
using System.Web.Services;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Web.Script.Services;
namespace ProclainPIMSMaster.Form
{
    public partial class Deptdashboardlink : System.Web.UI.Page
    {
        string uid { get; set; }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Session["UserId"].ToString().TrimStart().TrimEnd();
            try
            {
                if (Session["UserId"].ToString() == null || Session["UserId"].ToString() == "")
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    


                    if (uid.ToString() == "admin")
                    {
                        comlogin.Visible = true;
                        hodlogin.Visible = true;
                        implogin.Visible = true;
                        hoslogin.Visible = true;
                        benlogin.Visible = true;
                        benapprovallogin.Visible = true;
                        lnkDBA.Visible = true;
                        finlogin.Visible = true;
                        emplogin.Visible = true;
                    }
                    else
                        if (!IsPostBack)
                    {
                        if (uid.ToString() != "pi-242")
                        {
                            
                            Department_Wise_Enable_Func();
                        }
                        else 
                        {
                            benapprovallogin.Visible = true;
                            Department_Wise_Enable_Func();
                        }
                        
                        
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Main.aspx", false);
            }
          
        }

        protected void comlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("CommitteeEvalDashboard.aspx");
        }

        protected void hodlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("HODMainDashboard.aspx");
        }

        protected void implogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void hoslogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("HOSMainDashboard.aspx");
        }

        protected void benlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("BeneficiaryMainDashboard.aspx");
        }
        public void Department_Wise_Enable_Func()
        {
            try
            {
                
                int i, value;
                string data;

                
                
                    DataTO da = new DataTO();
                    DataSet ds = new DataSet();
                    SqlParameter OP1 = new SqlParameter("@empid", uid.ToString());
                    da.parameters.Add(OP1);
                    ds = da.ExecuteDataset("deptdashboardlink");
                    for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        value = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[0].ToString());
                        data = ds.Tables[0].Rows[i].ItemArray[1].ToString();
                        if (value == 1 && data == "true")
                        {
                            comlogin.Visible = true;
                        }
                        else if (value == 2 && data == "true")
                        {
                            hodlogin.Visible = true;
                        }
                        else if (value == 3 && data == "true")
                        {
                            implogin.Visible = true;
                        }
                        else if (value == 4 && data == "true")
                        {
                            hoslogin.Visible = true;
                        }
                        else if (value == 5 && data == "true")
                        {
                            benlogin.Visible = true;
                        }
                        else if (value == 6 && data == "true")
                        {
                            lnkDBA.Visible = true;
                        }
                        else if (value == 7 && data == "true")
                        {
                            emplogin.Visible = true;
                        }
                    
                    else
                        {
                            Response.Write("You are not assign to any role");
                            Response.Redirect("Login.aspx");
                        }
                    }
                

                
            }
            catch (Exception e1)
            {
                 
            }
            
             
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Main.aspx");
        }

        protected void lnkDBA_Click(object sender, EventArgs e)
        {
            Response.Redirect("DBMDashboard.aspx");
        }
        

            protected void finlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("FinanceDashboard.aspx");
        }
        protected void emplogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?value=" + Session["UserId"].ToString().TrimStart().TrimEnd());
        }

        protected void benapprovallogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("BeneficiaryApprovalMainDashboard.aspx");
        }
    }
}