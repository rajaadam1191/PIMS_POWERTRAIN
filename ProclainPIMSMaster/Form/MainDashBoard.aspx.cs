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
    public partial class MainDashBoard : System.Web.UI.Page
    {
        DataBankManager Dm = new DataBankManager();
        DataSet Ds = new DataSet();
        int newSug; 
        int reject;
        int approved;
        int newSugyear;
        int rejectyear;
        int approvedyear;

        protected void Page_Load(object sender, EventArgs e)
        {

            Mailcontent();
            bindGraph();
            //PieChartDetails3Months();
            //PieChartDetails1Year();


        }

        protected void GoSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
        public void Mailcontent()
        {
            Ds = Dm.CeoMessageSelect();
            MailRepeater.DataSource = Ds.Tables[0];
            //MailRepeater.SelectMethod = "IdeaId";
            MailRepeater.DataBind();
        }
        public void PieChartDetails3Months()
        {
           
            DataSet Ds = new DataSet();
            Ds = Dm.Barchart_get_details();
            newSug = int.Parse(Ds.Tables[0].Rows[0].ItemArray[0].ToString()); 
             reject = int.Parse(Ds.Tables[0].Rows[0].ItemArray[1].ToString());
            approved = int.Parse(Ds.Tables[0].Rows[0].ItemArray[2].ToString());
           
            string script = "PieChart('" + newSug + "','" + reject + "','" + approved + "'); ";
            ClientScript.RegisterStartupScript(this.GetType(), "function", script, true);
        }
        public void PieChartDetails1Year()
        {

            DataSet Ds = new DataSet();
            Ds = Dm.Barchart_get_details_1Year();
            newSugyear = int.Parse(Ds.Tables[0].Rows[0].ItemArray[0].ToString());
            rejectyear = int.Parse(Ds.Tables[0].Rows[0].ItemArray[1].ToString());
            approvedyear = int.Parse(Ds.Tables[0].Rows[0].ItemArray[2].ToString());

            string scriptyear = "PieChartYear('" + newSugyear + "','" + rejectyear + "','" + approvedyear + "'); ";
            ClientScript.RegisterStartupScript(this.GetType(), "function", scriptyear, true);
        }

        public void bindGraph()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = Dm.Barchart_get_details();
                newSug = int.Parse(Ds.Tables[0].Rows[0].ItemArray[0].ToString());
                reject = int.Parse(Ds.Tables[0].Rows[0].ItemArray[1].ToString());
                approved = int.Parse(Ds.Tables[0].Rows[0].ItemArray[2].ToString());

                DataSet Ds1 = new DataSet();
                Ds1 = Dm.Barchart_get_details_1Year();
                newSugyear = int.Parse(Ds1.Tables[0].Rows[0].ItemArray[0].ToString());
                rejectyear = int.Parse(Ds1.Tables[0].Rows[0].ItemArray[1].ToString());
                approvedyear = int.Parse(Ds1.Tables[0].Rows[0].ItemArray[2].ToString());

                string scriptyear = "bindgraph('" + newSug + "','" + reject + "','" + approved + "','" + newSugyear + "','" + rejectyear + "','" + approvedyear + "'); ";
                ClientScript.RegisterStartupScript(this.GetType(), "function", scriptyear, true); 
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}