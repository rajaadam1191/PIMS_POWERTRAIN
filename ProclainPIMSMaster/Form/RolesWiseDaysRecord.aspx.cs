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
    public partial class RolesWiseDaysRecord : System.Web.UI.Page
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
            Ds = E.RoleswiseDaysrecord("");
            //if((Ds !=null) (Ds! ="System.Data.DataRowView"))
            //  {
            SuggestionGridView.DataSource = Ds.Tables[0];
            SuggestionGridView.DataBind();
            //GridView1.DataSource = Ds.Tables[0];
            //GridView1.DataBind();



        }
        protected void SuggestionGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }
        //public void DepartmentNameView()
        //{
        //    try
        //    {
        //        DataSet Ds = new DataSet();


        //        Ds = NSM.DepartmentSelectAll();

        //        DepartmentDDList.DataSource = Ds.Tables[0];
        //        DepartmentDDList.DataTextField = "DepName";
        //        DepartmentDDList.DataValueField = "DepId";
        //        DepartmentDDList.DataBind();
        //        //DepartmentDDList.Items.Insert(0, new ListItem("", ""));
        //        //SIDepID = Convert.ToInt32(DepartmentDDList.SelectedValue);
        //    }
        //    catch (Exception e1)
        //    {

        //    }


        //}

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