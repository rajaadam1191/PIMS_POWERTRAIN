using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProclainPIMSMaster.Models;

namespace ProclainPIMSMaster.Form
{
    public partial class MainDashBoard : System.Web.UI.Page
    {
        DataBankManager Dm = new DataBankManager();
        DataSet Ds = new DataSet();
        int newSug;
        int reject;
        int approved;
        int newSugyear;
        int rejectyear;
        int approvedyear;

        int oneyrbrsuggestionreceived;
        int oneyrbraccepted;
        int oneyrbrrejected;


        int oneyrpitotalsuggestion;
        int oneyrpiimplemented;
        int oneyrpiaccepted;

        string oneyrdeptdepname1, oneyrdeptdepname2, oneyrdeptdepname3, oneyrdeptdepname4, oneyrdeptdepname5, oneyrdeptdepname6, oneyrdeptdepname7,
            oneyrdeptdepname8, oneyrdeptdepname9, oneyrdeptdepname10, oneyrdeptdepname11, oneyrdeptdepname12, oneyrdeptdepname13, oneyrdeptdepname14,
            oneyrdeptdepname15, oneyrdeptdepname16, oneyrdeptdepname17, oneyrdeptdepname18, oneyrdeptdepname19;
        int oneyrdepttotalimplement1, oneyrdepttotalimplement2, oneyrdepttotalimplement3, oneyrdepttotalimplement4, oneyrdepttotalimplement5, oneyrdepttotalimplement6,
            oneyrdepttotalimplement7, oneyrdepttotalimplement8, oneyrdepttotalimplement9, oneyrdepttotalimplement10, oneyrdepttotalimplement11, oneyrdepttotalimplement12,
            oneyrdepttotalimplement13, oneyrdepttotalimplement14, oneyrdepttotalimplement15, oneyrdepttotalimplement16, oneyrdepttotalimplement17, oneyrdepttotalimplement18,
            oneyrdepttotalimplement19;
        int oneyrdeptimplemented1, oneyrdeptimplemented2, oneyrdeptimplemented3, oneyrdeptimplemented4, oneyrdeptimplemented5, oneyrdeptimplemented6,
            oneyrdeptimplemented7, oneyrdeptimplemented8, oneyrdeptimplemented9, oneyrdeptimplemented10, oneyrdeptimplemented11, oneyrdeptimplemented12,
            oneyrdeptimplemented13, oneyrdeptimplemented14, oneyrdeptimplemented15, oneyrdeptimplemented16, oneyrdeptimplemented17, oneyrdeptimplemented18,
            oneyrdeptimplemented19;
        int oneyrdeptyettoimplement1, oneyrdeptyettoimplement2, oneyrdeptyettoimplement3, oneyrdeptyettoimplement4, oneyrdeptyettoimplement5, oneyrdeptyettoimplement6,
            oneyrdeptyettoimplement7, oneyrdeptyettoimplement8, oneyrdeptyettoimplement9, oneyrdeptyettoimplement10, oneyrdeptyettoimplement11, oneyrdeptyettoimplement12,
            oneyrdeptyettoimplement13, oneyrdeptyettoimplement14, oneyrdeptyettoimplement15, oneyrdeptyettoimplement16, oneyrdeptyettoimplement17, oneyrdeptyettoimplement18,
            oneyrdeptyettoimplement19;


        string oneyrmntmonths1, oneyrmntmonths2, oneyrmntmonths3, oneyrmntmonths4, oneyrmntmonths5, oneyrmntmonths6,
            oneyrmntmonths7, oneyrmntmonths8, oneyrmntmonths9, oneyrmntmonths10, oneyrmntmonths11, oneyrmntmonths12;
        int oneyrmntreceived1, oneyrmntreceived2, oneyrmntreceived3, oneyrmntreceived4, oneyrmntreceived5, oneyrmntreceived6,
            oneyrmntreceived7, oneyrmntreceived8, oneyrmntreceived9, oneyrmntreceived10, oneyrmntreceived11, oneyrmntreceived12;
        int oneyrmntaccepted1, oneyrmntaccepted2, oneyrmntaccepted3, oneyrmntaccepted4, oneyrmntaccepted5, oneyrmntaccepted6,
            oneyrmntaccepted7, oneyrmntaccepted8, oneyrmntaccepted9, oneyrmntaccepted10, oneyrmntaccepted11, oneyrmntaccepted12;
        int oneyrmntreject1, oneyrmntreject2, oneyrmntreject3, oneyrmntreject4, oneyrmntreject5, oneyrmntreject6,
            oneyrmntreject7, oneyrmntreject8, oneyrmntreject9, oneyrmntreject10, oneyrmntreject11, oneyrmntreject12;
        int oneyrmnthold1, oneyrmnthold2, oneyrmnthold3, oneyrmnthold4, oneyrmnthold5, oneyrmnthold6,
            oneyrmnthold7, oneyrmnthold8, oneyrmnthold9, oneyrmnthold10, oneyrmnthold11, oneyrmnthold12;
        int oneyrmntimplemented1, oneyrmntimplemented2, oneyrmntimplemented3, oneyrmntimplemented4, oneyrmntimplemented5, oneyrmntimplemented6,
            oneyrmntimplemented7, oneyrmntimplemented8, oneyrmntimplemented9, oneyrmntimplemented10, oneyrmntimplemented11, oneyrmntimplemented12;


        int yrsuggestionreceived1, yraccepted1, yrreject1,yrimplement1,yrhold1, yrsuggestionreceived2, yraccepted2, yrreject2, yrimplement2, yrhold2, yrsuggestionreceived3, yraccepted3, yrreject3, yrimplement3, yrhold3,
            yrsuggestionreceived4, yraccepted4, yrreject4, yrimplement4, yrhold4, yrsuggestionreceived5, yraccepted5, yrreject5, yrimplement5, yrhold5, yrsuggestionreceived6, yraccepted6, yrreject6, yrimplement6, yrhold6,
            yrsuggestionreceived7, yraccepted7, yrreject7, yrimplement7, yrhold7, yrsuggestionreceived8, yraccepted8, yrreject8, yrimplement8, yrhold8, yrsuggestionreceived9, yraccepted9, yrreject9, yrimplement9, yrhold9,
            yrsuggestionreceived10, yraccepted10, yrreject10,yrimplement10, yrhold10;



        string yearrank1image { get; set; }
        string yearrank2image { get; set; }
        string yearrank3image { get; set; }
        string monthrank1image { get; set; }
        string monthrank2image { get; set; }
        string monthrank3image { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Mailcontent();

                yearRank();
                monthRank();
                GetImage();
                bindGraphNew();
                //PieChartDetails3Months();
                //PieChartDetails1Year();
            }
            catch (Exception e1)
            {

            }




        }
        public void GetImage()
        {
            try
            {
                DataSet Ds = new DataSet();

                if (monthrank1image.ToString() == null || monthrank1image.ToString() == "")
                {
                    rank1img.Src = "../UI/Image/altImg.jpg";

                }
                else
                {
                    Ds = Dm.GetImage(monthrank1image);
                    string img1mon = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    string img1monpath = "../UI/Image/" + img1mon;
                    rank1img.Src = img1monpath;
                }

                if (monthrank2image.ToString() == null || monthrank2image.ToString() == "")
                {
                    rank2img.Src = "../UI/Image/altImg.jpg";
                }
                else
                {

                    Ds = Dm.GetImage(monthrank2image);
                    string img2mon = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    string img2monpath = "../UI/Image/" + img2mon;
                    rank2img.Src = img2monpath;
                }

                if (monthrank3image.ToString() == null || monthrank3image.ToString() == "")
                {
                    rank3img.Src = "../UI/Image/altImg.jpg";
                }
                else
                {

                    Ds = Dm.GetImage(monthrank3image);
                    string img3mon = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    string img3monpath = "../UI/Image/" + img3mon;
                    rank3img.Src = img3monpath;
                }

                if (yearrank1image.ToString() == null || yearrank1image.ToString() == "")
                {
                    yearrank1img.Src = "../UI/Image/altImg.jpg";
                }
                else
                {

                    Ds = Dm.GetImage(yearrank1image);
                    string img1year = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    string img1yearpath = "../UI/Image/" + img1year;
                    yearrank1img.Src = img1yearpath;
                }


                if (yearrank2image.ToString() == null || yearrank2image.ToString() == "")
                {
                    yearrank2img.Src = "../UI/Image/altImg.jpg";
                }
                else
                {

                    Ds = Dm.GetImage(yearrank2image);
                    string img2year = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    string img2yearpath = "../UI/Image/" + img2year;
                    yearrank2img.Src = img2yearpath;
                }

                if (yearrank3image.ToString() == null || yearrank3image.ToString() == "")
                {
                    yearrank3img.Src = "../UI/Image/altImg.jpg";
                }
                else
                {

                    Ds = Dm.GetImage(yearrank3image);
                    string img3year = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                    string img3yearpath = "../UI/Image/" + img3year;
                    yearrank3img.Src = img3yearpath;
                }

            }
            catch (Exception e1)
            {

            }
        }
        public void yearRank()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = Dm.Ranking1Year();

                int Rowcount = Ds.Tables[0].Rows.Count;
                if (Rowcount == 1)
                {
                    yearrank1image = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1yearId.Text = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1yearName.Text = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    rank1yearcount.Text = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

                    yearrank2image = "";
                    rank2yearId.Text = "";
                    rank2yearName.Text = "";
                    rank2yearcount.Text = "";

                    yearrank3image = "";
                    rank3yearId.Text = "";
                    rank3yearName.Text = "";
                    rank3yearcount.Text = "";
                }
                else if (Rowcount == 2)
                {
                    yearrank1image = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1yearId.Text = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1yearName.Text = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    rank1yearcount.Text = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

                    yearrank2image = Ds.Tables[0].Rows[1].ItemArray[1].ToString();
                    rank2yearId.Text = Ds.Tables[0].Rows[1].ItemArray[1].ToString();
                    rank2yearName.Text = Ds.Tables[0].Rows[1].ItemArray[2].ToString();
                    rank2yearcount.Text = Ds.Tables[0].Rows[1].ItemArray[0].ToString();

                    yearrank3image = "";
                    rank3yearId.Text = "";
                    rank3yearName.Text = "";
                    rank3yearcount.Text = "";
                }
                else if (Rowcount == 3)
                {
                    yearrank1image = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1yearId.Text = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1yearName.Text = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    rank1yearcount.Text = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

                    yearrank2image = Ds.Tables[0].Rows[1].ItemArray[1].ToString();
                    rank2yearId.Text = Ds.Tables[0].Rows[1].ItemArray[1].ToString();
                    rank2yearName.Text = Ds.Tables[0].Rows[1].ItemArray[2].ToString();
                    rank2yearcount.Text = Ds.Tables[0].Rows[1].ItemArray[0].ToString();

                    yearrank3image = Ds.Tables[0].Rows[2].ItemArray[1].ToString();
                    rank3yearId.Text = Ds.Tables[0].Rows[2].ItemArray[1].ToString();
                    rank3yearName.Text = Ds.Tables[0].Rows[2].ItemArray[2].ToString();
                    rank3yearcount.Text = Ds.Tables[0].Rows[2].ItemArray[0].ToString();
                }
                else
                {
                    yearrank1image = "";
                    rank1yearId.Text = "";
                    rank1yearName.Text = "";
                    rank1yearcount.Text = "";

                    yearrank2image = "";
                    rank2yearId.Text = "";
                    rank2yearName.Text = "";
                    rank2yearcount.Text = "";

                    yearrank3image = "";
                    rank3yearId.Text = "";
                    rank3yearName.Text = "";
                    rank3yearcount.Text = "";
                }
            }
            catch (Exception e1)
            {

            }
        }
        public void monthRank()
        {
            try
            {
                DataSet Ds = new DataSet();
                Ds = Dm.Ranking1Month();

                int Rowcount = Ds.Tables[0].Rows.Count;
                if (Rowcount == 1)
                {
                    monthrank1image = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1Id.Text = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1Name.Text = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    rank1count.Text = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

                    monthrank2image = "";
                    rank2Id.Text = "";
                    rank2Name.Text = "";
                    rank2count.Text = "";

                    monthrank3image = "";
                    rank3Id.Text = "";
                    rank3Name.Text = "";
                    rank3count.Text = "";
                }
                else if (Rowcount == 2)
                {
                    monthrank1image = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1Id.Text = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1Name.Text = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    rank1count.Text = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

                    monthrank2image = Ds.Tables[0].Rows[1].ItemArray[1].ToString();
                    rank2Id.Text = Ds.Tables[0].Rows[1].ItemArray[1].ToString();
                    rank2Name.Text = Ds.Tables[0].Rows[1].ItemArray[2].ToString();
                    rank2count.Text = Ds.Tables[0].Rows[1].ItemArray[0].ToString();

                    monthrank3image = "";
                    rank3Id.Text = "";
                    rank3Name.Text = "";
                    rank3count.Text = "";
                }
                else if (Rowcount == 3)
                {
                    monthrank1image = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1Id.Text = Ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    rank1Name.Text = Ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    rank1count.Text = Ds.Tables[0].Rows[0].ItemArray[0].ToString();

                    monthrank2image = Ds.Tables[0].Rows[1].ItemArray[1].ToString();
                    rank2Id.Text = Ds.Tables[0].Rows[1].ItemArray[1].ToString();
                    rank2Name.Text = Ds.Tables[0].Rows[1].ItemArray[2].ToString();
                    rank2count.Text = Ds.Tables[0].Rows[1].ItemArray[0].ToString();

                    monthrank3image = Ds.Tables[0].Rows[2].ItemArray[1].ToString();
                    rank3Id.Text = Ds.Tables[0].Rows[2].ItemArray[1].ToString();
                    rank3Name.Text = Ds.Tables[0].Rows[2].ItemArray[2].ToString();
                    rank3count.Text = Ds.Tables[0].Rows[2].ItemArray[0].ToString();

                }
                else
                {
                    monthrank1image = "";
                    rank1Id.Text = "";
                    rank1Name.Text = "";
                    rank1count.Text = "";

                    monthrank2image = "";
                    rank2Id.Text = "";
                    rank2Name.Text = "";
                    rank2count.Text = "";

                    monthrank3image = "";
                    rank3Id.Text = "";
                    rank3Name.Text = "";
                    rank3count.Text = "";
                }


            }
            catch (Exception e1)
            {

            }
        }

        protected void GoSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
        public void Mailcontent()
        {
            Ds = Dm.CeoMessageSelect();
            MailRepeater.DataSource = Ds.Tables[0];
            //MailRepeater.SelectMethod = "IdeaId";
            MailRepeater.DataBind();

            Ds = Dm.MDMessageSelect();
            MailRepeaterMD.DataSource = Ds.Tables[0];
            //MailRepeater.SelectMethod = "IdeaId";
            MailRepeaterMD.DataBind();

            Ds = Dm.SloganSelect();
            MailRepeaterSLO.DataSource = Ds.Tables[0];
            //MailRepeater.SelectMethod = "IdeaId";
            MailRepeaterSLO.DataBind();





        }
        public void PieChartDetails3Months()
        {

            DataSet Ds = new DataSet();
            Ds = Dm.Barchart_get_details();
            newSug = int.Parse(Ds.Tables[0].Rows[0].ItemArray[0].ToString());
            reject = int.Parse(Ds.Tables[0].Rows[0].ItemArray[1].ToString());
            approved = int.Parse(Ds.Tables[0].Rows[0].ItemArray[2].ToString());

            string script = "PieChart('" + newSug + "','" + reject + "','" + approved + "'); ";
            ClientScript.RegisterStartupScript(this.GetType(), "function", script, true);
        }
        public void PieChartDetails1Year()
        {

            DataSet Ds = new DataSet();
            Ds = Dm.Barchart_get_details_1Year();
            newSugyear = int.Parse(Ds.Tables[0].Rows[0].ItemArray[0].ToString());
            rejectyear = int.Parse(Ds.Tables[0].Rows[0].ItemArray[1].ToString());
            approvedyear = int.Parse(Ds.Tables[0].Rows[0].ItemArray[2].ToString());

            string scriptyear = "PieChartYear('" + newSugyear + "','" + rejectyear + "','" + approvedyear + "'); ";
            ClientScript.RegisterStartupScript(this.GetType(), "function", scriptyear, true);
        }


        public void bindGraphNew()
        {
            try
            {



                DataSet Ds = new DataSet();
                Ds = Dm.YearBarChart();
                oneyrbrsuggestionreceived = int.Parse(Ds.Tables[0].Rows[0].ItemArray[0].ToString());
                oneyrbraccepted = int.Parse(Ds.Tables[0].Rows[0].ItemArray[1].ToString());
                oneyrbrrejected = int.Parse(Ds.Tables[0].Rows[0].ItemArray[2].ToString());

                DataSet Ds1 = new DataSet();
                Ds1 = Dm.YearpPieChart();
                oneyrpitotalsuggestion = int.Parse(Ds1.Tables[0].Rows[0].ItemArray[0].ToString());
                oneyrpiimplemented = int.Parse(Ds1.Tables[0].Rows[0].ItemArray[1].ToString());
                oneyrpiaccepted = int.Parse(Ds1.Tables[0].Rows[0].ItemArray[2].ToString());

                DataSet Ds2 = new DataSet();
                Ds2 = Dm.YearDepartmentBarchart();
                oneyrdeptdepname1 = Ds2.Tables[0].Rows[0].ItemArray[0].ToString();
                oneyrdepttotalimplement1 = int.Parse(Ds2.Tables[0].Rows[0].ItemArray[1].ToString());
                oneyrdeptimplemented1 = int.Parse(Ds2.Tables[0].Rows[0].ItemArray[2].ToString());
                oneyrdeptyettoimplement1 = int.Parse(Ds2.Tables[0].Rows[0].ItemArray[3].ToString());

                oneyrdeptdepname2 = Ds2.Tables[0].Rows[1].ItemArray[0].ToString();
                oneyrdepttotalimplement2 = int.Parse(Ds2.Tables[0].Rows[1].ItemArray[1].ToString());
                oneyrdeptimplemented2 = int.Parse(Ds2.Tables[0].Rows[1].ItemArray[2].ToString());
                oneyrdeptyettoimplement2 = int.Parse(Ds2.Tables[0].Rows[1].ItemArray[3].ToString());

                oneyrdeptdepname3 = Ds2.Tables[0].Rows[2].ItemArray[0].ToString();
                oneyrdepttotalimplement3 = int.Parse(Ds2.Tables[0].Rows[2].ItemArray[1].ToString());
                oneyrdeptimplemented3 = int.Parse(Ds2.Tables[0].Rows[2].ItemArray[2].ToString());
                oneyrdeptyettoimplement3 = int.Parse(Ds2.Tables[0].Rows[2].ItemArray[3].ToString());

                oneyrdeptdepname4 = Ds2.Tables[0].Rows[3].ItemArray[0].ToString();
                oneyrdepttotalimplement4 = int.Parse(Ds2.Tables[0].Rows[3].ItemArray[1].ToString());
                oneyrdeptimplemented4 = int.Parse(Ds2.Tables[0].Rows[3].ItemArray[2].ToString());
                oneyrdeptyettoimplement4 = int.Parse(Ds2.Tables[0].Rows[3].ItemArray[3].ToString());

                oneyrdeptdepname5 = Ds2.Tables[0].Rows[4].ItemArray[0].ToString();
                oneyrdepttotalimplement5 = int.Parse(Ds2.Tables[0].Rows[4].ItemArray[1].ToString());
                oneyrdeptimplemented5 = int.Parse(Ds2.Tables[0].Rows[4].ItemArray[2].ToString());
                oneyrdeptyettoimplement5 = int.Parse(Ds2.Tables[0].Rows[4].ItemArray[3].ToString());

                oneyrdeptdepname6 = Ds2.Tables[0].Rows[5].ItemArray[0].ToString();
                oneyrdepttotalimplement6 = int.Parse(Ds2.Tables[0].Rows[5].ItemArray[1].ToString());
                oneyrdeptimplemented6 = int.Parse(Ds2.Tables[0].Rows[5].ItemArray[2].ToString());
                oneyrdeptyettoimplement6 = int.Parse(Ds2.Tables[0].Rows[5].ItemArray[3].ToString());

                oneyrdeptdepname7 = Ds2.Tables[0].Rows[6].ItemArray[0].ToString();
                oneyrdepttotalimplement7 = int.Parse(Ds2.Tables[0].Rows[6].ItemArray[1].ToString());
                oneyrdeptimplemented7 = int.Parse(Ds2.Tables[0].Rows[6].ItemArray[2].ToString());
                oneyrdeptyettoimplement7 = int.Parse(Ds2.Tables[0].Rows[6].ItemArray[3].ToString());

                oneyrdeptdepname8 = Ds2.Tables[0].Rows[7].ItemArray[0].ToString();
                oneyrdepttotalimplement8 = int.Parse(Ds2.Tables[0].Rows[7].ItemArray[1].ToString());
                oneyrdeptimplemented8 = int.Parse(Ds2.Tables[0].Rows[7].ItemArray[2].ToString());
                oneyrdeptyettoimplement8 = int.Parse(Ds2.Tables[0].Rows[7].ItemArray[3].ToString());

                oneyrdeptdepname9 = Ds2.Tables[0].Rows[8].ItemArray[0].ToString();
                oneyrdepttotalimplement9 = int.Parse(Ds2.Tables[0].Rows[8].ItemArray[1].ToString());
                oneyrdeptimplemented9 = int.Parse(Ds2.Tables[0].Rows[8].ItemArray[2].ToString());
                oneyrdeptyettoimplement9 = int.Parse(Ds2.Tables[0].Rows[8].ItemArray[3].ToString());

                oneyrdeptdepname10 = Ds2.Tables[0].Rows[9].ItemArray[0].ToString();
                oneyrdepttotalimplement10 = int.Parse(Ds2.Tables[0].Rows[9].ItemArray[1].ToString());
                oneyrdeptimplemented10 = int.Parse(Ds2.Tables[0].Rows[9].ItemArray[2].ToString());
                oneyrdeptyettoimplement10 = int.Parse(Ds2.Tables[0].Rows[9].ItemArray[3].ToString());

                oneyrdeptdepname11 = Ds2.Tables[0].Rows[10].ItemArray[0].ToString();
                oneyrdepttotalimplement11 = int.Parse(Ds2.Tables[0].Rows[10].ItemArray[1].ToString());
                oneyrdeptimplemented11 = int.Parse(Ds2.Tables[0].Rows[10].ItemArray[2].ToString());
                oneyrdeptyettoimplement11 = int.Parse(Ds2.Tables[0].Rows[10].ItemArray[3].ToString());

                oneyrdeptdepname12 = Ds2.Tables[0].Rows[11].ItemArray[0].ToString();
                oneyrdepttotalimplement12 = int.Parse(Ds2.Tables[0].Rows[11].ItemArray[1].ToString());
                oneyrdeptimplemented12 = int.Parse(Ds2.Tables[0].Rows[11].ItemArray[2].ToString());
                oneyrdeptyettoimplement12 = int.Parse(Ds2.Tables[0].Rows[11].ItemArray[3].ToString());

                oneyrdeptdepname13 = Ds2.Tables[0].Rows[12].ItemArray[0].ToString();
                oneyrdepttotalimplement13 = int.Parse(Ds2.Tables[0].Rows[12].ItemArray[1].ToString());
                oneyrdeptimplemented13 = int.Parse(Ds2.Tables[0].Rows[12].ItemArray[2].ToString());
                oneyrdeptyettoimplement13 = int.Parse(Ds2.Tables[0].Rows[12].ItemArray[3].ToString());

                oneyrdeptdepname14 = Ds2.Tables[0].Rows[13].ItemArray[0].ToString();
                oneyrdepttotalimplement14 = int.Parse(Ds2.Tables[0].Rows[13].ItemArray[1].ToString());
                oneyrdeptimplemented14 = int.Parse(Ds2.Tables[0].Rows[13].ItemArray[2].ToString());
                oneyrdeptyettoimplement14 = int.Parse(Ds2.Tables[0].Rows[13].ItemArray[3].ToString());

                oneyrdeptdepname15 = Ds2.Tables[0].Rows[14].ItemArray[0].ToString();
                oneyrdepttotalimplement15 = int.Parse(Ds2.Tables[0].Rows[14].ItemArray[1].ToString());
                oneyrdeptimplemented15 = int.Parse(Ds2.Tables[0].Rows[14].ItemArray[2].ToString());
                oneyrdeptyettoimplement15 = int.Parse(Ds2.Tables[0].Rows[14].ItemArray[3].ToString());

                oneyrdeptdepname16 = Ds2.Tables[0].Rows[15].ItemArray[0].ToString();
                oneyrdepttotalimplement16 = int.Parse(Ds2.Tables[0].Rows[15].ItemArray[1].ToString());
                oneyrdeptimplemented16 = int.Parse(Ds2.Tables[0].Rows[15].ItemArray[2].ToString());
                oneyrdeptyettoimplement16 = int.Parse(Ds2.Tables[0].Rows[15].ItemArray[3].ToString());

                oneyrdeptdepname17 = Ds2.Tables[0].Rows[16].ItemArray[0].ToString();
                oneyrdepttotalimplement17 = int.Parse(Ds2.Tables[0].Rows[16].ItemArray[1].ToString());
                oneyrdeptimplemented17 = int.Parse(Ds2.Tables[0].Rows[16].ItemArray[2].ToString());
                oneyrdeptyettoimplement17 = int.Parse(Ds2.Tables[0].Rows[16].ItemArray[3].ToString());

                oneyrdeptdepname18 = Ds2.Tables[0].Rows[17].ItemArray[0].ToString();
                oneyrdepttotalimplement18 = int.Parse(Ds2.Tables[0].Rows[17].ItemArray[1].ToString());
                oneyrdeptimplemented18 = int.Parse(Ds2.Tables[0].Rows[17].ItemArray[2].ToString());
                oneyrdeptyettoimplement18 = int.Parse(Ds2.Tables[0].Rows[17].ItemArray[3].ToString());

                oneyrdeptdepname19 = Ds2.Tables[0].Rows[18].ItemArray[0].ToString();
                oneyrdepttotalimplement19 = int.Parse(Ds2.Tables[0].Rows[18].ItemArray[1].ToString());
                oneyrdeptimplemented19 = int.Parse(Ds2.Tables[0].Rows[18].ItemArray[2].ToString());
                oneyrdeptyettoimplement19 = int.Parse(Ds2.Tables[0].Rows[18].ItemArray[3].ToString());


                DataSet Ds3 = new DataSet();
                Ds3 = Dm.YearMonthWiseBarChart();
                oneyrmntmonths1 = Ds3.Tables[0].Rows[0].ItemArray[1].ToString();
                oneyrmntreceived1 = int.Parse(Ds3.Tables[0].Rows[0].ItemArray[2].ToString());
                oneyrmntaccepted1 = int.Parse(Ds3.Tables[0].Rows[0].ItemArray[3].ToString());
                oneyrmntreject1 = int.Parse(Ds3.Tables[0].Rows[0].ItemArray[4].ToString());
                oneyrmnthold1 = int.Parse(Ds3.Tables[0].Rows[0].ItemArray[5].ToString());
                oneyrmntimplemented1 = int.Parse(Ds3.Tables[0].Rows[0].ItemArray[6].ToString());

                oneyrmntmonths2 = Ds3.Tables[0].Rows[1].ItemArray[1].ToString();
                oneyrmntreceived2 = int.Parse(Ds3.Tables[0].Rows[1].ItemArray[2].ToString());
                oneyrmntaccepted2 = int.Parse(Ds3.Tables[0].Rows[1].ItemArray[3].ToString());
                oneyrmntreject2 = int.Parse(Ds3.Tables[0].Rows[1].ItemArray[4].ToString());
                oneyrmnthold2 = int.Parse(Ds3.Tables[0].Rows[1].ItemArray[5].ToString());
                oneyrmntimplemented2 = int.Parse(Ds3.Tables[0].Rows[1].ItemArray[6].ToString());

                oneyrmntmonths3 = Ds3.Tables[0].Rows[2].ItemArray[1].ToString();
                oneyrmntreceived3 = int.Parse(Ds3.Tables[0].Rows[2].ItemArray[2].ToString());
                oneyrmntaccepted3 = int.Parse(Ds3.Tables[0].Rows[2].ItemArray[3].ToString());
                oneyrmntreject3 = int.Parse(Ds3.Tables[0].Rows[2].ItemArray[4].ToString());
                oneyrmnthold3 = int.Parse(Ds3.Tables[0].Rows[2].ItemArray[5].ToString());
                oneyrmntimplemented3 = int.Parse(Ds3.Tables[0].Rows[2].ItemArray[6].ToString());

                oneyrmntmonths4 = Ds3.Tables[0].Rows[3].ItemArray[1].ToString();
                oneyrmntreceived4 = int.Parse(Ds3.Tables[0].Rows[3].ItemArray[2].ToString());
                oneyrmntaccepted4 = int.Parse(Ds3.Tables[0].Rows[3].ItemArray[3].ToString());
                oneyrmntreject4 = int.Parse(Ds3.Tables[0].Rows[3].ItemArray[4].ToString());
                oneyrmnthold4 = int.Parse(Ds3.Tables[0].Rows[3].ItemArray[5].ToString());
                oneyrmntimplemented4 = int.Parse(Ds3.Tables[0].Rows[3].ItemArray[6].ToString());

                oneyrmntmonths5 = Ds3.Tables[0].Rows[4].ItemArray[1].ToString();
                oneyrmntreceived5 = int.Parse(Ds3.Tables[0].Rows[4].ItemArray[2].ToString());
                oneyrmntaccepted5 = int.Parse(Ds3.Tables[0].Rows[4].ItemArray[3].ToString());
                oneyrmntreject5 = int.Parse(Ds3.Tables[0].Rows[4].ItemArray[4].ToString());
                oneyrmnthold5 = int.Parse(Ds3.Tables[0].Rows[4].ItemArray[5].ToString());
                oneyrmntimplemented5 = int.Parse(Ds3.Tables[0].Rows[4].ItemArray[6].ToString());

                oneyrmntmonths6 = Ds3.Tables[0].Rows[5].ItemArray[1].ToString();
                oneyrmntreceived6 = int.Parse(Ds3.Tables[0].Rows[5].ItemArray[2].ToString());
                oneyrmntaccepted6 = int.Parse(Ds3.Tables[0].Rows[5].ItemArray[3].ToString());
                oneyrmntreject6 = int.Parse(Ds3.Tables[0].Rows[5].ItemArray[4].ToString());
                oneyrmnthold6 = int.Parse(Ds3.Tables[0].Rows[5].ItemArray[5].ToString());
                oneyrmntimplemented6 = int.Parse(Ds3.Tables[0].Rows[5].ItemArray[6].ToString());

                oneyrmntmonths7 = Ds3.Tables[0].Rows[6].ItemArray[1].ToString();
                oneyrmntreceived7 = int.Parse(Ds3.Tables[0].Rows[6].ItemArray[2].ToString());
                oneyrmntaccepted7 = int.Parse(Ds3.Tables[0].Rows[6].ItemArray[3].ToString());
                oneyrmntreject7 = int.Parse(Ds3.Tables[0].Rows[6].ItemArray[4].ToString());
                oneyrmnthold7 = int.Parse(Ds3.Tables[0].Rows[6].ItemArray[5].ToString());
                oneyrmntimplemented7 = int.Parse(Ds3.Tables[0].Rows[6].ItemArray[6].ToString());

                oneyrmntmonths8 = Ds3.Tables[0].Rows[7].ItemArray[1].ToString();
                oneyrmntreceived8 = int.Parse(Ds3.Tables[0].Rows[7].ItemArray[2].ToString());
                oneyrmntaccepted8 = int.Parse(Ds3.Tables[0].Rows[7].ItemArray[3].ToString());
                oneyrmntreject8 = int.Parse(Ds3.Tables[0].Rows[7].ItemArray[4].ToString());
                oneyrmnthold8 = int.Parse(Ds3.Tables[0].Rows[7].ItemArray[5].ToString());
                oneyrmntimplemented8 = int.Parse(Ds3.Tables[0].Rows[7].ItemArray[6].ToString());

                oneyrmntmonths9 = Ds3.Tables[0].Rows[8].ItemArray[1].ToString();
                oneyrmntreceived9 = int.Parse(Ds3.Tables[0].Rows[8].ItemArray[2].ToString());
                oneyrmntaccepted9 = int.Parse(Ds3.Tables[0].Rows[8].ItemArray[3].ToString());
                oneyrmntreject9 = int.Parse(Ds3.Tables[0].Rows[8].ItemArray[4].ToString());
                oneyrmnthold9 = int.Parse(Ds3.Tables[0].Rows[8].ItemArray[5].ToString());
                oneyrmntimplemented9 = int.Parse(Ds3.Tables[0].Rows[8].ItemArray[6].ToString());

                oneyrmntmonths10 = Ds3.Tables[0].Rows[9].ItemArray[1].ToString();
                oneyrmntreceived10 = int.Parse(Ds3.Tables[0].Rows[9].ItemArray[2].ToString());
                oneyrmntaccepted10 = int.Parse(Ds3.Tables[0].Rows[9].ItemArray[3].ToString());
                oneyrmntreject10 = int.Parse(Ds3.Tables[0].Rows[9].ItemArray[4].ToString());
                oneyrmnthold10 = int.Parse(Ds3.Tables[0].Rows[9].ItemArray[5].ToString());
                oneyrmntimplemented10 = int.Parse(Ds3.Tables[0].Rows[9].ItemArray[6].ToString());

                oneyrmntmonths11 = Ds3.Tables[0].Rows[10].ItemArray[1].ToString();
                oneyrmntreceived11 = int.Parse(Ds3.Tables[0].Rows[10].ItemArray[2].ToString());
                oneyrmntaccepted11 = int.Parse(Ds3.Tables[0].Rows[10].ItemArray[3].ToString());
                oneyrmntreject11 = int.Parse(Ds3.Tables[0].Rows[10].ItemArray[4].ToString());
                oneyrmnthold11 = int.Parse(Ds3.Tables[0].Rows[10].ItemArray[5].ToString());
                oneyrmntimplemented11 = int.Parse(Ds3.Tables[0].Rows[10].ItemArray[6].ToString());

                oneyrmntmonths12 = Ds3.Tables[0].Rows[11].ItemArray[1].ToString();
                oneyrmntreceived12 = int.Parse(Ds3.Tables[0].Rows[11].ItemArray[2].ToString());
                oneyrmntaccepted12 = int.Parse(Ds3.Tables[0].Rows[11].ItemArray[3].ToString());
                oneyrmntreject12 = int.Parse(Ds3.Tables[0].Rows[11].ItemArray[4].ToString());
                oneyrmnthold12 = int.Parse(Ds3.Tables[0].Rows[11].ItemArray[5].ToString());
                oneyrmntimplemented12 = int.Parse(Ds3.Tables[0].Rows[11].ItemArray[6].ToString());

                DataSet Ds4 = new DataSet();
                Ds4=Dm.YearWiseYearListBarChart();
                yrsuggestionreceived1 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[0].ToString()); 
                yraccepted1 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[1].ToString());
                yrreject1 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[2].ToString());
                yrimplement1= int.Parse(Ds4.Tables[0].Rows[0].ItemArray[3].ToString());
                yrhold1= int.Parse(Ds4.Tables[0].Rows[0].ItemArray[4].ToString());

                yrsuggestionreceived2 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[5].ToString());
                yraccepted2 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[6].ToString());
                yrreject2 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[7].ToString());
                yrimplement2 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[8].ToString());
                yrhold2 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[9].ToString());

                yrsuggestionreceived3 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[10].ToString());
                yraccepted3 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[11].ToString());
                yrreject3 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[12].ToString());
                yrimplement3 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[13].ToString());
                yrhold3 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[14].ToString());

                yrsuggestionreceived4 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[15].ToString());
                yraccepted4 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[16].ToString());
                yrreject4 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[17].ToString());
                yrimplement4 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[18].ToString());
                yrhold4 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[19].ToString());

                yrsuggestionreceived5 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[20].ToString());
                yraccepted5 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[21].ToString());
                yrreject5 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[22].ToString());
                yrimplement5 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[23].ToString());
                yrhold5 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[24].ToString());

                yrsuggestionreceived6 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[25].ToString());
                yraccepted6 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[26].ToString());
                yrreject6 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[27].ToString());
                yrimplement6 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[28].ToString());
                yrhold6 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[29].ToString());

                yrsuggestionreceived7 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[30].ToString());
                yraccepted7 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[31].ToString());
                yrreject7 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[32].ToString());
                yrimplement7 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[33].ToString());
                yrhold7 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[34].ToString());

                yrsuggestionreceived8 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[35].ToString());
                yraccepted8 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[36].ToString());
                yrreject8 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[37].ToString());
                yrimplement8 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[38].ToString());
                yrhold8 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[39].ToString());

                yrsuggestionreceived9 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[40].ToString());
                yraccepted9 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[41].ToString());
                yrreject9 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[42].ToString());
                yrimplement9 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[43].ToString());
                yrhold9 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[44].ToString());

                yrsuggestionreceived10 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[45].ToString());
                yraccepted10 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[46].ToString());
                yrreject10 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[47].ToString());
                yrimplement10 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[48].ToString());
                yrhold10 = int.Parse(Ds4.Tables[0].Rows[0].ItemArray[49].ToString()); 

                string scriptyear = "bindgraphNew('" + oneyrbrsuggestionreceived + "','" + oneyrbraccepted + "','" + oneyrbrrejected + "','" + oneyrpitotalsuggestion + "','" + oneyrpiimplemented + "','" + oneyrpiaccepted + "','" + oneyrdeptdepname1 + "','" + oneyrdepttotalimplement1 + "','" + oneyrdeptimplemented1 + "','" + oneyrdeptyettoimplement1 + "','" + oneyrdeptdepname2 + "','" + oneyrdepttotalimplement2 + "','" + oneyrdeptimplemented2 + "','" + oneyrdeptyettoimplement2 + "','" + oneyrdeptdepname3 + "','" + oneyrdepttotalimplement3 + "','" + oneyrdeptimplemented3 + "','" + oneyrdeptyettoimplement3 + "','" + oneyrdeptdepname4 + "','" + oneyrdepttotalimplement4 + "','" + oneyrdeptimplemented4 + "','" + oneyrdeptyettoimplement4 + "','" + oneyrdeptdepname5 + "','" + oneyrdepttotalimplement5 + "','" + oneyrdeptimplemented5 + "','" + oneyrdeptyettoimplement5 + "','" + oneyrdeptdepname6 + "','" + oneyrdepttotalimplement6 + "','" + oneyrdeptimplemented6 + "','" + oneyrdeptyettoimplement6 + "','" + oneyrdeptdepname7 + "','" + oneyrdepttotalimplement7 + "','" + oneyrdeptimplemented7 + "','" + oneyrdeptyettoimplement7 + "','" + oneyrdeptdepname8 + "','" + oneyrdepttotalimplement8 + "','" + oneyrdeptimplemented8 + "','" + oneyrdeptyettoimplement8 + "','" + oneyrdeptdepname9 + "','" + oneyrdepttotalimplement9 + "','" + oneyrdeptimplemented9 + "','" + oneyrdeptyettoimplement9 + "','" + oneyrdeptdepname10 + "','" + oneyrdepttotalimplement10 + "','" + oneyrdeptimplemented10 + "','" + oneyrdeptyettoimplement10 + "','" + oneyrdeptdepname11 + "','" + oneyrdepttotalimplement11 + "','" + oneyrdeptimplemented11 + "','" + oneyrdeptyettoimplement11 + "','" + oneyrdeptdepname12 + "','" + oneyrdepttotalimplement12 + "','" + oneyrdeptimplemented12 + "','" + oneyrdeptyettoimplement12 + "','" + oneyrdeptdepname13 + "','" + oneyrdepttotalimplement13 + "','" + oneyrdeptimplemented13 + "','" + oneyrdeptyettoimplement13 + "','" + oneyrdeptdepname14 + "','" + oneyrdepttotalimplement14 + "','" + oneyrdeptimplemented14 + "','" + oneyrdeptyettoimplement14 + "','" + oneyrdeptdepname15 + "','" + oneyrdepttotalimplement15 + "','" + oneyrdeptimplemented15 + "','" + oneyrdeptyettoimplement15 + "','" + oneyrdeptdepname16 + "','" + oneyrdepttotalimplement16 + "','" + oneyrdeptimplemented16 + "','" + oneyrdeptyettoimplement16 + "','" + oneyrdeptdepname17 + "','" + oneyrdepttotalimplement17 + "','" + oneyrdeptimplemented17 + "','" + oneyrdeptyettoimplement17 + "','" + oneyrdeptdepname18 + "','" + oneyrdepttotalimplement18 + "','" + oneyrdeptimplemented18 + "','" + oneyrdeptyettoimplement18 + "','" + oneyrdeptdepname19 + "','" + oneyrdepttotalimplement19 + "','" + oneyrdeptimplemented19 + "','" + oneyrdeptyettoimplement19 + "','" + oneyrmntmonths1 + "', '" + oneyrmntreceived1 + "', '" + oneyrmntaccepted1 + "', '" + oneyrmntreject1 + "', '" + oneyrmnthold1 + "', '" + oneyrmntimplemented1 + "','" + oneyrmntmonths2 + "', '" + oneyrmntreceived2 + "', '" + oneyrmntaccepted2 + "', '" + oneyrmntreject2 + "', '" + oneyrmnthold2 + "', '" + oneyrmntimplemented2 + "','" + oneyrmntmonths3 + "', '" + oneyrmntreceived3 + "', '" + oneyrmntaccepted3 + "', '" + oneyrmntreject3 + "', '" + oneyrmnthold3 + "', '" + oneyrmntimplemented3 + "','" + oneyrmntmonths4 + "', '" + oneyrmntreceived4 + "', '" + oneyrmntaccepted4 + "', '" + oneyrmntreject4 + "', '" + oneyrmnthold4 + "', '" + oneyrmntimplemented4 + "','" + oneyrmntmonths5 + "', '" + oneyrmntreceived5 + "', '" + oneyrmntaccepted5 + "', '" + oneyrmntreject5 + "', '" + oneyrmnthold5 + "', '" + oneyrmntimplemented5 + "','" + oneyrmntmonths6 + "', '" + oneyrmntreceived6 + "', '" + oneyrmntaccepted6 + "', '" + oneyrmntreject6 + "', '" + oneyrmnthold6 + "', '" + oneyrmntimplemented6 + "','" + oneyrmntmonths7 + "', '" + oneyrmntreceived7 + "', '" + oneyrmntaccepted7 + "', '" + oneyrmntreject7 + "', '" + oneyrmnthold7 + "', '" + oneyrmntimplemented7 + "','" + oneyrmntmonths8 + "', '" + oneyrmntreceived8 + "', '" + oneyrmntaccepted8 + "', '" + oneyrmntreject8 + "', '" + oneyrmnthold8 + "', '" + oneyrmntimplemented8 + "','" + oneyrmntmonths9 + "', '" + oneyrmntreceived9 + "', '" + oneyrmntaccepted9 + "', '" + oneyrmntreject9 + "', '" + oneyrmnthold9 + "', '" + oneyrmntimplemented9 + "','" + oneyrmntmonths10 + "', '" + oneyrmntreceived10 + "', '" + oneyrmntaccepted10 + "', '" + oneyrmntreject10 + "', '" + oneyrmnthold10 + "', '" + oneyrmntimplemented10 + "','" + oneyrmntmonths11 + "', '" + oneyrmntreceived11 + "', '" + oneyrmntaccepted11 + "', '" + oneyrmntreject11 + "', '" + oneyrmnthold11 + "', '" + oneyrmntimplemented11 + "','" + oneyrmntmonths12 + "', '" + oneyrmntreceived12 + "', '" + oneyrmntaccepted12 + "', '" + oneyrmntreject12 + "', '" + oneyrmnthold12 + "', '" + oneyrmntimplemented12 + "','" + yrsuggestionreceived1 + "','" + yraccepted1 + "','" + yrreject1 + "','" + yrimplement1 + "','" + yrhold1 + "','" + yrsuggestionreceived2 + "','" + yraccepted2 + "','" + yrreject2 + "','" + yrimplement2 + "','" + yrhold2 + "','" + yrsuggestionreceived3 + "','" + yraccepted3 + "','" + yrreject3 + "','" + yrimplement3 + "','" + yrhold3 + "','" + yrsuggestionreceived4 + "','" + yraccepted4 + "','" + yrreject4 + "','" + yrimplement4 + "','" + yrhold4 + "','" + yrsuggestionreceived5 + "','" + yraccepted5 + "','" + yrreject5 + "','" + yrimplement5 + "','" + yrhold5 + "','" + yrsuggestionreceived6 + "','" + yraccepted6 + "','" + yrreject6 + "','" + yrimplement6 + "','" + yrhold6 + "','" + yrsuggestionreceived7 + "','" + yraccepted7 + "','" + yrreject7 + "','" + yrimplement7 + "','" + yrhold7 + "','" + yrsuggestionreceived8 + "','" + yraccepted8 + "','" + yrreject8 + "','" + yrimplement8 + "','" + yrhold8 + "','" + yrsuggestionreceived9 + "','" + yraccepted9 + "','" + yrreject9 + "','" + yrimplement9 + "','" + yrhold9 + "','" + yrsuggestionreceived10 + "','" + yraccepted10 + "','" + yrreject10 + "','" + yrimplement10 + "','" + yrhold10 + "')";

                ClientScript.RegisterStartupScript(this.GetType(), "function", scriptyear, true);

            }
            catch (Exception e1)
            {

            }
            
        }
    }
}