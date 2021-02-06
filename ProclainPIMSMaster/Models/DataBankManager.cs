using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProclainPIMSMaster.Models
{
    public class DataBankManager
    {
        #region Variable Declaration
        private string reason;
        public string Reason
        {
            get { return reason; }
            set { reason = value; }
        }
        private string tempmail;
        public string TempMail
        {
            get { return tempmail; }
            set { tempmail = value; }
        }
        private string tempid;
        public string TempId
        {
            get { return tempid; }
            set { tempid = value; }
        }
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
        private string idepname;
        public string IDepName
        {
            get { return idepname; }
            set { idepname = value; }
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

        private string sendid;
        public string SendId
        {
            get { return sendid; }
            set { sendid = value; }
        }


        private string hemployeeId;
        public string HEmployeeID
        {
            get { return hemployeeId; }
            set { hemployeeId = value; }
        }

        private string hemployeename;
        public string HEmployeeName
        {
            get { return hemployeename; }
            set { hemployeename = value; }
        }
        private string hdepartmentid;
        public string HDepartmentID
        {
            get { return hdepartmentid; }
            set { hdepartmentid = value; }
        }
        private string hdesignationid;
        public string HDesignationID
        {
            get { return hdesignationid; }
            set { hdesignationid = value; }
        }
        private string email;
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private string phoneno;
        public string PhoneNo
        {
            get { return phoneno; }
            set { phoneno = value; }
        }
        private string password;
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        private string cmid;
        public string CMID
        {
            get { return cmid; }
            set { cmid = value; }
        }

        private string hodid;
        public string HODID
        {
            get { return hodid; }
            set { hodid = value; }
        }



        private string odepname;
        public string ODepName
        {
            get { return odepname; }
            set { odepname = value; }
        }

        private string type;
        public string Type
        {
            get { return type; }
            set { type = value; }
        }
        private string cominboxid;
        public string ComInboxID
        {
            get { return cominboxid; }
            set { cominboxid = value; }
        }

        private string dbmemail;
        public string DBMEmail
        {
            get { return dbmemail; }
            set { dbmemail = value; }
        }

        private string toid;
        public string ToID
        {
            get { return toid; }
            set { toid = value; }
        }

        private string rejideaid;
        public string Rejideaid
        {
            get { return rejideaid; }
            set { rejideaid = value; }
        }

        private string rejstatus;
        public string Rejstatus
        {
            get { return rejstatus; }
            set { rejstatus = value; }
        }
        private string rejempid;
        public string Rejempid
        {
            get { return rejempid; }
            set { rejempid = value; }
        }
        private string fileupload3;
        public string FileUpload3
        {
            get { return fileupload3; }
            set { fileupload3 = value; }
        }

        private string empimg;
        public string EmpImg
        {
            get { return empimg; }
            set { empimg = value; }
        }



        #endregion
        #region Committee Evaluvation Auto Generation
        public DataSet ComEvalSendIDAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_DataBankManager_SendMailID_AutoGeneration");
            return Ds;
            
        }


        #endregion

        #region Committee Evaluvation Send Box Auto Generation
        public DataSet ComEvalSendBoxAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_ComitteeEvalSend_AutoGen_ComitteeID");
            return Ds;

        }


        #endregion


        #region Committee Evaluvation Auto Generation
        public DataSet ComEvalIDAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_ComitteeDetail_AutoGen_ComitteeID");
            return Ds;

        }


        #endregion

        #region Committee Eval E Inbox  Auto Generation
        public DataSet ComEvalInboxIDAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_CommitteeEvalEInbox_AutoGen_ComitteeID");
            return Ds;

        }

        public DataSet IMPLTeamEvalInboxIDAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_TeamEvalEInbox_AutoGen_ComitteeID");
            return Ds;

        }


        #endregion
        #region Committee Eval E Inbox  Auto Generation
        public DataSet ManagerInboxIDAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_ManagerEInbox_AutoGen_EmailID");
            return Ds;

        }


        #endregion
        


        #region Select All Department Name
        public DataSet DepartmentSelectOthersAllComEvaPopUp()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_Department_Select_All_Others_CommitteeEvaluvation_PopUP");
            return Ds;
        }

        #endregion

        #region Committee Evaluvation Insertion Process
        public void CommitteeEvaInsert(DataBankManager M)
        {

            DataTO Da = new DataTO();
            SqlParameter OP00 = new SqlParameter("@SendId", M.SendId);
            Da.parameters.Add(OP00);
            SqlParameter OP7 = new SqlParameter("@SenderID", M.HEmployeeName);
            Da.parameters.Add(OP7);
            SqlParameter OP = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP);
            SqlParameter OP0 = new SqlParameter("@Date", M.Date);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@IEmpId", M.TempId);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@EmailId", M.TempMail);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Subject", M.Subject);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@EmailContent", M.Discription);
            Da.parameters.Add(OP4);
            
            SqlParameter OP5 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP5);
            SqlParameter OP6 = new SqlParameter("@Remark2", M.Remark2);
            Da.parameters.Add(OP6);


            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("sp_DataBankManager_MailSending_AdminDashBoard");


        }
        #endregion
        public void ImplTeamEvaInsert(DataBankManager M)
        {

            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@CmEmailID", M.SendId);
            Da.parameters.Add(OP000);
            SqlParameter OP = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP);
            

            SqlParameter OP11 = new SqlParameter("@From", M.DBMEmail);
            Da.parameters.Add(OP11);
            SqlParameter OP1 = new SqlParameter("@IEmpId", M.Email);
            Da.parameters.Add(OP1);



            SqlParameter OP0 = new SqlParameter("@Date", M.Date);
            Da.parameters.Add(OP0);
            SqlParameter OP3 = new SqlParameter("@Subject", M.Subject);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@EmailContent", M.Discription);
            Da.parameters.Add(OP4);

            SqlParameter OP5 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP5);
            //SqlParameter OP6 = new SqlParameter("@Type", M.Type);
            //Da.parameters.Add(OP);


            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("sp_implTeam_send_mail");

            


        }
        #region Committee Evaluvation Inbox Insertion Process
        public void CommitteeEvaInboxInsert(DataBankManager M)
        {
            
            DataTO Da = new DataTO(); 
            SqlParameter OP000 = new SqlParameter("@CmEmailID", M.ComInboxID);
            Da.parameters.Add(OP000);
            SqlParameter OP00 = new SqlParameter("@SendId", M.SendId);
            Da.parameters.Add(OP00);
            SqlParameter OP7 = new SqlParameter("@SenderID", M.HEmployeeName);
            Da.parameters.Add(OP7);
            SqlParameter OP1 = new SqlParameter("@IEmpId", M.HEmployeeID);
            Da.parameters.Add(OP1);
            SqlParameter OP = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP);
            SqlParameter OP11 = new SqlParameter("@From", M.DBMEmail);
            Da.parameters.Add(OP11);
            SqlParameter OP2 = new SqlParameter("@EmailId", M.Email);
            Da.parameters.Add(OP2);
            SqlParameter OP0 = new SqlParameter("@Date", M.Date);
            Da.parameters.Add(OP0);
            SqlParameter OP3 = new SqlParameter("@Subject", M.Subject);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@EmailContent", M.Discription);
            Da.parameters.Add(OP4);

            SqlParameter OP5 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP5);
            //SqlParameter OP6 = new SqlParameter("@Type", M.Type);
            //Da.parameters.Add(OP);


            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("sp_CommiteeEvalInBox_Insert_FrmDBM");


        }
        #endregion
        #region Manager Inbox Insertion Process
        public void ManagerInboxInsert(DataBankManager M)
        {

            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@CmEmailID", M.ComInboxID);
            Da.parameters.Add(OP000);
            SqlParameter OP00 = new SqlParameter("@SendId", M.SendId);
            Da.parameters.Add(OP00);
            SqlParameter OP7 = new SqlParameter("@SenderID", M.HEmployeeName);
            Da.parameters.Add(OP7);
            SqlParameter OP1 = new SqlParameter("@IEmpId", M.HEmployeeID);
            Da.parameters.Add(OP1);
            SqlParameter OP = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP);
            SqlParameter OP11 = new SqlParameter("@From", M.DBMEmail);
            Da.parameters.Add(OP11);
            SqlParameter OP2 = new SqlParameter("@EmailId", M.Email);
            Da.parameters.Add(OP2);
            SqlParameter OP0 = new SqlParameter("@Date", M.Date);
            Da.parameters.Add(OP0);
            SqlParameter OP3 = new SqlParameter("@Subject", M.Subject);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@EmailContent", M.Discription);
            Da.parameters.Add(OP4);

            SqlParameter OP5 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP5);
            SqlParameter OP6 = new SqlParameter("@Remark3", M.Remark3);
            Da.parameters.Add(OP6);


            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("sp_ManagersInBox_Insert_FrmDBM");


        }
        public void ManagerEvaInsert_OtherSend(DataBankManager M)
        {
            

            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@CmEmailID", M.cominboxid);
            Da.parameters.Add(OP000);
            SqlParameter OP = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP);
            SqlParameter OP00 = new SqlParameter("@SendId", M.SendId);
            Da.parameters.Add(OP00);
            SqlParameter OP11 = new SqlParameter("@From", M.DBMEmail);
            Da.parameters.Add(OP11);
            SqlParameter OP1 = new SqlParameter("@IEmpId", M.HEmployeeID);
            Da.parameters.Add(OP1);
            SqlParameter OP0 = new SqlParameter("@Date", M.Date);
            Da.parameters.Add(OP0);
            SqlParameter OP3 = new SqlParameter("@Subject", M.Subject);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@EmailContent", M.Discription);
            Da.parameters.Add(OP4);

            SqlParameter OP5 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP5);

            SqlParameter OP6 = new SqlParameter("@toEmail", M.Email);
            Da.parameters.Add(OP6);

            SqlParameter OP7 = new SqlParameter("@UserId", M.HEmployeeName);
            Da.parameters.Add(OP7);
            SqlParameter OP8 = new SqlParameter("@Remark3", M.Remark3);
            Da.parameters.Add(OP8);


            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("sp_manager_send_mail_OtherDepartment");

        }
        public void ManagerEvaInsert_DBM(DataBankManager M)
        {


            DataTO Da = new DataTO();
            
            SqlParameter OP = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP);
            SqlParameter OP7 = new SqlParameter("@UserId", M.HEmployeeName);
            Da.parameters.Add(OP7);
            
            SqlParameter OP11 = new SqlParameter("@From", M.DBMEmail);
            Da.parameters.Add(OP11);
            
            SqlParameter OP0 = new SqlParameter("@Date", M.Date);
            Da.parameters.Add(OP0);
            SqlParameter OP3 = new SqlParameter("@Subject", M.Subject);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@EmailContent", M.Discription);
            Da.parameters.Add(OP4);

            SqlParameter OP5 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP5);
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("[sp_manager_send_mail_DBM]");

        }

        #endregion
        public void HosInboxInsert(DataBankManager M)
        {

            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@CmEmailID", M.ComInboxID);
            Da.parameters.Add(OP000);
            
            
            SqlParameter OP = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP);
            SqlParameter OP11 = new SqlParameter("@From", M.DBMEmail);
            Da.parameters.Add(OP11);
            SqlParameter OP2 = new SqlParameter("@EmailId", M.Email);
            Da.parameters.Add(OP2);
            SqlParameter OP0 = new SqlParameter("@Date", M.Date);
            Da.parameters.Add(OP0);
            SqlParameter OP3 = new SqlParameter("@Subject", M.Subject);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@EmailContent", M.Discription);
            Da.parameters.Add(OP4);
            SqlParameter OP00 = new SqlParameter("@HodId", M.HODID);
            Da.parameters.Add(OP00);
            SqlParameter OP7 = new SqlParameter("@SenderID", M.HEmployeeName);
            Da.parameters.Add(OP7);
            SqlParameter OP1 = new SqlParameter("@IEmpId", M.HEmployeeID);
            Da.parameters.Add(OP1);
            SqlParameter OP10 = new SqlParameter("@FileUpload3", M.FileUpload3);
            Da.parameters.Add(OP10);
            //SqlParameter OP6 = new SqlParameter("@Type", M.Type);
            //Da.parameters.Add(OP);


            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("sp_HOSInBox_Insert_FrmIMPLTeam");


        }

        #region Committee Evaluvation Selection All for Gridview
        public DataSet CommitteeEvaluvationGridView()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_CommitteeEvaluvation_Select_All");
            return Ds;

        }
        
        #endregion

        #region Committee Evaluvation Snd Selection All for Gridview
        public DataSet CommitteeEvaluvationSendGridView()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("SP_CommitteeEvalSend_SelectGridView_MailSendID");
            return Ds;

        }
        public DataSet CommitteeEvaluvationGridViewFilter(Mailling M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP = new SqlParameter("@IdeaId",M.IdeaId);
            Da.parameters.Add(OP);
            Ds = Da.ExecuteDataset("SP_CommitteeEvalSend_SelectGridView_MailSendID_Filter");
            return Ds;

        }

        #endregion

        #region Committee Evaluvation Snd Selection All for Gridview
        public DataSet CommitteeEvaluvationSendIdeaIDGridView(DataBankManager DBM)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@IdeaId", DBM.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_CommitteeEvalSend_SelectGridView_MailSendID_Search");
            return Ds;

        }

        #endregion

        
        #region HOD Selection All for Gridview
        public DataSet HODDetailGridView()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_HeadOffcer_Select_All");
            return Ds;

        }
        
        #endregion


        #region Select All Email List
        public DataSet CommitteeEmailDashBoard(DataBankManager DBM)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@DepName", DBM.IDepName);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_HODDetails_Select_Email_HName_AdminDashBoardPopUP_Committee");
            return Ds;

        }
        public DataSet CommitteeEmailDashBoard_byEmployeeeID(string id)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@empID", id);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_HODDetails_Select_Email_HName_AdminDashBoardPopUP_Committee_by_employeeID");
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
            Ds = Da.ExecuteDataset("SP_EmployeeSuggestion_Select_Mailing_IdeaID");
            return Ds;


        }
        #endregion

        #region Committee Evaluvation Members Insertion Process
        public void ComEvalDetailInsert(DataBankManager M)
        {
            
            DataTO Da = new DataTO();
            SqlParameter OP00 = new SqlParameter("@ComitteeID", M.CMID);
            Da.parameters.Add(OP00);
            SqlParameter OP = new SqlParameter("@EmpId", M.IEmpId);
            Da.parameters.Add(OP);
            SqlParameter OP0 = new SqlParameter("@Members", M.HEmployeeName);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@Department", M.IDepName);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@ODepartment", M.ODepName);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@Remark2", M.Remark2);
            Da.parameters.Add(OP4);

            
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("SP_CommitteeDetail_Insert");


        }
        #endregion

        #region Committee Insertion Process
        public void CommiteeeInsert(Mailling M)
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

        public DataSet EmpIDSearch(DataBankManager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@EmpID", M.IEmpId);
            Da.parameters.Add(OP1);

            Ds = Da.ExecuteDataset("sp_EmpTableDetail_Search_EmployeeDetail");
            return Ds;



        }
        #region Committee ID Search For Updation In Committee Eval Form
        public DataSet CommitteeIDsearch(DataBankManager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ComitteeID", M.CMID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_CommitteeDetail_Search_CommitteeID");
            return Ds;


        }
        #endregion


        #region Updating the Committee Eval Form
        public DataSet ComEvalUpdate(DataBankManager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ComitteeID", M.CMID);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@EmpId", M.IEmpId);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Members", M.HEmployeeName);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@Department", M.IDepName);
            Da.parameters.Add(OP4);
            SqlParameter OP5 = new SqlParameter("@ODepartment", M.ODepName);
            Da.parameters.Add(OP5);
            SqlParameter OP6 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP6);
             foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Ds = Da.ExecuteDataset("SP_CommitteeDetail_Update");
            return Ds;


        }
        #endregion

        #region Data Bank Manager Send Repeater View
        public DataSet DBMSEndRepeterView()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //SqlParameter OP2 = new SqlParameter("@SuggestionDep", M.Suggestion);
            //Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("SP_DataBankManagerSend_Select_RepeaterView");
            return Ds;

        }
        #endregion



        #region Committee ID Search Dashboard RepeaterView 
        public DataSet ComtEvalRepView(DataBankManager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ReceiverID", M.CMID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_CommitteeEvalInbox_Select_RepeaterView");
            return Ds;


        }
        #endregion

        #region Committee ID Search Dashboard RepeaterView 
        public DataSet ComtEvalRepViewSend()
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            
            Ds = Da.ExecuteDataset("SP_CommitteeEvalInbox_Select_Send_RepeaterView");
            return Ds;


        }

        public DataSet ComtEvalRepViewSendcomplete()
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            Ds = Da.ExecuteDataset("SP_CommitteeEvalInbox_Select_Send_RepeaterView_complete");
            return Ds;


        }
        public DataSet ComtEvalRepViewSendreject()
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            Ds = Da.ExecuteDataset("SP_CommitteeEvalInbox_Select_Send_RepeaterView_reject");
            return Ds;


        }
        public DataSet ComtEvalRepViewSendFromManager()
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            Ds = Da.ExecuteDataset("[SP_CommitteeEvalInbox_Select_Send_RepeaterView_FrmDBM]");
            return Ds;


        }

        #endregion

        #region Committee ID Search Dashboard Update Pannel
        public DataSet ComtEvalRepViewUpatePannel(DataBankManager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@CmEmailID", M.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_CommitteeEvalInbox_SelectUpdatePannel_MailSendID");
            return Ds;


        }
        #endregion


        #region Committee ID Search Dashboard Update Pannel
        public DataSet ComEvalUpdateDashboardProcess(DataBankManager M)
        {
            
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@CmEmailID", M.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_CommitteeEvalInbox_SelectUpdateProcess_MailSendID");
            return Ds;


        }
        #endregion
        

        #region Committee ID Search Dashboard Update Pannel
        public DataSet ComiteeResponse(DataBankManager M)
        {
        DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@CmEmailID", M.ComInboxID);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@Type", M.Status);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Dep", M.Suggestion);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@Des", M.Reason);
            Da.parameters.Add(OP4);
           
             foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

             Ds = Da.ExecuteDataset("SP_CommitteeEvalInbox_Update_Response");
            return Ds;
        }
        #endregion

        public void DBMchangereject(DataBankManager M)
        {

            DataTO Da = new DataTO();
           


            SqlParameter OP = new SqlParameter("@IdeaId", M.Rejideaid);
            Da.parameters.Add(OP);
            SqlParameter OP11 = new SqlParameter("@Status", M.Rejstatus);
            Da.parameters.Add(OP11);
            SqlParameter OP2 = new SqlParameter("@RejEmpId", M.Rejempid);
            Da.parameters.Add(OP2);
            

            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("Sp_DBMRejectCommitteeResponse");


        }
        public DataSet CeoMessageSelect()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP001 = new SqlParameter("@type", "ceo");
            Da.parameters.Add(OP001);

            Ds = Da.ExecuteDataset("CeoMessageView");
            return Ds;
        }
        public DataSet MDMessageSelect()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP001 = new SqlParameter("@type", "md");
            Da.parameters.Add(OP001);

            Ds = Da.ExecuteDataset("CeoMessageView");
            return Ds;
        }
        public DataSet SloganSelect()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP001 = new SqlParameter("@type", "");
            Da.parameters.Add(OP001);

            Ds = Da.ExecuteDataset("CeoMessageView");
            return Ds;
        }
        public void CEOMessageInsert(string message)
        {

            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@ceomsg", message);
            Da.parameters.Add(OP000);
            SqlParameter OP001 = new SqlParameter("@type", "ceo");
            Da.parameters.Add(OP001);

            Da.ExecuteNonQuery("CEOMessageInsert");


        }
        public void MDMessageInsert(string message)
        {

            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@ceomsg", message);
            Da.parameters.Add(OP000);
            SqlParameter OP001 = new SqlParameter("@type", "md");
            Da.parameters.Add(OP001);

            Da.ExecuteNonQuery("CEOMessageInsert");


        }
        public void SloganInsert(string message)
        {

            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@ceomsg", message);
            Da.parameters.Add(OP000);
            SqlParameter OP001 = new SqlParameter("@type", "");
            Da.parameters.Add(OP001);

            Da.ExecuteNonQuery("CEOMessageInsert");


        }

        public void EmpImgUpload(DataBankManager M)
        {

            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@EmpId", M.IEmpId);
            Da.parameters.Add(OP000);
            SqlParameter OP001 = new SqlParameter("@EmpImg", M.EmpImg);
            Da.parameters.Add(OP001);

            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("EmpImgUpload");


        }
        public DataSet GetImage(string EmpId)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            SqlParameter OP2 = new SqlParameter("@EmpId", EmpId);
            Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[getImage]");

            return Ds;


        }

        public DataSet Ranking1Year()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
            //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("RankingYearWise");

            return Ds;


        }
        public DataSet Ranking1Month()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
            //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("Ranking1month");

            return Ds;


        }

        public DataSet Barchart_get_details()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
            //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[Graph3month]");

            return Ds;


        }
        public DataSet Barchart_get_details_1Year()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
            //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[GraphYearwise]");

            return Ds;


        }
        //YearBarChart,YearDepartmentBarchart,YearMonthWiseBarChart,YearpPieChart
        public DataSet YearBarChart()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
            //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[YearBarChart]");

            return Ds;


        }
        public DataSet YearpPieChart()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
            //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[YearpPieChart]");

            return Ds;


        }

        public DataSet YearDepartmentBarchart()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
            //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[YearDepartmentBarchart]");

            return Ds;


        }
        public DataSet YearMonthWiseBarChart()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
            //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[YearMonthWiseBarChart]");

            return Ds;


        }
        public DataSet YearWiseYearListBarChart()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
            //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[YearwiseDataYearList]");

            return Ds;


        }

        public DataSet EmpDetailView()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            //  SqlParameter OP2 = new SqlParameter("@SuggestionDep", empid);
            //  Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[EmployeeIdGet]");

            return Ds;


        }
        public DataSet ceomsgdet(string ceo)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

              SqlParameter OP2 = new SqlParameter("@message", ceo);
              Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[GetMessage]");

            return Ds;


        }
        public DataSet mdmsgdet( string md)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

              SqlParameter OP2 = new SqlParameter("@message", md);
              Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[GetMessage]");

            return Ds;


        }
        public DataSet sloganmsgdet(string slogan)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

              SqlParameter OP2 = new SqlParameter("@message", slogan);
              Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("[GetMessage]");

            return Ds;


        }
        
        public void Removedel(string type,string msg)
        {
            DataTO Da = new DataTO();
            
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@message", msg);
            Da.parameters.Add(OP2);
            
            Da.ExecuteNonQuery("RemoveMessage");
            


        }

    }
}