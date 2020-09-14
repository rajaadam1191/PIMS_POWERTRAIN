using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using ProclainPIMSMaster.Models;

namespace ProclainPIMSMaster.Form
{
    public partial class FinanceMainDashboard : System.Web.UI.Page
    {
        Employee E = new Employee();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //load();
                SuggestionTableView();
                SuggestionCounts();

            }
            catch (Exception e1)
            {
                Response.Write(e1.ToString());
            }


        }
        public void SuggestionTableView()
        {

            DataSet Ds = new DataSet();
            Ds = E.FinanceEvaluvationSendGridViewFinanceDetail();
            //if((Ds !=null) (Ds! ="System.Data.DataRowView"))
            //  {
            SuggestionGridView.DataSource = Ds.Tables[0];
            SuggestionGridView.DataBind();




        }
        public void SuggestionCounts()
        {

            DataSet Ds = new DataSet();
            Ds = E.FinSelectDashboard(""); 
            spanUserInbox.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
            spanUserBal.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
            spanImplInbox.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
            spanImplBal.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[3].ToString();
            spanTotal.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[4].ToString();



        }
        protected void SuggestionGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }
        public void load()
        {
            //    WebClient client = new WebClient();
            //    string data = client.DownloadString("http://www.google.com/ig/api?hl=de&weather=YourTown");

            //    byte[] encoded = Encoding.UTF8.GetBytes(data);

            //    MemoryStream stream = new MemoryStream(encoded);

            //    XmlDocument xml = new XmlDocument();
            //    xml.Load(stream);

            //    Console.WriteLine(xml.InnerXml);
            //    Console.ReadLine();
        }
        public void loader()
        {
            //HttpWebRequest myRequest;
            //HttpWebResponse myResponse = null;
            //XmlDocument MyXMLdoc = null;

            //myRequest = (HttpWebRequest)WebRequest.Create("http://www.google.com/ig/api" +
            //    "?weather=" + string.Format("Puducherry"));
            //myResponse = (HttpWebResponse)myRequest.GetResponse();
            //MyXMLdoc = new XmlDocument();
            //MyXMLdoc.Load(myResponse.GetResponseStream());
        }
    }

}