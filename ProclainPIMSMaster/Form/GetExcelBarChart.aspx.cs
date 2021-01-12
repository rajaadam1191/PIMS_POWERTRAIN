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
    public partial class GetExcelBarChart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        try {
                if (!IsPostBack)
                {
                    labelview();
                    //Response.Redirect("DBMDashboard.aspx", false);

                }
            }
        catch(Exception e1) {
                
            }


        }
        private void labelview()
        {
            try
            {
                string data = Request.QueryString["data"];
                if (data.ToString() == "EMPDBM")
                {
                    EMPDBMExcel(data);

                }
                else if (data.ToString()=="com") {
                    ComExcel(data);
                   
                }
                else if (data.ToString() == "DBMMAN")
                {
                    DBMMANExcel(data);

                }
                else if (data.ToString() == "hod")
                {
                    HodExcel(data);
                   
                }
                else if (data.ToString() == "imp")
                {
                    ImpExcel(data);
                    
                }
                else if (data.ToString() == "hos")
                {
                    HosExcel(data);
                   
                }
                else if (data.ToString() == "ben")
                {
                    BenExcel(data);
                   
                }
                else 
                {
                    FinExcel(data);
                    
                }
            }
            catch (Exception e1)
            {

            }
        }
        protected void EMPDBMExcel(string data)
        {
            DataSet Ds = new DataSet();
            Employee E = new Employee();
            try
            {
                string bar = data.ToString();
                Ds = E.GetExcelBar(bar);
                DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(dt, "PIMS");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = dt.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS NEW SUGGESTIONS";
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

            }
        }
        protected void ComExcel(string data)
        {
            DataSet Ds = new DataSet();
            Employee E = new Employee();
            try
            {
                string bar = data.ToString();
                Ds = E.GetExcelBar(bar);
                DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(dt, "PIMS");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = dt.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Committee";
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

            }
        }
        protected void DBMMANExcel(string data)
        {
            DataSet Ds = new DataSet();
            Employee E = new Employee();
            try
            {
                string bar = data.ToString();
                Ds = E.GetExcelBar(bar);
                DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(dt, "PIMS");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = dt.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Committee Response";
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

            }
        }
        protected void HodExcel(string data)
        {
            DataSet Ds = new DataSet();
            Employee E = new Employee();
            try
            {
                string bar = data.ToString();
                Ds = E.GetExcelBar(bar);
                DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(dt, "PIMS");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = dt.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Manager";
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

            }
        }
        protected void ImpExcel(string data)
        {
            DataSet Ds = new DataSet();
            Employee E = new Employee();
            try
            {
                string bar = data.ToString();
                Ds = E.GetExcelBar(bar);
                DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(dt, "PIMS");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = dt.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Implement";
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

            }
        }
        protected void HosExcel(string data)
        {
            DataSet Ds = new DataSet();
            Employee E = new Employee();
            try
            {
                string bar = data.ToString();
                Ds = E.GetExcelBar(bar);
                DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(dt, "PIMS");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = dt.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Hod";
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

            }
        }
        protected void BenExcel(string data)
        {
            DataSet Ds = new DataSet();
            Employee E = new Employee();
            try
            {
                string bar = data.ToString();
                Ds = E.GetExcelBar(bar);
                DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(dt, "PIMS");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = dt.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Beneficiary";
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

            }
        }
        protected void FinExcel(string data)
        {
            DataSet Ds = new DataSet();
            Employee E = new Employee();
            try
            {
                string bar = data.ToString();
                Ds = E.GetExcelBar(bar);
                DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(dt, "PIMS");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = dt.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Finance";
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

            }
        }
    }
}