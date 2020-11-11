using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProclainPIMSMaster;

namespace ProclainPIMSMaster.Models
{
    public class NewSuggestionModel
    {
        #region Variable Declaration
        private string ideaid;
        public string IdeaId
        {
            get { return ideaid; }
            set { ideaid = value; }
        }
        private string idepid;
        public string IDepID
        {
            get { return idepid; }
            set { idepid = value;}
        }
        private string idesid;
        public string IDesID
        {
            get { return idesid; }
            set { idesid = value; }
        }
        private string iempid;
        public string IEmpId
        {
            get { return iempid; }
            set { iempid = value; }
        }
        private string date;
        public string Date
        {
            get { return date; }
            set { date = value; }
        }
        private string subject;
        public string Subject
        {
            get { return subject; }
            set { subject = value; }
        }
	
        private string benefits;
        public string Benefits
        {
            get { return benefits; }
            set { benefits = value; }
        }
        private string category;
        public string Category
        {
            get { return category; }
            set { category = value; }
        }
        private string before;
        public string Before
        {
            get { return before; }
            set { before = value; }
        }
        private string after;
        public string After
        {
            get { return after; }
            set { after = value; }
        }
        private string fileupload1;
        public string FileUpload1
        {
            get { return fileupload1; }
            set { fileupload1 = value; }
        }
        private string fileupload2;
        public string FileUpload2
        {
            get { return fileupload2; }
            set { fileupload2 = value; }
        }
        private string fileupload3;
        public string FileUpload3
        {
            get { return fileupload3; }
            set { fileupload3 = value; }
        }
        private string status;
        public string Status
        {
            get { return status; }
            set { status = value; }
        }
        private string approved;
        public string Approved
        {
            get { return approved; }
            set { approved = value; }
        }
       
        private string remark2;
        public string Remark2
        {
            get { return remark2; }
            set { remark2 = value; }
        }
        private string remark3;
        public string Remark3
        {
            get { return remark3; }
            set { remark3 = value; }
        }
        private string remark4;
        public string Remark4
        {
            get { return remark4; }
            set { remark4 = value; }
        }
        private string remark5;
        public string Remark5
        {
            get { return remark5; }
            set { remark5 = value; }
        }
        private string fromdate;
        public string FromDate
        {
            get { return fromdate; }
            set { fromdate = value; }
        }
        private string todate;
        public string ToDate
        {
            get { return todate; }
            set { todate = value; }
        }
        #endregion

        #region Select All Department Name
        public DataSet DepartmentSelectAll()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_Department_Select_All");
            return Ds;
        }

        #endregion
        public DataSet CompanySelectAll()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("[sp_Company_Select_All]");
            return Ds;
        }




        #region Select All Department Name
        public DataSet DesignationSelectAll()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_Designation_Select_All");
            return Ds;

        }
        #endregion

        #region Select Employee Name And For DropDownBox
        public DataSet EmployeeSelectAll()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("SP_Employee_Select_ID_Name");
            return Ds;
        }


        #endregion

        #region Suggestion ID Auto Generation
        public DataSet SuggestionIdAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("[sp_EmployeeSuggestion_AutoGen_IdeaID_newComparebased_Reset]");
            // Ds = Da.ExecuteDataset("sp_EmployeeSuggestion_AutoGen_IdeaID_newComparebased");  
            //sp_EmployeeSuggestion_AutoGen_IdeaID -- updated on 20-5-2020
            return Ds;

        }
        public DataSet SuggestionIdAuto_DBM()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_EmployeeSuggestion_AutoGen_IdeaID_DBM");
            return Ds;

        }
        #endregion

        public void ExceptionInsert(string exception)
        {

            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@Error", exception);
            Da.parameters.Add(OP); 
             Da.ExecuteNonQuery("ExceptionErrorInsert");
        }


        #region Suggestion Insertion Process
        public void SuggestionInsert(NewSuggestionModel SM)
        {

            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@IdeaId",SM.IdeaId);
            Da.parameters.Add(OP);
            SqlParameter OP00 = new SqlParameter("@IDepId", SM.IDepID);
            Da.parameters.Add(OP00);
            SqlParameter OP0 = new SqlParameter("@IDesId", SM.IDesID);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@IEmpId", SM.IEmpId);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@Date", SM.Date);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Subject", SM.Subject);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@Benefits", SM.Benefits);
            Da.parameters.Add(OP4);
            SqlParameter OP5 = new SqlParameter("@Category", SM.Category);
            Da.parameters.Add(OP5);
            SqlParameter OP6 = new SqlParameter("@Before", SM.Before);
            Da.parameters.Add(OP6);
            SqlParameter OP7 = new SqlParameter("@After", SM.After);
            Da.parameters.Add(OP7);
            SqlParameter OP8 = new SqlParameter("@FileUpload1", SM.FileUpload1);
            Da.parameters.Add(OP8);
            SqlParameter OP9 = new SqlParameter("@FileUpload2", SM.FileUpload2);
            Da.parameters.Add(OP9);
            SqlParameter OP10 = new SqlParameter("@FileUpload3", SM.FileUpload3);
            Da.parameters.Add(OP10);
            SqlParameter OP11 = new SqlParameter("@Status", SM.Status);
            Da.parameters.Add(OP11);
            SqlParameter OP12 = new SqlParameter("@Approved", SM.Approved);
            Da.parameters.Add(OP12);           
            SqlParameter OP13 = new SqlParameter("@Remark2", SM.Remark2);
            Da.parameters.Add(OP13);
            SqlParameter OP14 = new SqlParameter("@Remark3", SM.Remark3);
            Da.parameters.Add(OP14);
            SqlParameter OP15 = new SqlParameter("@Remark4", SM.Remark4);
            Da.parameters.Add(OP15);
            
            foreach(SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("SP_EmployeeSuggestion_Insert");
           

        }

        public void SuggestionInsert_by_DBM(NewSuggestionModel SM)
        {

            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@IdeaId", SM.IdeaId);
            Da.parameters.Add(OP);
            SqlParameter OP00 = new SqlParameter("@IDepId", SM.IDepID);
            Da.parameters.Add(OP00);
            SqlParameter OP0 = new SqlParameter("@IDesId", SM.IDesID);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@IEmpId", SM.IEmpId);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@Date", SM.Date);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Subject", SM.Subject);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@Benefits", SM.Benefits);
            Da.parameters.Add(OP4);
            SqlParameter OP5 = new SqlParameter("@Category", SM.Category);
            Da.parameters.Add(OP5);
            SqlParameter OP6 = new SqlParameter("@Before", SM.Before);
            Da.parameters.Add(OP6);
            SqlParameter OP7 = new SqlParameter("@After", SM.After);
            Da.parameters.Add(OP7);
            SqlParameter OP8 = new SqlParameter("@FileUpload1", SM.FileUpload1);
            Da.parameters.Add(OP8);
            SqlParameter OP9 = new SqlParameter("@FileUpload2", SM.FileUpload2);
            Da.parameters.Add(OP9);
            SqlParameter OP10 = new SqlParameter("@FileUpload3", SM.FileUpload3);
            Da.parameters.Add(OP10);
            SqlParameter OP11 = new SqlParameter("@Status", SM.Status);
            Da.parameters.Add(OP11);
            SqlParameter OP12 = new SqlParameter("@Approved", SM.Approved);
            Da.parameters.Add(OP12);
            SqlParameter OP13 = new SqlParameter("@Remark2", SM.Remark2);
            Da.parameters.Add(OP13);
            SqlParameter OP14 = new SqlParameter("@Remark3", SM.Remark3);
            Da.parameters.Add(OP14);
            SqlParameter OP15 = new SqlParameter("@Remark4", SM.Remark4);
            Da.parameters.Add(OP15);

            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("SP_EmployeeSuggestion_DBM_Insert");


        }
        #endregion
        public DataSet checkIDeaid(NewSuggestionModel SM)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@idea", SM.ideaid);
            Da.parameters.Add(OP1);

            Ds = Da.ExecuteDataset("SP_CheckIdeaID_from_Suggestions");
            return Ds;



        }

        #region Employee Id Suggeston Search

        public DataSet search(NewSuggestionModel SM)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@EmployeeId", SM.IEmpId);
            Da.parameters.Add(OP1);
            
            Ds = Da.ExecuteDataset("SP_Employee_Select_Suggestion_EmpId");
            return Ds;



        }

        #endregion
        #region Idea Id Suggeston Search

        public DataSet Ideasearch(NewSuggestionModel SM)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@IdeaId", SM.IdeaId);
            Da.parameters.Add(OP1);

            Ds = Da.ExecuteDataset("SP_EmployeeSuggestion_Search_SuggestionId");
            return Ds;



        }

        #endregion
        #region EmployeeSuggestion Select Employee Employee Default Form DateWise

        public DataSet DefaultFormGridViewDateWise(NewSuggestionModel SM)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@EmployeeID", SM.IEmpId);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@Fromdate", SM.FromDate);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Todate", SM.ToDate);
            Da.parameters.Add(OP3);

            Ds = Da.ExecuteDataset("SP_EmployeeSuggestion_Select_EmpDateWise_EmployeeDefaultForm");
            return Ds;



        }

        #endregion


    }
}