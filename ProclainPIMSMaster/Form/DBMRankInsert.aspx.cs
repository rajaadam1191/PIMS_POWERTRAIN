
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
            if (!IsPostBack)
            {
                EmpDetailView();
                Dropdownload();
            }
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

        public void Dropdownload() {
        try {
                string ceomsg = "ceo";
                string mdmsg = "md";
               string slogan = "slogan";
                DataSet Ds = new DataSet();


                Ds = Dm.ceomsgdet(ceomsg);
                //ceodrop.DataSource = Ds.Tables[0];
                //ceodrop.DataTextField = "CEOMessage";
                //ceodrop.DataValueField = "CEOMessage";
                //ceodrop.DataBind();

                for (int d = 0; d < Ds.Tables[0].Rows.Count; d++)
                {
                    string data = Ds.Tables[0].Rows[d]["CEOMessage"].ToString();
                    ceodrop.Items.Add(data);
                }
                
                Ds = Dm.mdmsgdet(mdmsg);
                //mddrop.DataSource = Ds.Tables[0];
                //mddrop.DataTextField = "MDMessage";
                //mddrop.DataValueField = "MDMessage";
                //mddrop.DataBind();

                for (int d = 0; d < Ds.Tables[0].Rows.Count; d++)
                {
                    string data = Ds.Tables[0].Rows[d]["MDMessage"].ToString();
                    mddrop.Items.Add(data);
                }

                Ds = Dm.sloganmsgdet(slogan);
                //slogandrop.DataSource = Ds.Tables[0];
                //slogandrop.DataTextField = "Slogan";
                //slogandrop.DataValueField = "Slogan";
                //slogandrop.DataBind();

                for (int d = 0; d < Ds.Tables[0].Rows.Count; d++)
                {
                    string data = Ds.Tables[0].Rows[d]["Slogan"].ToString();
                    slogandrop.Items.Add(data);
                }



            }
            catch (Exception e1) {

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

        protected void ceobtn_Click(object sender, EventArgs e)
        {
            
            string data = ceodrop.Text;
            string type = "ceo";
            Dm.Removedel(type, data);
            Response.Redirect("DBMRankInsert.aspx");

        }

        protected void mdbtn_Click(object sender, EventArgs e)
        {
            string type = "md";
            string msg = mddrop.Text;
            Dm.Removedel(type, msg);
            Response.Redirect("DBMRankInsert.aspx");
        }

        protected void sloganbtn_Click(object sender, EventArgs e)
        {
            string type = "slogan";
            string msg = slogandrop.Text;
            Dm.Removedel(type, msg);
            Response.Redirect("DBMRankInsert.aspx");
        }
    }
}