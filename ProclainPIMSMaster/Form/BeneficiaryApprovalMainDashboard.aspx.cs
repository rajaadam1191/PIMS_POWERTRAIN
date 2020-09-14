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
using System.Web.Services;

namespace ProclainPIMSMaster.Form
{
    public class CESEmpDashboardContentsApprovaldashboard
    {

        public string Sempid { get; set; }
        public string Sempname { get; set; }
        public string SDepartment { get; set; }
        public string SDesignation { get; set; }
        public string SDate { get; set; }
        public string SSubject { get; set; }
        public string SContent { get; set; }
        public string SfromTag { get; set; }
        public string SEIDTag { get; set; }
        public string SDepTag { get; set; }
        public string SMailID { get; set; }
        public string SConTag { get; set; }
        public string SSubTag { get; set; }
        public string SDesTag { get; set; }
        public string empid { get; set; }
        public string empname { get; set; }
        public string Department { get; set; }
        public string Designation { get; set; }
        public string Date { get; set; }
        public string category { get; set; }
        public string subject { get; set; }
        public string Before { get; set; }
        public string After { get; set; }
        public string Benifit { get; set; }
        public string status { get; set; }
        public string UpLoad1 { get; set; }
        public string UpLoad2 { get; set; }
        public string UpLoad3 { get; set; }
        public string HEmployeeID { get; set; }
        public string HEmployeeName { get; set; }
        public string Email { get; set; }
        public string DepartmentName { get; set; }
        public string fromTag { get; set; }
        public string EIDTag { get; set; }
        public string DepTag { get; set; }
        public string MailID { get; set; }

        public string DesTag { get; set; }
        public string CatTag { get; set; }
        public string IdIdTag { get; set; }
        public string BefTag { get; set; }
        public string AftTag { get; set; }
        public string BenTag { get; set; }
        public string IdeaIdTag { get; set; }
        public string ErrorLabel { get; set; }
        public string RIdeaID { get; set; }
        public string REmpID { get; set; }
        public string REmpName { get; set; }
        public string RSub { get; set; }
        public string RCon { get; set; }
        public string RMail { get; set; }
    }
    [System.Web.Script.Services.ScriptService]
    public partial class BeneficiaryApprovalMainDashboard : System.Web.UI.Page
    {
        NewSuggestionModel NSM = new NewSuggestionModel();
        Employee E = new Employee();
        static String us1;
        int com;
        int hod;
        int imp;
        int hos;
        int ben;
        int fin;
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
                    us1 = Session["UserId"].ToString();
                    //load();
                    Barchart_details();
                    SuggestionTableView();
                    SuggestionCounts();
                    DepartmentNameView();
                }
            }
            catch (Exception e1)
            {
                Response.Write(e1.ToString());
            }


        }
        public void DepartmentNameView()
        {
            try
            {
                DataSet Ds = new DataSet();


                //Ds = NSM.DepartmentSelectAll();

                //DepartmentDDList.DataSource = Ds.Tables[0];
                //DepartmentDDList.DataTextField = "DepName";
                //DepartmentDDList.DataValueField = "DepId";
                //DepartmentDDList.DataBind();
                //DepartmentDDList.Items.Insert(0, new ListItem("", ""));
                //SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);DepartmentDDListIMPL
                //Ds = NSM.DepartmentSelectAll();
                //DepartmentDDListIMPL.DataSource = Ds.Tables[0];
                //DepartmentDDListIMPL.DataTextField = "DepName";
                //DepartmentDDListIMPL.DataValueField = "DepId";
                //DepartmentDDListIMPL.DataBind();
            }
            catch (Exception e1)
            {

            }


        }
        public void SuggestionTableView()
        {

            DataSet Ds = new DataSet();
            Ds = E.BenApprovalUserDashboard("");
            //if((Ds !=null) (Ds! ="System.Data.DataRowView"))
            //  {
            SuggestionGridView.DataSource = Ds.Tables[0];
            SuggestionGridView.DataBind();

            Ds = E.BenApprovalImplDashboard("");
            SuggestionGridViewImpl.DataSource = Ds.Tables[0];
            SuggestionGridViewImpl.DataBind();
            


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

                    Mailling m = new Mailling();
                    DataSet Ds = new DataSet();
                    Ds = m.Barchart_get_details();
                    com = int.Parse(Ds.Tables[0].Rows[0].ItemArray[0].ToString());
                    hod = int.Parse(Ds.Tables[0].Rows[0].ItemArray[1].ToString());
                    imp = int.Parse(Ds.Tables[0].Rows[0].ItemArray[2].ToString());
                    hos = int.Parse(Ds.Tables[0].Rows[0].ItemArray[3].ToString());
                    ben = int.Parse(Ds.Tables[0].Rows[0].ItemArray[4].ToString());
                    fin = int.Parse(Ds.Tables[0].Rows[0].ItemArray[5].ToString());
                    string script = "Barchart('" + com + "','" + hod + "','" + imp + "','" + hos + "','" + ben + "','" + fin + "'); ";
                    ClientScript.RegisterStartupScript(this.GetType(), "function", script, true);

                }
            }
            catch (Exception e1)
            {

            }
        }
        [WebMethod()]
        public static List<CESEmpDashboardContents> MChecking(string emp)
        {

            List<CESEmpDashboardContents> lst = new List<CESEmpDashboardContents>();
            DataBankManager DBM = new DataBankManager();
            CESEmpDashboardContents EEC = new CESEmpDashboardContents();
            DataSet DS = new DataSet();
            Manager M = new Manager();

            try
            {

                try
                {

                    if (emp != "" && emp != "System.Data.DataRowView")
                    {
                        M.IEmpName = emp.ToString();

                        DS = M.DeptEmployeeNameSelect(M);
                        DataTable dt = new DataTable();
                        dt = DS.Tables[0];
                        //lst.Add(new CESEmpDashboardContents() { DS.Tables[0]});
                        //List<CESEmpDashboardContents> rows = DS.Tables[0].<CESEmpDashboardContents>().ToList();
                        if (dt.Rows.Count > 0)
                        {

                            //int tot = DS.Tables.Count;
                            for (int i = 0; dt.Rows.Count > i; i++)
                            {
                                CESEmpDashboardContents EEC1 = new CESEmpDashboardContents();
                                //lst.Add(new ListItem
                                //{
                                //    Value = DS.Tables[0].Columns["EmployeeId"].ToString(),
                                //    Text = DS.Tables[0].Columns["EmployeeName"].ToString()
                                //});

                                EEC1.empid = dt.Rows[i][0].ToString();
                                EEC1.empname = dt.Rows[i][1].ToString();
                                //EEC1.empid = DS.Tables[0].Rows[i][0].ToString();
                                //EEC1.empname = DS.Tables[0].Rows[i][1].ToString();

                                lst.Add(EEC1);

                            }



                        }
                        EEC.ErrorLabel = "0";

                    }

                    else if (emp == "")
                    {

                        EEC.ErrorLabel = "Check the Employee ID ";
                    }

                    else
                    {
                        string err = "Check the Input Record is not Exit ";
                    }

                }
                catch (Exception ex)
                {
                    string err = "Check the Input Record is not Exit ";

                }
                return lst;
            }

            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

            }


        }

        protected void FilterReport_Click(object sender, EventArgs e)
        {

            //Iframe1.Attributes.Add("src", "");
            //Page.ClientScript.RegisterStartupScript(GetType(), "modelBox", "$("#myModal").modal('show');", true);
        }
        [System.Web.Services.WebMethod()]

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