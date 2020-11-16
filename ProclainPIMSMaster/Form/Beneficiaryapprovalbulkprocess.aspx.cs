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
using ClosedXML.Excel;
using System.Web.Script.Serialization;

namespace ProclainPIMSMaster.Form
{
    public partial class Beneficiaryapprovalbulkprocess : System.Web.UI.Page
    {
        NewSuggestionModel NSM = new NewSuggestionModel();
        Employee E = new Employee();
        static String us1;

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
                    if (!IsPostBack)
                    {
                        SuggestionTableView();
                        DepartmentNameView();
                    }

                    //load();
                    //Barchart_details();

                    //SuggestionCounts();
                    //DepartmentNameView();
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
            Ds = E.BeneficiaryBulkEmpgridview("Emp");
            //SuggestionGridView.DataSource = Ds.Tables[0];
            //SuggestionGridView.DataBind();
            //if((Ds !=null) (Ds! ="System.Data.DataRowView"))
            //  {
            SuggestionGridViewEmp.DataSource = Ds.Tables[0];
            SuggestionGridViewEmp.DataBind();
            //GridView1.DataSource = Ds.Tables[0];
            //GridView1.DataBind();

            Ds = E.BeneficiaryBulkImpgridview("");
            SuggestionGridViewImp.DataSource = Ds.Tables[0];
            SuggestionGridViewImp.DataBind();

        }
        protected void SuggestionGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }
        public void DepartmentNameView()
        {
            try
            {
                DataSet Ds = new DataSet();


                Ds = NSM.DepartmentSelectAll();

                //DepartmentDDListEmp.DataSource = Ds.Tables[0];
                //DepartmentDDListEmp.DataTextField = "DepName";
                //DepartmentDDListEmp.DataValueField = "DepId";
                //DepartmentDDListEmp.DataBind();
                ////DepartmentDDList.Items.Insert(0, new ListItem("", ""));
                ////SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);

                //Ds = NSM.DepartmentSelectAll();
                //DepartmentDDListImp.DataSource = Ds.Tables[0];
                //DepartmentDDListImp.DataTextField = "DepName";
                //DepartmentDDListImp.DataValueField = "DepId";
                //DepartmentDDListImp.DataBind();




            }
            catch (Exception e1)
            {

            }


        }
        protected void grossamtempbtn_Click(object sender, EventArgs e)
        {
            try
            {


                for (int i = 0; i < SuggestionGridViewEmp.Rows.Count; i++) // read data from  gridview  
                {
                    // dtRow = ordersTable.NewRow();
                    Label IdeaId = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
                    Label Employee = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label3");
                    Label Dept = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label4");
                    Label Date = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label5");
                    TextBox score = (TextBox)SuggestionGridViewEmp.Rows[i].FindControl("grossamtemp");
                    E.Bulkempideaid = IdeaId.Text;
                    E.Bulkempid = Employee.Text;
                    E.Bulkempdep = Dept.Text;
                    E.Bulkempdate = Date.Text;
                    E.Bulkempamt = score.Text;
                    E.EmployeeId = us1.ToString();
                    E.BulkProcessEmp(E);


                    //mm.idea = name.text;
                    //inset.hr(ideaid.text, '', '');




                }
                sendEmail();
                string myscript = "alert ('Successfully Send To Finance');";
                Response.Redirect("Beneficiaryapprovalbulkprocess.aspx",false);
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
            }
            catch (Exception e1)
            {

            }
        }
        protected void grossimpamtbtn_Click(object sender, EventArgs e)
        {
            try
            {
                
                for (int i = 0; i < SuggestionGridViewImp.Rows.Count; i++) // read data from  gridview  
                {
                    // dtRow = ordersTable.NewRow();
                    Label IdeaId = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
                    Label Employee = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label3");
                    Label Dept = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label4");
                    Label Date = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label5");
                    Label grade = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label6");
                    TextBox score = (TextBox)SuggestionGridViewImp.Rows[i].FindControl("grossamtimp");
                    E.Bulkimpideaid = IdeaId.Text;
                    E.Bulkimpid = Employee.Text;
                    E.Bulkimpdep = Dept.Text;
                    E.Bulkimpdate = Date.Text;
                    E.Bulkimpbengrade = grade.Text;
                    E.Bulkimpamt = score.Text;
                    E.EmployeeId = us1.ToString();
                    E.BulkProcessImp(E);


                    //mm.idea = name.text;
                    //inset.hr(ideaid.text, '', '');



                }
                sendEmail();
                string myscript = "alert ('Successfully Send To Finance');";
                Response.Redirect("Beneficiaryapprovalbulkprocess.aspx",false);
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
            }
            catch(Exception e1)
            {

            }
            
        }
       
        public void sendEmail()
        {
            string apiUrl = "http://10.14.0.40/WebEmail/api/Email";   // located in IIS server
            string apiUrlLocal = "http://10.14.0.40/WebEmail/api/Email";     // Running instance from Visual Studio
            object input = new
            {
                toName = "rajesh",
                toId = "PI-235",
                toAddress = "rajesh.arumugam@poclain.com",
                //toAddress = "raja.g@binary2quantumsolutions.com",
                subject = "Beneficiary Appproval Bulk process",
                content = "From Beneficiary Approved Ideas to Payment Process",
                sender = "Vengadessane" + ",<br/>" + "PI-242" + ",<br/>" + "HR",
                ideaID = "Bulk Idea",
                resci = "Team",
                type = "New",
                subTitle= "Send To Final Payment Process"

                
            };
            string inputJson = (new JavaScriptSerializer()).Serialize(input);
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Encoding = Encoding.UTF8;
            // string json = client.UploadString(apiUrl + "/posted", inputJson);   // IIS server webapi project method
            string json = client.UploadString(apiUrlLocal + "/pimsEmail", inputJson);   // Running instance from Visual Studio - webapi project method
            var data = (new JavaScriptSerializer()).Deserialize<UserInfo>(json);  // using UserInfo class receview response from api
            Response.Write(data.password.ToString());
        }

        protected void GetReportEmp_Click(object sender, EventArgs e)
        {
            try
            {
                string startdate = Request.Form["minemp"];
                string enddate = Request.Form["maxemp"];
                if (startdate != null && startdate != "" && enddate != null && enddate != "")
                { 
                    DataSet Ds = new DataSet();
                    E.Empstartdate = Request.Form["minemp"];
                    E.Empenddate = Request.Form["maxemp"];

                    Ds = E.BeneficiaryBulkEmpgridviewFilter(E);

                    SuggestionGridViewEmp.DataSource = Ds.Tables[0];
                    SuggestionGridViewEmp.DataBind();
                }
                else
                {
                    string myscript = "alert ('Enter Start And End Dates');";
                    
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                }
            }
            catch (Exception e1)
            {

                throw ;
            }
           
            

           
        }

        protected void GetReportImp_Click(object sender, EventArgs e)
        {
            try
            {
                string startdate = Request.Form["minimp"];
                string enddate = Request.Form["maximp"];
                if (startdate != null && startdate != "" && enddate != null && enddate != "")
                {
                    DataSet Ds = new DataSet();
                    E.Impstartdate = Request.Form["minimp"];
                    E.Impenddate = Request.Form["maximp"];
            
                    Ds = E.BeneficiaryBulkImpgridviewFilter(E);
                    SuggestionGridViewImp.DataSource = Ds.Tables[0];
                    SuggestionGridViewImp.DataBind();
                }
                else
                {
                    string myscript = "alert ('Enter Start And End Dates');";

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
                }
            }
            catch (Exception e1)
            {

                throw;
            }
        }

        protected void GetExcelReportImp_Click(object sender, EventArgs e)
        {
            try
            {

                DataTable GetExcelReportImp = new DataTable("collection");
                DataColumn dtColumn;
                DataRow dtRow;

                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "IdeaId";
               
                dtColumn.Caption = "IdeaId";
                
                GetExcelReportImp.Columns.Add(dtColumn);

                // Create Name column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Employee";
                dtColumn.Caption = "Employee";
                GetExcelReportImp.Columns.Add(dtColumn);

                // Create CustId column which Reprence Cust Id from    
                // The cust Table    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Dept";
                
                dtColumn.Caption = "Dept";
               
                GetExcelReportImp.Columns.Add(dtColumn);

                // Create Description column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Date";
                dtColumn.Caption = "Date";
                GetExcelReportImp.Columns.Add(dtColumn);


                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "grade";
                dtColumn.Caption = "grade";
                GetExcelReportImp.Columns.Add(dtColumn);


                // Create Description column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "score";
                dtColumn.Caption = "score";
                GetExcelReportImp.Columns.Add(dtColumn);


                for (int i = 0; i < SuggestionGridViewImp.Rows.Count; i++) // read data from  gridview  
                {
                    dtRow = GetExcelReportImp.NewRow();
                    Label IdeaId = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
                    Label Employee = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label3");
                    Label Dept = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label4");
                    Label Date = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label5");
                    Label grade = (Label)SuggestionGridViewImp.Rows[i].FindControl("Label6");
                    TextBox score = (TextBox)SuggestionGridViewImp.Rows[i].FindControl("grossamtimp");

                    dtRow["IdeaId"] = IdeaId.Text;
                    dtRow["Employee"] = Employee.Text;
                    dtRow["Dept"] = Dept.Text;
                    dtRow["Date"] = Date.Text;
                    dtRow["grade"] = grade.Text;
                    dtRow["score"] = score.Text;
                    GetExcelReportImp.Rows.Add(dtRow);


                }
                //SuggestionGridViewImp.DataSource = GetExcelReportImp;
                //SuggestionGridViewImp.DataBind();
                //DataSet Ds = new DataSet();
                //MM.IdeaId = Request.QueryString["IdeaID"];
                //Ds = MM.FinanceExcelView(MM);
                ////ds = sho.GetDatasetByCommandString("sp_Report_excel_two", param, value);
                //DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(GetExcelReportImp, "PIMSImpl");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = GetExcelReportImp.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Implement Member List";
                    ws.Cell(1, cc).Style.Font.Bold = true;
                    ws.Cell(1, cc).Style.Font.FontSize = 25;
                    ws.Cell(1, cc).Style.Font.FontName = "Calibri";
                    Response.Clear();
                    Response.Buffer = true;
                    Response.Charset = "";
                    Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                    Response.AddHeader("content-disposition", "attachment;filename=PIMS-" + DateTime.Now.ToString("dd/MM/yyyy") + ".xlsx");
                    using (MemoryStream MyMemoryStream = new MemoryStream())
                    {
                        wb.SaveAs(MyMemoryStream);
                        MyMemoryStream.WriteTo(Response.OutputStream);
                        Response.Flush();
                        Response.End();
                    }



                }
                string prevPage = String.Empty;
                prevPage = Request.UrlReferrer.ToString();
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void GetExcelReportEmp_Click(object sender, EventArgs e)
        {
            try
            {

                DataTable GetExcelReportEmp = new DataTable("collection");
                DataColumn dtColumn;
                DataRow dtRow;

                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "IdeaId";

                dtColumn.Caption = "IdeaId";

                GetExcelReportEmp.Columns.Add(dtColumn);

                // Create Name column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Employee";
                dtColumn.Caption = "Employee";
                GetExcelReportEmp.Columns.Add(dtColumn);

                // Create CustId column which Reprence Cust Id from    
                // The cust Table    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Dept";

                dtColumn.Caption = "Dept";

                GetExcelReportEmp.Columns.Add(dtColumn);

                // Create Description column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Date";
                dtColumn.Caption = "Date";
                GetExcelReportEmp.Columns.Add(dtColumn);


                //dtColumn = new DataColumn();
                //dtColumn.DataType = Type.GetType("System.String");
                //dtColumn.ColumnName = "grade";
                //dtColumn.Caption = "grade";
                //GetExcelReportEmp.Columns.Add(dtColumn);


                // Create Description column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "score";
                dtColumn.Caption = "score";
                GetExcelReportEmp.Columns.Add(dtColumn);


                for (int i = 0; i < SuggestionGridViewEmp.Rows.Count; i++) // read data from  gridview  
                {
                    dtRow = GetExcelReportEmp.NewRow();
                    Label IdeaId = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
                    Label Employee = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label3");
                    Label Dept = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label4");
                    Label Date = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label5");
                    TextBox score = (TextBox)SuggestionGridViewEmp.Rows[i].FindControl("grossamtemp");

                    dtRow["IdeaId"] = IdeaId.Text;
                    dtRow["Employee"] = Employee.Text;
                    dtRow["Dept"] = Dept.Text;
                    dtRow["Date"] = Date.Text;
                    //dtRow["grade"] = grade.Text;
                    dtRow["score"] = score.Text;
                    GetExcelReportEmp.Rows.Add(dtRow);


                }
                //SuggestionGridViewImp.DataSource = GetExcelReportImp;
                //SuggestionGridViewImp.DataBind();
                //DataSet Ds = new DataSet();
                //MM.IdeaId = Request.QueryString["IdeaID"];
                //Ds = MM.FinanceExcelView(MM);
                ////ds = sho.GetDatasetByCommandString("sp_Report_excel_two", param, value);
                //DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(GetExcelReportEmp, "PIMSEmp");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = GetExcelReportEmp.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Employee List";
                    ws.Cell(1, cc).Style.Font.Bold = true;
                    ws.Cell(1, cc).Style.Font.FontSize = 25;
                    ws.Cell(1, cc).Style.Font.FontName = "Calibri";
                    Response.Clear();
                    Response.Buffer = true;
                    Response.Charset = "";
                    Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                    Response.AddHeader("content-disposition", "attachment;filename=PIMS-" + DateTime.Now.ToString("dd/MM/yyyy") + ".xlsx");
                    using (MemoryStream MyMemoryStream = new MemoryStream())
                    {
                        wb.SaveAs(MyMemoryStream);
                        MyMemoryStream.WriteTo(Response.OutputStream);
                        Response.Flush();
                        Response.End();
                    }



                }
                string prevPage = String.Empty;
                prevPage = Request.UrlReferrer.ToString();
            }
            catch (Exception e1)
            {

                throw;
            }
        }

        protected void refresh_Click(object sender, EventArgs e)
        {
            Response.Redirect("Beneficiaryapprovalbulkprocess.aspx");
        }



        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.Header)
        //    {
        //        //add the thead and tbody section programatically
        //        e.Row.TableSection = TableRowSection.TableHeader;
        //    }
        //    //}

        //}

    }
}