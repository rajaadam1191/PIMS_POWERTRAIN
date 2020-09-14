using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProclainPIMSMaster.Form
{
    public partial class MailDashboard : System.Web.UI.Page
    {
        public string Role;
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
                    string Empid = Request.QueryString["value"].ToString();
                    Session["UserId"] = Empid.ToString();
                    Role = Request.QueryString["Role"].ToString();
                    if (Role == "ManagerMail.aspx")
                    {
                        Response.Redirect("ManagerMail.aspx");
                    }
                    else if (Role == "HOSDashboard.aspx")
                    {
                        Response.Redirect("HOSDashboard.aspx");
                    }
                    else if (Role == "CommitteeEvalDashboard.aspx")
                    {
                        Response.Redirect("CommitteeEvalDashboard.aspx");
                    }
                    else if (Role == "BeneficiaryDashboard.aspx")
                    {
                        Response.Redirect("BeneficiaryDashboard.aspx");
                    }
                    else if (Role == "FinanceDashboard.aspx")
                    {
                        Response.Redirect("FinanceDashboard.aspx");
                    }
                    else
                    {
                        Response.Redirect("Login.aspx");
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Main.aspx", false);
            }
           
        }
    }
}