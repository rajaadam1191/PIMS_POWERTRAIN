using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProclainPIMSMaster.Models
{
    public class Mailling
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
            set { idepid = value; }
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
        private string datediff;
        public string Datediff
        {
            get { return datediff; }
            set { datediff = value; }
        }
        private string subject;
        public string Subject
        {
            get { return subject; }
            set { subject = value; }
        }
        private string discription;
        public string Discription
        {
            get { return discription; }
            set { discription = value; }
        }
        private string suggestion;
        public string Suggestion
        {
            get { return suggestion; }
            set { suggestion = value; }
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
        private string remark1;
        public string Remark1
        {
            get { return remark1; }
            set { remark1 = value; }
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
        private string projectid;
        public string ProjectId
        {
            get { return projectid; }
            set { projectid = value; }
        }
        private string teamid;
        public string TeamId
        {
            get { return teamid; }
            set { teamid = value; }
        }
        private string teamname;
        public string TeamName
        {
            get { return teamname; }
            set { teamname = value; }
        }
        private string hoid;
        public string HOId
        {
            get { return hoid; }
            set { hoid = value; }
        }
        private string pstautus;
        public string PStautus
        {
            get { return pstautus; }
            set { pstautus = value; }
        }
        private string duration;
        public string Duration
        {
            get { return duration; }
            set { duration = value; }
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
        private string idearemark;
        public string IdeaRemark
        {
            get { return idearemark; }
            set { idearemark = value; }
        }
        private string teamhead;
        public string TeamHead
        {
            get { return teamhead; }
            set { teamhead = value; }
        }
        private string teamcount;
        public string TeamCount
        {
            get { return teamcount; }
            set { teamcount = value; }
        }
        private string depid;
        public string DepId
        {
            get { return depid; }
            set { depid = value; }
        }

        #endregion


        #region TeamID Auto Generation
        public DataSet TeamIdAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_TeamDetail_AutoGen_TeamID");
            return Ds;

        }
        #endregion

        #region TeamName Auto Generation
        public DataSet TeamNameAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_TeamDetail_TeamName_Select_All");
            return Ds;

        }
        #endregion

        #region ProjectID Auto Generation
        public DataSet ProjectIDAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_TeamExecution_AutoGen_ProjectID");
            return Ds;

        }
        #endregion
        
        #region Select All Email List
        public DataSet SelectRepeterView()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            
         //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
          //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("SP_EmployeeSuggestion_Select");
            
            return Ds;

        }
         public DataSet SelectRepeterViewAdmin()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            
         //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
           // Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[SP_EmployeeSuggestion_Select_Admin]");
            
            return Ds;

        }

        public DataSet SelectRepeterView_Type(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

             SqlParameter OP1 = new SqlParameter("@type", type);
             Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_EmployeeSuggestion_Select_Sent_by_Officials");
            return Ds;

        }
        public DataSet SelectRepeterView_Type_HOD(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_EmployeeSuggestion_Select_Sent_by_Officials_HOD");
            return Ds;

        }
        public DataSet SelectRepeterView_Type_IMPL(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_EmployeeSuggestion_Select_Sent_by_Officials_IMPLTeam");
            return Ds;

        }
        public DataSet SelectRepeterView_Type_HOS(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_EmployeeSuggestion_Select_Sent_by_Officials_HOS");
            return Ds;

        }
        public DataSet SelectRepeterView_Type_BEN(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_EmployeeSuggestion_Select_Sent_by_Officials_BEN");
            return Ds;

        }
        public DataSet SelectRepeterView_Type_FIN(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_EmployeeSuggestion_Select_Sent_by_Officials_FIN");
            return Ds;

        }

        #endregion
        public DataSet ManagerSelectRepeterView(Mailling M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            
            SqlParameter OP2 = new SqlParameter("@ReceiverID", M.IEmpId);
            Da.parameters.Add(OP2);
            SqlParameter OP1 = new SqlParameter("@DepId", M.DepId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("Manager_mailview");
            return Ds;

        }

        public DataSet ManagerSelectRepeterViewassigned(Mailling M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP2 = new SqlParameter("@ReceiverID", M.IEmpId);
            Da.parameters.Add(OP2);
            SqlParameter OP1 = new SqlParameter("@DepId", M.DepId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("Manager_mailview_assigned");
            return Ds;

        }

        public DataSet ManagerSelectRepeterViewcomplete(Mailling M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP2 = new SqlParameter("@ReceiverID", M.IEmpId);
            Da.parameters.Add(OP2);
            SqlParameter OP1 = new SqlParameter("@DepId", M.DepId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("Manager_mailview_complete");
            return Ds;

        }
        public DataSet ManagerSelectRepeterViewhold(Mailling M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP2 = new SqlParameter("@ReceiverID", M.IEmpId);
            Da.parameters.Add(OP2);
            SqlParameter OP1 = new SqlParameter("@DepId", M.DepId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("Manager_mailview_hold");
            return Ds;

        }

        public DataSet ManagerSelectRepeterViewReject(Mailling M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP2 = new SqlParameter("@ReceiverID", M.IEmpId);
            Da.parameters.Add(OP2);
            SqlParameter OP1 = new SqlParameter("@DepId", M.DepId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[Manager_mailview_reject]");
            return Ds;

        }
        public DataSet ManagerSelectRepeterViewotherdept(Mailling M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP2 = new SqlParameter("@ReceiverID", M.IEmpId);
            Da.parameters.Add(OP2);
            SqlParameter OP1 = new SqlParameter("@DepId", M.DepId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[Manager_mailview_otherdept]");
            return Ds;

        }
        public DataSet Barchart_get_details()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
            //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("DBMchart_get_details");

            return Ds;
          

        }

        #region Data Bank Manager Send Repeater View
        public DataSet DBMSEndRepeterView(Mailling M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP2 = new SqlParameter("@ReceiverID", M.IEmpId);
            Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("Adminsend");
            //Ds = Da.ExecuteDataset("SP_DataBankManagerSend_Select_RepeaterView");
            return Ds;

        }
        #endregion

        #region Select All Email List
        public DataSet DepartmetnRepeterView(Mailling M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@DepId", M.IDepID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("sp_Department_Select_By_DepId");
            return Ds;

        }
        #endregion



        #region Idead Search For Repeater Control
        public DataSet Repeatersearch(Mailling M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@IdeaID", M.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[SP_EmployeeSuggestion_Select_Mailing_IdeaID]");
            return Ds;


        }
        public DataSet RepeatersearchCommitteeEval(Mailling M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@IdeaID", M.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[SP_EmployeeSuggestion_Select_Mailing_IdeaID_Committee]");
            return Ds;


        }
        #endregion
        #region Idead Search For Repeater Control
        public DataSet DBMReplyCE(Mailling M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@IdeaID", M.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_DataBankManger_Replu_CommitteeEval");
            return Ds;


        }

        public DataSet BeneficiaryReplyCE(Mailling M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@IdeaID", M.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("Beneficiaryapprovalgetratings");
            return Ds;


        }
        #endregion
        #region Idead Search For Repeater Control
        public DataSet DBMReplyMN(Mailling M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@IdeaID", M.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_DataBankManger_Replu_Manger");
            return Ds;


        }
        #endregion
        




        #region DBMSender Box Search For Repeater Control
        public DataSet DBMSenderRepeatersearch(Mailling M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@SendID", M.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_DataBankManagerSend_Select_MailSendID");
            return Ds;


        }
        #endregion


        #region DBM Send Search For Repeater Control
        public DataSet DBMRepeatersearch(Mailling M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@SendID", M.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_DataBankManagerSend_Select_Mailing_SenderID");
            return Ds;


        }
        #endregion



        #region TeamDetail Insertion Process
        public void TeamDetailInsert(Mailling M)
        {

            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@TeamID", M.TeamId);
            Da.parameters.Add(OP);
            SqlParameter OP0 = new SqlParameter("@TeamName", M.TeamName);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@DepID", M.IDepID);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@TeamHead", M.TeamHead);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@TeamCount", M.TeamCount);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP4);
            
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("SP_TeamDetail_Insert");


        }
        #endregion




        #region Project Detail Insertion Process
        public void ProjectDetailInsert(Mailling M)
        {
            
            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@ProjectId", M.ProjectId);
            Da.parameters.Add(OP);
            SqlParameter OP0 = new SqlParameter("@TeamId", M.TeamId);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@TeamName", M.TeamName);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@HOId", M.HOId);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@Duration", M.Duration);
            Da.parameters.Add(OP4);
            SqlParameter OP5 = new SqlParameter("@FromDate", M.FromDate);
            Da.parameters.Add(OP5);
            SqlParameter OP6 = new SqlParameter("@HMessage", M.Discription);
            Da.parameters.Add(OP6);
            SqlParameter OP7 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP7);

            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("SP_TeamExecution_Insert");


        }
        #endregion
    }
}