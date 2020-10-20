using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProclainPIMSMaster
{
    public partial class BeneficiaryApproval : System.Web.UI.MasterPage
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
                        Session["Designation"] = "HR";
                    }

                    
                    //else
                    //{
                    //    DataSet Ds = new DataSet();
                    //    RL.HEmployeeID = us;
                    //    Ds = RL.LoginUserDetail(RL);
                    //    Session["UserName"] = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    //    Session["Department"] = Ds.Tables[0].Rows[0].ItemArray[3].ToString();
                    //    Session["Designation"] = Ds.Tables[0].Rows[0].ItemArray[4].ToString();
                    //    Session["Email"] = Ds.Tables[0].Rows[0].ItemArray[5].ToString();
                    //    Session["Password"] = Ds.Tables[0].Rows[0].ItemArray[6].ToString();

                    //    EmpNamespam.InnerText = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    //    UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    //    M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                    //    Ds = M.DepartmetnRepeterView(M);
                    //    M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

                    //    Ds = M.SelectRepeterView();

                    //    MailRepeater.DataSource = Ds.Tables[0];
                    //    //MailRepeater.SelectMethod = "IdeaId";
                    //    MailRepeater.DataBind();
                    //}

                }
            }
            catch (Exception)
            {

                Response.Redirect("MainDashBoard.aspx");
            }

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("MainDashBoard.aspx");
        }
    }
}