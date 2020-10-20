using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;

namespace ProclainPIMSMaster
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        RegistrationLogin RL = new RegistrationLogin();
        Mailling M = new Mailling();
        static string us;
        static string UserName;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                loginload();
            }
            catch (Exception)
            {
                Response.Redirect("Main.aspx");
            }
          
            
        }
        public void ChangeTitle(string newTitle)
        {
            Page.Title = newTitle;
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("MainDashBoard.aspx");
        }

        public void loginload()
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                us = Session["UserId"].ToString();
                if (us!="B2QBackEnd")
                {
                    if (us == "admin")
                    {
                        Session["UserName"] = "admin";
                        EmpNamespam.InnerText = Session["UserName"].ToString().TrimStart().TrimEnd();
                        Session["Designation"] = "Manager";
                       
                    }
                    else
                    {
                        DataSet Ds = new DataSet();
                        RL.HEmployeeID = us;
                        Ds = RL.LoginUserDetail(RL);
                        Session["UserName"] = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                        Session["Department"] = Ds.Tables[0].Rows[0].ItemArray[3].ToString();
                        Session["Designation"] = Ds.Tables[0].Rows[0].ItemArray[4].ToString();
                        Session["Email"] = Ds.Tables[0].Rows[0].ItemArray[5].ToString();
                        Session["Password"] = Ds.Tables[0].Rows[0].ItemArray[6].ToString();

                        EmpNamespam.InnerText = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                        UserName = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                        M.IDepID = Ds.Tables[0].Rows[0].ItemArray[7].ToString();
                        Ds = M.DepartmetnRepeterView(M);
                        M.Suggestion = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

                        Ds = M.SelectRepeterView();

                        MailRepeater.DataSource = Ds.Tables[0];
                        //MailRepeater.SelectMethod = "IdeaId";
                        MailRepeater.DataBind();
                    }
                }
                else
                {
                    
                }

            }



        }
    }

}