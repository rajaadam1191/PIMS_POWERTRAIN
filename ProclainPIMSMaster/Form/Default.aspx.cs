using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using ProclainPIMSMaster.Models;
using System.Web.Services;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Web.Script.Services;

namespace ProclainPIMSMaster.Form
{
    public class testDataPasser
    {
        public string empid { get; set; }
        public string empname { get; set; }
        public string Department { get; set; }
        public string Designation { get; set; }
    }
    [System.Web.Script.Services.ScriptService]
    public partial class Approved_Suggestion : System.Web.UI.Page
    {
        NewSuggestionModel NSM = new NewSuggestionModel();
        ValidationClass VC = new ValidationClass();
        Employee E = new Employee();
        static string SIDepID;
        static string SIDesID;
        static int DID;
        static int DDesID;
        static string empidd;


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
                    if (!IsPostBack)
                    {


                        SuggestionTableView();

                        this.DataBind();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }
            
        }
        public void SuggestionTableView()
        {
           
            try
            {
                if (Session["UserId"].ToString().TrimStart().TrimEnd() != null)
                {
                    DataSet Ds = new DataSet();
                    if (empidd == "NULL")
                    {
                        Ds = E.SuggestionSelectAll();
                    }
                    else
                    {
                        Ds = E.SuggestionSelectAllID(Session["UserId"].ToString().TrimStart().TrimEnd());
                    }
                    if (Ds.Tables[0].Rows.Count != 0)
                    {
                        SuggestionGridView.DataSource = Ds.Tables[0];
                        SuggestionGridView.DataBind();
                    }
                    else
                    {
                        record.Visible = true;
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception e1)
            {
                 
            }
           
        }
       
        //DataTable dt = new DataTable();
        //dt.Columns.Add("Sl");
        //dt.Columns.Add("data");
        //dt.Columns.Add("heading1");
        //dt.Columns.Add("heading2");
        //for (int i = 0; i < 100; i++)
        //{
        //    dt.Rows.Add(new object[] { i, 123 * i, 4567 * i, 2 * i, });
        //}


        //GridView.DataSource = Ds.Tables[0];
        //GridView.DataBind();



        //protected void SuggestionGridView_PreRender(object sender, EventArgs e)
        //{
        //    GridView gv = (GridView)sender;

        //    if ((gv.ShowHeader == true && gv.Rows.Count > 0)
        //        || (gv.ShowHeaderWhenEmpty == true))
        //    {
        //        //Force GridView to use <thead> instead of <tbody> - 11/03/2013 - MCR.
        //        gv.HeaderRow.TableSection = TableRowSection.TableHeader;
        //    }
        //    if (gv.ShowFooter == true && gv.Rows.Count > 0)
        //    {
        //        //Force GridView to use <tfoot> instead of <tbody> - 11/03/2013 - MCR.
        //        gv.FooterRow.TableSection = TableRowSection.TableFooter;
        //    }
        //}
        //protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    SuggestionGridView.PageIndex = e.NewPageIndex;
        //    this.DataBind();
        //    //this.BindGrid();
        //}

        protected void SuggestionGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }



        protected void PrintButton_OnClick(object sender, ImageClickEventArgs e)
        {

        }

        //protected void EmployeeID_TextChanged(object sender, EventArgs e)
        //{
        //    //EmployeeIDSearch();
        //}

        [WebMethod()]
        public static testDataPasser Checking(string emp)
        {
            NewSuggestionModel NSM = new NewSuggestionModel();
            Employee E = new Employee();
            testDataPasser tdp = new testDataPasser();
            //Console.Write(emp);
            //Console.Write("My first ASP script!");
            try
            {
                try
                {
                    if (emp != "" && emp != "System.Data.DataRowView")
                    {
                        Console.Write(emp);

                        NSM.IEmpId = emp.ToString().Trim();

                        DataSet DS = new DataSet();
                        DS = NSM.search(NSM);


                        tdp.empname = DS.Tables[0].Rows[0].ItemArray[0].ToString();
                        SIDepID = DS.Tables[0].Rows[0].ItemArray[1].ToString();
                        tdp.Department = DS.Tables[0].Rows[0].ItemArray[2].ToString();
                        SIDesID = DS.Tables[0].Rows[0].ItemArray[3].ToString();
                        tdp.Designation = DS.Tables[0].Rows[0].ItemArray[4].ToString();

                    }

                    else
                    {

                    }
                    return tdp;
                }
                catch (Exception ex)
                {
                    throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);

                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);


            }
        }

        public void EmployeeIDRecordDateWse()
        {
            string EmpValue = Request["EmployeeIdText"];

            //Response.Write("My first ASP script!");
            try
            {
                try
                {

                    if (EmpValue != "" && EmpValue != "System.Data.DataRowView")
                    {
                        Response.Write("<script> alert('Msg ....') </script>");

                        DataSet DS = new DataSet();
                        NSM.IEmpId = EmpValue.ToString().Trim();
                        NSM.FromDate = FromDateTextBox.Text.ToString();
                        NSM.ToDate = ToDateTextBox.Text.ToString();
                        DS = NSM.DefaultFormGridViewDateWise(NSM);
                        SuggestionGridView.DataSource = DS.Tables[0];
                        SuggestionGridView.DataBind();



                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Hola mundo');</script>");
                    }

                }
                catch (Exception ex)
                {
                    throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);


                }

            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);


            }
            DID = Convert.ToInt32(SIDepID.ToString());
            DDesID = Convert.ToInt32(SIDesID);


        }

        protected void AddPopButton_Click(object sender, EventArgs e)
        {
            try
            {

                EmployeeIDRecordDateWse();

            }
            catch (Exception e1)
            { 
            }
        }
       
        
        protected void Gridimgbtn_Click1(object sender, ImageClickEventArgs e)
        {
             
            try
            {  
                
                var link = (Control)sender;
                GridViewRow row = (GridViewRow)link.NamingContainer;
                string name = row.Cells[0].Text;
                Response.Redirect("Employee_Full_Suggestion.aspx?EmployeeId=" + name);
                }
            
            catch(Exception ex)
            {
               
            }
            


        }



        //protected void ExcelButton_OnClick(object sender, ImageClickEventArgs e)
        //{
        //    // Clear all content output from the buffer stream
        //    Response.ClearContent();
        //    // Specify the default file name using "content-disposition" RESPONSE header
        //    Response.AppendHeader("content-disposition", "attachment; filename=Employees.xls");
        //    // Set excel as the HTTP MIME type
        //    Response.ContentType = "application/excel";
        //    // Create an instance of stringWriter for writing information to a string
        //    System.IO.StringWriter stringWriter = new System.IO.StringWriter();
        //    // Create an instance of HtmlTextWriter class for writing markup 
        //    // characters and text to an ASP.NET server control output stream
        //    HtmlTextWriter htw = new HtmlTextWriter(stringWriter);

        //    // Set white color as the background color for gridview header row
        //    SuggestionGridView.Style.Add("background-color", "#FFFFFF");

        //    // Set background color of each cell of GridView1 header row
        //    foreach (TableCell tableCell in SuggestionGridView.HeaderRow.Cells)
        //    {
        //        tableCell.Style["background-color"] = "#A55129";
        //    }

        //    // Set background color of each cell of each data row of GridView1
        //    foreach (GridViewRow gridViewRow in SuggestionGridView.Rows)
        //    {
        //        gridViewRow.BackColor = System.Drawing.Color.White;
        //        foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
        //        {
        //            gridViewRowTableCell.Style["background-color"] = "#FFF7E7";
        //        }
        //    }

        //    SuggestionGridView.RenderControl(htw);
        //    Response.Write(stringWriter.ToString());
        //    Response.End();

        //}
        //protected void PdfButton_OnClick(object sender, ImageClickEventArgs e)
        //{
        //    int columnsCount = SuggestionGridView.HeaderRow.Cells.Count;
        //    // Create the PDF Table specifying the number of columns
        //    PdfPTable pdfTable = new PdfPTable(columnsCount);

        //    // Loop thru each cell in GrdiView header row
        //    foreach (TableCell gridViewHeaderCell in SuggestionGridView.HeaderRow.Cells)
        //    {
        //        // Create the Font Object for PDF document
        //        Font font = new Font();
        //        // Set the font color to GridView header row font color
        //        font.Color = new BaseColor(SuggestionGridView.HeaderStyle.ForeColor);

        //        // Create the PDF cell, specifying the text and font
        //        PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewHeaderCell.Text, font));

        //        // Set the PDF cell backgroundcolor to GridView header row BackgroundColor color
        //        pdfCell.BackgroundColor = new BaseColor(SuggestionGridView.HeaderStyle.BackColor);

        //        // Add the cell to PDF table
        //        pdfTable.AddCell(pdfCell);
        //    }

        //    // Loop thru each datarow in GrdiView
        //    foreach (GridViewRow gridViewRow in SuggestionGridView.Rows)
        //    {
        //        if (gridViewRow.RowType == DataControlRowType.DataRow)
        //        {
        //            // Loop thru each cell in GrdiView data row
        //            foreach (TableCell gridViewCell in gridViewRow.Cells)
        //            {
        //                Font font = new Font();
        //                font.Color = new BaseColor(SuggestionGridView.RowStyle.ForeColor);

        //                PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewCell.Text, font));

        //                pdfCell.BackgroundColor = new BaseColor(SuggestionGridView.RowStyle.BackColor);

        //                pdfTable.AddCell(pdfCell);
        //            }
        //        }
        //    }

        //    // Create the PDF document specifying page size and margins
        //    Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
        //    // Roate page using Rotate() function, if you want in Landscape
        //    // pdfDocument.SetPageSize(PageSize.A4.Rotate());

        //    // Using PageSize.A4_LANDSCAPE may not work as expected
        //    // Document pdfDocument = new Document(PageSize.A4_LANDSCAPE, 10f, 10f, 10f, 10f);

        //    PdfWriter.GetInstance(pdfDocument, Response.OutputStream);

        //    pdfDocument.Open();
        //    pdfDocument.Add(pdfTable);
        //    pdfDocument.Close();

        //    Response.ContentType = "application/pdf";
        //    Response.AppendHeader("content-disposition",
        //        "attachment;filename=Employees.pdf");
        //    Response.Write(pdfDocument);
        //    Response.Flush();
        //    Response.End();

        //}
        //public override void VerifyRenderingInServerForm(Control control)
        //{

        //}
    }
}