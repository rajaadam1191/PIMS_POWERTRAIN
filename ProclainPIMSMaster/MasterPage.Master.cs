using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

using ProclainPIMSMaster.Models;
using System.Data;

namespace ProclainPIMSMaster
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        Employee em = new Employee();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["UserId"].ToString() == "admin")
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
                    DataSet Ds = new DataSet();
                    
                    em.CMID = lbl.ToString();
                    Ds = em.ImplTeamEvalRepView(em);
                    int ccom = Ds.Tables[0].Rows.Count;
                    countcom.InnerHtml = ccom.ToString();
                }
               
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
            Response.Redirect("Main.aspx");
        }
    }
}