using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProclainPIMSMaster
{
    public partial class HOS1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["UserId"] == null)
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    if (Session["UserId"].ToString() == "admin")
                    {
                        string lbl = Session["UserId"].ToString().TrimStart().TrimEnd();
                        Session["UserName"] = "admin";
                        EmpNamespam.Text = Session["UserName"].ToString().TrimStart().TrimEnd();
                    }
                    else
                    {
                        EmpNamespam.Text = Session["UserName"].ToString().TrimStart().TrimEnd();
                        string lbl = Session["UserId"].ToString().TrimStart().TrimEnd();
                        Session["Email"].ToString().TrimStart().TrimEnd();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Main.aspx");
            }
           
        }
  
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("MainDashBoard.aspx");
        }
    }
}