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
    public partial class GetExcelYearBarChart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    labelview();
                    //Response.Redirect("DBMDashboard.aspx", false);

                }
            }
            catch (Exception e1)
            {

            }


        }
        private void labelview()
        {
            try
            {
                string data = Request.QueryString["data"];
                GetExcel(data);
                
            }
            catch (Exception e1)
            {

            }
        }
        protected void GetExcel(string data)
        {
            DataSet Ds = new DataSet();
            Employee E = new Employee();
            try
            {
                string bar = data.ToString();
                string txtupper= data.ToUpper().ToString();
                Ds = E.GetExcelYearBar(bar);
                DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(dt, "PIMS");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = dt.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS "+ txtupper;
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