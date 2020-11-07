
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;
using System.Data.SqlClient;
using System.Drawing;
using System.Net;
using System.Net.Mail;

namespace ProclainPIMSMaster.Form
{
    public partial class DBMRankInsert : System.Web.UI.Page
    {
        DataBankManager Dm = new DataBankManager();
        static string extn;
        static string etn;
        static string path;
        string giud = Guid.NewGuid().ToString();
        static string ImageName;
        protected void Page_Load(object sender, EventArgs e)
        {
            EmpDetailView();
        }

        public void EmpDetailView()
        {
            try
            {
                
                DataSet Ds = new DataSet();


                Ds = Dm.EmpDetailView();

                EmployeeId.DataSource = Ds.Tables[0];
                EmployeeId.DataTextField = "EmployeeName";
                EmployeeId.DataValueField = "EmployeeId";
                EmployeeId.DataBind();

            }
            catch (Exception e1)
            {

            }

        }

        protected void ceomsgupload_Click(object sender, EventArgs e)
        {
            try
            {
                string Message = Ceomsg.Text.ToString();
                Dm.CEOMessageInsert(Message);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Successfully Insert Your Message','','success')", true);
                Ceomsg.Text = "";
            }
            catch(Exception e1)
            {

            }
        }

        protected void ImgUpload_Click(object sender, EventArgs e)
        {
            try
            {
                // Dm.IEmpId = EmpId.Text.ToString();
                Dm.IEmpId = EmployeeId.SelectedItem.Value.ToString();
                if (ImageFileUpload1.HasFile)
                {
                    extn = System.IO.Path.GetExtension(ImageFileUpload1.FileName);
                    // path = Server.MapPath("\\PIMS\\UI\\Image\\");
                    path = Server.MapPath("..\\UI\\Image\\");
                    ImageName = ImageFileUpload1.FileName;
                    ImageFileUpload1.SaveAs(path + ImageName);
                    etn = ImageName;
                    //Label1.Text = path;
                }
                else
                {
                    etn = "No File";
                }
                Dm.EmpImg = etn.ToString();
                Dm.EmpImgUpload(Dm);
            }
            catch (Exception e1)
            {

            }
        }

        protected void MDmsgupload_Click(object sender, EventArgs e)
        {
            try
            {
                string Message = Ceomsg.Text.ToString();
                Dm.MDMessageInsert(Message);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Successfully Insert Your Message','','success')", true);
                Ceomsg.Text = "";
            }
            catch (Exception e1)
            {

            }

        }

        protected void Sloganupload_Click(object sender, EventArgs e)
        {
            try
            {
                string Message = Ceomsg.Text.ToString();
                Dm.SloganInsert(Message);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('Successfully Insert Your Message','','success')", true);
                Ceomsg.Text = "";
            }
            catch (Exception e1)
            {

            }
        }
    }
}