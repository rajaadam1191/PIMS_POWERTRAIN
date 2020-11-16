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
using System.Globalization;

namespace ProclainPIMSMaster.Form
{
    public partial class DBM_HR_Module : System.Web.UI.Page
    {
        NewSuggestionModel NSM = new NewSuggestionModel();
        Employee E = new Employee();
        static String us1;
        public string stdtemp { get; set; }
        public string etdtemp { get; set; }
        public string stdtimp { get; set; }
        public string etdtimp { get; set; }

        DateTime date = DateTime.Now;

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
            Ds = E.BeneficiaryBulkEmpgridviewDBM("Emp");
            //SuggestionGridView.DataSource = Ds.Tables[0];
            //SuggestionGridView.DataBind();
            //if((Ds !=null) (Ds! ="System.Data.DataRowView"))
            //  {
            SuggestionGridViewEmp.DataSource = Ds.Tables[0];
            SuggestionGridViewEmp.DataBind();
            //GridView1.DataSource = Ds.Tables[0];
            //GridView1.DataBind();

            Ds = E.BeneficiaryBulkImpgridviewDBM("");
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

                //useridsession.s_workcn=;
                // useridsession.s_workorder_id;
                //var closeLink = (Control)sender;
                //GridViewRow row = (GridViewRow)closeLink.NamingContainer;
                //useridsession.s_workcn = ""; 

                //useridsession.s_workcn = row.Cells[1].Text;  //updated on 9-5-2019
                //useridsession.s_workorder_id = row.Cells[3].Text;

                //Label lblmat = (Label)row.FindControl("mreqid");
                //useridsession.s_materialreq_id = lblmat.Text;
                ////LinkButton lblwusage = (LinkButton)row.FindControl("lk_wusage"); 
                //Label lbluse = (Label)row.FindControl("lbl_wusage");
                //useridsession.s_usageqty = lbluse.Text;
                //Label lblstatus = (Label)row.FindControl("lbl_Status");
                //Label lblDate = (Label)row.FindControl("lblDate");

                //Label lblwc = (Label)row.FindControl("lbl_wcenter");
                //Label lblworkorder = (Label)row.FindControl("lbl_workorderid");



                for (int i = 0; i < SuggestionGridViewEmp.Rows.Count; i++) // read data from  gridview  
                {

                    // dtRow = ordersTable.NewRow();
                    //Label IdeaId = (Label)row.FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
                    //Label Employee = (Label)row.FindControl("Label3");
                    //Label Dept = (Label)row.FindControl("Label4");
                    //Label Date = (Label)row.FindControl("Label5");
                    //TextBox score = (TextBox)row.FindControl("grossamtemp");


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
                Response.Redirect("DBM_HR_Module.aspx",false);
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
                    //var closeLink = (Control)sender;
                    //GridViewRow row = (GridViewRow)closeLink.NamingContainer;
                    // dtRow = ordersTable.NewRow();
                    //Label IdeaId = (Label)row.FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
                    //Label Employee = (Label)row.FindControl("Label3");
                    //Label Dept = (Label)row.FindControl("Label4");
                    //Label Date = (Label)row.FindControl("Label5");
                    //Label grade = (Label)row.FindControl("Label6");
                    //TextBox score = (TextBox)row.FindControl("grossamtimp");

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
                Response.Redirect("DBM_HR_Module.aspx",false);
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
            }
            catch (Exception e1)
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
                subject = "Beneficiary Appproval Bulk process",
                content = "From Beneficiary Approved Ideas to Payment Process",
                sender = "Jeyapandi" + ",<br/>" + "PI-266" + ",<br/>" + "HR",
                ideaID = "Bulk Idea",
                resci = "Team",
                type = "New",
                subTitle = "Send To Final Payment Process"


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

                dtfromemp.Text = startdate;
                dttoemp.Text = enddate;


                stdtemp = startdate.ToString();
                etdtemp = enddate.ToString();
                
                if (startdate != null && startdate != "" && enddate != null && enddate != "")
                {
                    DataSet Ds = new DataSet();


                   
                    DateTime getcurrentfrom = DateTime.ParseExact(Request.Form["minemp"], "MM/dd/yyyy", CultureInfo.InvariantCulture);
                    
                    DateTime getcurrentto = DateTime.ParseExact(Request.Form["maxemp"], "MM/dd/yyyy", CultureInfo.InvariantCulture);
                    E.Empstartdate = getcurrentfrom.ToString("yyyy-MM-dd");
                    E.Empenddate = getcurrentto.ToString("yyyy-MM-dd");

                    Ds = E.BeneficiaryBulkEmpgridviewFilterDBM(E);

                    SuggestionGridViewEmp.DataSource = Ds.Tables[0];
                    SuggestionGridViewEmp.DataBind();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "mappselected();", true);
                    //string myscript = "mappselected()";
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Employee Id or Password Incorrect','','warning')", true);
                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

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

        protected void GetReportImp_Click(object sender, EventArgs e)
        {
            try
            {
                string startdate = Request.Form["minimp"];
                string enddate = Request.Form["maximp"];
                stdtimp = startdate.ToString();
                etdtimp = enddate.ToString();
                
                if (startdate != null && startdate != "" && enddate != null && enddate != "")
                {
                    DataSet Ds = new DataSet();
                    E.Impstartdate = Request.Form["minimp"];
                    E.Impenddate = Request.Form["maximp"];

                    Ds = E.BeneficiaryBulkImpgridviewFilterDBM(E);
                    SuggestionGridViewImp.DataSource = Ds.Tables[0];
                    SuggestionGridViewImp.DataBind();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "mappselected();", true);
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


                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "status";
                dtColumn.Caption = "status";
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
                    Label status = (Label)SuggestionGridViewImp.Rows[i].FindControl("LblImpRemark");
                    dtRow["IdeaId"] = IdeaId.Text;
                    dtRow["Employee"] = Employee.Text;
                    dtRow["Dept"] = Dept.Text;
                    dtRow["Date"] = Date.Text;
                    dtRow["grade"] = grade.Text;
                    dtRow["score"] = score.Text;
                    dtRow["status"] = status.Text;
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


                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "status";
                dtColumn.Caption = "status";
                GetExcelReportEmp.Columns.Add(dtColumn);

                for (int i = 0; i < SuggestionGridViewEmp.Rows.Count; i++) // read data from  gridview  
                {
                    dtRow = GetExcelReportEmp.NewRow();
                    Label IdeaId = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
                    Label Employee = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label3");
                    Label Dept = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label4");
                    Label Date = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label5");
                    TextBox score = (TextBox)SuggestionGridViewEmp.Rows[i].FindControl("grossamtemp");
                    Label status = (Label)SuggestionGridViewEmp.Rows[i].FindControl("LblEmpRemark");
                    dtRow["IdeaId"] = IdeaId.Text;
                    dtRow["Employee"] = Employee.Text;
                    dtRow["Dept"] = Dept.Text;
                    dtRow["Date"] = Date.Text;
                    //dtRow["grade"] = grade.Text;
                    dtRow["score"] = score.Text;
                    dtRow["status"] = status.Text;
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

        protected void impfilter_SelectedIndexChanged(object sender, EventArgs e)
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
                dtColumn.ColumnName = "IMPL_Members";
                dtColumn.Caption = "IMPL_Members";
                GetExcelReportImp.Columns.Add(dtColumn);

                // Create CustId column which Reprence Cust Id from    
                // The cust Table    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "DepName";

                dtColumn.Caption = "DepName";

                GetExcelReportImp.Columns.Add(dtColumn);

                // Create Description column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Date";
                dtColumn.Caption = "Date";
                GetExcelReportImp.Columns.Add(dtColumn);


                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "BENGrade";
                dtColumn.Caption = "BENGrade";
                GetExcelReportImp.Columns.Add(dtColumn);


                // Create Description column.    
                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Amount";
                dtColumn.Caption = "Amount";
                GetExcelReportImp.Columns.Add(dtColumn);


                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Remark";
                dtColumn.Caption = "Remark";
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
                    Label status = (Label)SuggestionGridViewImp.Rows[i].FindControl("LblImpRemark");
                    if(impfilter.Text!="select")
                    {
                        if (impfilter.Text == status.Text)
                        {
                            dtRow["IdeaId"] = IdeaId.Text;
                            dtRow["IMPL_Members"] = Employee.Text;
                            dtRow["DepName"] = Dept.Text;
                            dtRow["Date"] = Date.Text;
                            dtRow["BENGrade"] = grade.Text;
                            dtRow["Amount"] = score.Text;
                            dtRow["Remark"] = status.Text;
                            GetExcelReportImp.Rows.Add(dtRow);
                        }
                    }
                    
                       


                }
                SuggestionGridViewImp.DataSource = null;
                SuggestionGridViewImp.DataBind();
                SuggestionGridViewImp.DataSource = GetExcelReportImp;
                SuggestionGridViewImp.DataBind();
            }
            catch(Exception e1)
            {

            }

            }

        protected void empfilter_SelectedIndexChanged(object sender, EventArgs e)
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
                dtColumn.ColumnName = "DepName";

                dtColumn.Caption = "DepName";

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
                dtColumn.ColumnName = "Amount";
                dtColumn.Caption = "Amount";
                GetExcelReportEmp.Columns.Add(dtColumn);


                dtColumn = new DataColumn();
                dtColumn.DataType = Type.GetType("System.String");
                dtColumn.ColumnName = "Remark";
                dtColumn.Caption = "Remark";
                GetExcelReportEmp.Columns.Add(dtColumn);

                for (int i = 0; i < SuggestionGridViewEmp.Rows.Count; i++) // read data from  gridview  
                {
                    dtRow = GetExcelReportEmp.NewRow();
                    Label IdeaId = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
                    Label Employee = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label3");
                    Label Dept = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label4");
                    Label Date = (Label)SuggestionGridViewEmp.Rows[i].FindControl("Label5");
                    TextBox score = (TextBox)SuggestionGridViewEmp.Rows[i].FindControl("grossamtemp");
                    Label status = (Label)SuggestionGridViewEmp.Rows[i].FindControl("LblEmpRemark");

                    if (empfilter.Text != "select")
                    {
                        if (empfilter.Text == status.Text)
                        {
                            dtRow["IdeaId"] = IdeaId.Text;
                            dtRow["Employee"] = Employee.Text;
                            dtRow["DepName"] = Dept.Text;
                            dtRow["Date"] = Date.Text;
                            //dtRow["grade"] = grade.Text;
                            dtRow["Amount"] = score.Text;
                            dtRow["Remark"] = status.Text;
                            GetExcelReportEmp.Rows.Add(dtRow);
                        }
                    }


                }
                SuggestionGridViewEmp.DataSource = null;
                SuggestionGridViewEmp.DataBind();
                SuggestionGridViewEmp.DataSource = GetExcelReportEmp;
                SuggestionGridViewEmp.DataBind();
            }
            catch(Exception e1)
            {

            }

            }

        protected void refresh_Click(object sender, EventArgs e)
        {
            Response.Redirect("DBM_HR_Module.aspx");
        }

        //protected void SuggestionGridViewEmp_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        Label lblstatus = (Label)e.Row.FindControl("LblEmpRemark");
        //        if (lblstatus.Text == "Approved")
        //        {
        //            Button btn = (Button)e.Row.FindControl("grossamtempbtn");
        //            btn.Visible = false;
        //        }
        //    }
        //}

        //protected void SuggestionGridViewImp_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        Label lblstatus = (Label)e.Row.FindControl("LblimpRemark");
        //        if (lblstatus.Text == "Approved")
        //        {
        //            Button btn = (Button)e.Row.FindControl("grossimpamtbtn");
        //            btn.Visible = false;
        //        }
        //    }
        //}

        //  protected void SuggestionGridViewImp_SelectedIndexChanged(object sender, EventArgs e)
        //  {
        //      try
        //      {


        //      Label IdeaId = (Label)SuggestionGridViewImp.Rows[1].FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
        //      Label Employee = (Label)SuggestionGridViewImp.Rows[2].FindControl("Label3");
        //      Label Dept = (Label)SuggestionGridViewImp.Rows[3].FindControl("Label4");
        //      Label Date = (Label)SuggestionGridViewImp.Rows[4].FindControl("Label5");
        //      Label grade = (Label)SuggestionGridViewImp.Rows[5].FindControl("Label6");
        //      TextBox score = (TextBox)SuggestionGridViewImp.Rows[6].FindControl("grossamtimp");

        //      E.Bulkimpideaid = IdeaId.Text;
        //      E.Bulkimpid = Employee.Text;
        //      E.Bulkimpdep = Dept.Text;
        //      E.Bulkimpdate = Date.Text;
        //      E.Bulkimpbengrade = grade.Text;
        //      E.Bulkimpamt = score.Text;
        //      E.BulkProcessImp(E);


        //      //mm.idea = name.text;
        //      //inset.hr(ideaid.text, '', '');




        //  string myscript = "alert ('Successfully Send To Finance');";
        //  Response.Redirect("DBM_HR_Module.aspx");
        //          Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);

        //      }
        //      catch(Exception e1)
        //      {

        //      }
        //}


        //  protected void SuggestionGridViewEmp_SelectedIndexChanged(object sender, EventArgs e)
        //  {
        //      try
        //      {


        //      Label IdeaId = (Label)SuggestionGridViewEmp.Rows[1].FindControl("Label2"); // get value from lable as well as textbox using id of the elements raja
        //      Label Employee = (Label)SuggestionGridViewEmp.Rows[2].FindControl("Label3");
        //      Label Dept = (Label)SuggestionGridViewEmp.Rows[3].FindControl("Label4");
        //      Label Date = (Label)SuggestionGridViewEmp.Rows[4].FindControl("Label5");
        //      TextBox score = (TextBox)SuggestionGridViewEmp.Rows[5].FindControl("grossamtemp");
        //      E.Bulkempideaid = IdeaId.Text;
        //      E.Bulkempid = Employee.Text;
        //      E.Bulkempdep = Dept.Text;
        //      E.Bulkempdate = Date.Text;
        //      E.Bulkempamt = score.Text;
        //      E.BulkProcessEmp(E);


        //      //mm.idea = name.text;
        //      //inset.hr(ideaid.text, '', '');





        //  string myscript = "alert ('Successfully Send To Finance');";
        //  Response.Redirect("DBM_HR_Module.aspx");
        //          Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MyScript", myscript, true);
        //      }
        //      catch (Exception e1)
        //      {

        //      }
        //  }



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