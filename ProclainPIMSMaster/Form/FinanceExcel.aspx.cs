using ClosedXML.Excel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;
using System.Web.Services;
using System.Data;

namespace ProclainPIMSMaster.Form
{
    public partial class FinanceExcel : System.Web.UI.Page
    {
        Manager MM = new Manager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Excelview();

            }


        }

        private void Excelview()
        {
            try
            {
                DataSet Ds = new DataSet();
                MM.IdeaId = Request.QueryString["IdeaID"];
                Ds = MM.FinanceExcelView(MM);
                //ds = sho.GetDatasetByCommandString("sp_Report_excel_two", param, value);
                DataTable dt = Ds.Tables[0];
                using (XLWorkbook wb = new XLWorkbook()) //dataset to excel but it need closedXML.dll
                {
                    var ws = wb.Worksheets.Add(dt, "PIMSImpl");
                    ws.Row(1).InsertRowsAbove(1);
                    int count = dt.Columns.Count;
                    int cc = count / 2;
                    ws.Cell(1, cc).Value = "PIMS Implement Member List";
                    ws.Cell(1, cc).Style.Font.Bold = true;
                    ws.Cell(1, cc).Style.Font.FontSize = 25;
                    ws.Cell(1, cc).Style.Font.FontName = "Calibri";
                    Response.Clear();
                    Response.Buffer = true;
                    Response.Charset = "";
                    Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                    Response.AddHeader("content-disposition", "attachment;filename=PIMS-"+ MM.IdeaId + DateTime.Now.ToString("dd/MM/yyyy") + ".xlsx");
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