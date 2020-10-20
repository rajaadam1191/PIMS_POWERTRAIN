using ProclainPIMSMaster.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProclainPIMSMaster
{
    public partial class FinanacePage : System.Web.UI.MasterPage
    { 
         protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["UserId"].ToString() == "admin")
                {
                    string lbl = Session["UserId"].ToString().TrimStart().TrimEnd();
                    Session["UserName"] = "admin";
                    lblempname.Text = Session["UserName"].ToString().TrimStart().TrimEnd();
                }
                else
                {
                    lblempname.Text = Session["UserName"].ToString().TrimStart().TrimEnd();
                    string lbl = Session["UserId"].ToString().TrimStart().TrimEnd();
                    Session["Email"].ToString().TrimStart().TrimEnd();
                }

                //lblempname.Text = Session["UserName"].ToString().TrimStart().TrimEnd();
                //string lbl = Session["UserId"].ToString().TrimStart().TrimEnd();
                //Session["Email"].ToString().TrimStart().TrimEnd();
            }
            catch (Exception)
            {
                Response.Redirect("Main.aspx");
           
            }
          
            
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("MainDashBoard.aspx");
        }

   
    }
}