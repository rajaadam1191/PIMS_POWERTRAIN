using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using ClosedXML.Excel;
using ProclainPIMSMaster.Models;

namespace ProclainPIMSMaster.Form
{
    public partial class DBMDashboard : System.Web.UI.Page
    {
        Employee E = new Employee();
        static String us1;
        int com;
        int hod;
        int imp;
        int hos;
        int ben;
        int fin;
        //public string retVal { get; set; }
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
                    //load();
                   
                    SuggestionTableView();
                    SuggestionCounts();
                    Barchart_details();
                }

        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }


    }
    public void SuggestionTableView()
    {

        DataSet Ds = new DataSet();
        Ds = E.EmpSelectDashboard("");
        //if((Ds !=null) (Ds! ="System.Data.DataRowView"))
        //  {
        SuggestionGridView.DataSource = Ds.Tables[0];
        SuggestionGridView.DataBind();




    }
    public void SuggestionCounts()
    {

        DataSet Ds = new DataSet();
        Ds = E.EmpSelectDashboard("counts");
        spanNew.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
        spanRejected.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
        spanApproved.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
        spanTotal.InnerHtml = Ds.Tables[0].Rows[0].ItemArray[3].ToString();



    }
    protected void SuggestionGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            //add the thead and tbody section programatically
            e.Row.TableSection = TableRowSection.TableHeader;
        }
    }
    public void Barchart_details()
    {
            try
            {
                if (Session["UserId"] == null)
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    us1 = Session["UserId"].ToString();
                    Mailling m = new Mailling();
                    DataSet Ds = new DataSet();
                    Ds=  m.Barchart_get_details();
                    com = int.Parse(Ds.Tables[0].Rows[0].ItemArray[0].ToString());
                    hod = int.Parse(Ds.Tables[0].Rows[0].ItemArray[1].ToString());
                    imp = int.Parse(Ds.Tables[0].Rows[0].ItemArray[2].ToString());
                    hos = int.Parse(Ds.Tables[0].Rows[0].ItemArray[3].ToString());
                    ben = int.Parse(Ds.Tables[0].Rows[0].ItemArray[4].ToString());
                    fin = int.Parse(Ds.Tables[0].Rows[0].ItemArray[5].ToString());
                   string script= "Barchart('" + com + "','" + hod + "','" + imp + "','" + hos + "','" + ben + "','" + fin + "'); ";
                    ClientScript.RegisterStartupScript(this.GetType(), "function", script, true);

                }
            }
            catch (Exception e1)
            {

            }
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


        [WebMethod()]

        public static GraphItems getReport()
        {
            AddSuggestion A = new AddSuggestion();
            NewSuggestionModel NSM = new NewSuggestionModel();
            Employee E = new Employee();
            

            GraphItems gra = new GraphItems();
            try
            {
                 
                Mailling m = new Mailling();
                DataSet Ds = new DataSet();
                Ds = m.Barchart_get_details();
                gra.Com = int.Parse(Ds.Tables[0].Rows[0].ItemArray[0].ToString());
                gra.Hod = int.Parse(Ds.Tables[0].Rows[0].ItemArray[1].ToString());
                gra.Imp = int.Parse(Ds.Tables[0].Rows[0].ItemArray[2].ToString());
                gra.Hos = int.Parse(Ds.Tables[0].Rows[0].ItemArray[3].ToString());
                gra.Ben = int.Parse(Ds.Tables[0].Rows[0].ItemArray[4].ToString());
                gra.Fin = int.Parse(Ds.Tables[0].Rows[0].ItemArray[5].ToString());

                return gra;

            }
            catch (Exception ex)
            {
                
                return gra;
            }


        }

       
        



        }
   
}