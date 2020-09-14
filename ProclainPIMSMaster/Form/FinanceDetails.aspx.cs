using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ProclainPIMSMaster.Form
{
    public partial class FinanceDetails : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProclaimPIMSDB"].ConnectionString);


        public string upload1 { get; set; }
        public string upload2 { get; set; }
        public string upload3 { get; set; }

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
                        labelview();

                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx", false);
            }

        }
        private void labelview()
        {
            try
            {
                string name = Request.QueryString["EmployeeId"];
                conn.Open();
                string query = "Empfullsugview";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", name);
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);

                DataSet ds = new DataSet();
                adapt.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ideaid.Text = ds.Tables[0].Rows[0]["IdeaId"].ToString();
                    date.Text = ds.Tables[0].Rows[0]["Date"].ToString();
                    dept.Text = ds.Tables[0].Rows[0]["DepName"].ToString();
                    desig.Text = ds.Tables[0].Rows[0]["DesName"].ToString();
                    sub.Text = ds.Tables[0].Rows[0]["Subject"].ToString();
                    ben.Text = ds.Tables[0].Rows[0]["Benefits"].ToString();
                    cat.Text = ds.Tables[0].Rows[0]["Category"].ToString();
                    bfr.Text = ds.Tables[0].Rows[0]["Before"].ToString();
                    aft.Text = ds.Tables[0].Rows[0]["After"].ToString();
                    // upload1 = "../UI/Image/" + fu1.Text;
                    UpLoad1Tag.Src = "../UI/Image/" + ds.Tables[0].Rows[0]["FileUpload1"].ToString();
                    //imageAttachmenthandler.Src = "../UI/Image/" + ds.Tables[0].Rows[0]["FileUpload1"].ToString();
                    //upload2 = "../UI/Image/" + fu2.Text;
                    UpLoad2Tag.Src = "../UI/Image/" + ds.Tables[0].Rows[0]["FileUpload2"].ToString();
                    //upload3 = "../UI/Image/" + fu3.Text;
                    UpLoad3Tag.Src = "../UI/Image/" + ds.Tables[0].Rows[0]["FileUpload3"].ToString();
                    stat.Text = ds.Tables[0].Rows[0]["Status"].ToString();
                    ClientScript.RegisterStartupScript(this.GetType(), "imageSrc", "imageSrc('../UI/Image/" + ds.Tables[0].Rows[0]["FileUpload1"].ToString() + "','../UI/Image/" + ds.Tables[0].Rows[0]["FileUpload2"].ToString() + "','../UI/Image/" + ds.Tables[0].Rows[0]["FileUpload3"].ToString() + "');", true);
                }
                conn.Close();





            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }


    }
}