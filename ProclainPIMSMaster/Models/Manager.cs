using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProclainPIMSMaster.Models
{
    public class Manager
    {
        #region Variable Declaration
        private string targetdate;
        public string TargetDate
        {
            get { return targetdate; }
            set { targetdate = value; }
        }

        private string teamheadname;
        public string TeamHeadName
        {
            get { return teamheadname; }
            set { teamheadname = value; }
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
        private string iempname;
        public string IEmpName
        {
            get { return iempname; }
            set { iempname = value; }
        }
        private string teamid;
        public string TeamID
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
        private string teamhead;
        public string TeamHead
        {
            get { return teamhead; }
            set { teamhead = value; }
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
        private string cmid;
        public string CMID
        {
            get { return cmid; }
            set { cmid = value; }
        }

        private string ideaid;
        public string IdeaId
        {
            get { return ideaid; }
            set { ideaid = value; }
        }
        private string hemployeename;
        public string HEmployeeName
        {
            get { return hemployeename; }
            set { hemployeename = value; }
        }
        private string tempmail;
        public string TempMail
        {
            get { return tempmail; }
            set { tempmail = value; }
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
        private string reason;
        public string Reason
        {
            get { return reason; }
            set { reason = value; }
        }
        private string tempid;
        public string TempId
        {
            get { return tempid; }
            set { tempid = value; }
        }
        private string date;
        public string Date
        {
            get { return date; }
            set { date = value; }
        }
        private string days;
        public string Days
        {
            get { return days; }
            set { days = value; }
        }
        private string rating;
        public string Rating
        {
            get { return rating; }
            set { rating = value; }
        }
        private string hemployeeid;
        public string HEmployeeID
        {
            get { return hemployeeid; }
            set { hemployeeid = value; }
        }
        private string email;
        public string Email
        {
            get { return email; }
            set { email = value; }
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
        private string comInboxID;
        public string ComInboxID
        {
            get { return comInboxID; }
            set { comInboxID = value; }
        }
        private string dbmEmail;
        public string DBMEmail
        {
            get { return dbmEmail; }
            set { dbmEmail = value; }
        }
        private string bengrade;
        public string BENGRADE
        {
            get { return bengrade; }
            set { bengrade = value; }
        }
        private string benrating;
        public string BENRATING
        {
            get { return benrating; }
            set { benrating = value; }
        }
        private string financeteam;
        public string FinanceTeam
        {
            get { return financeteam; }
            set { financeteam = value; }
        }
        private string amount;
        public string Amount
        {
            get { return amount; }
            set { amount = value; }
        }
        private string comment;
        public string Comment
        {
            get { return comment; }
            set { comment = value; }
        }
        private string approveuser;
        public string ApproveUser
        {
            get { return approveuser; }
            set { approveuser = value; }
        }
        private string approveuseramt;
        public string ApproveUseramt
        {
            get { return approveuseramt; }
            set { approveuseramt = value; }
        }
        private string approveimpl;
        public string Approveimpl
        {
            get { return approveimpl; }
            set { approveimpl = value; }
        }
        private string approveimplamt;
        public string Approveimplamt
        {
            get { return approveimplamt; }
            set { approveimplamt = value; }
        }
        
            private string cashmode;
        public string CashMode
        {
            get { return cashmode; }
            set { cashmode = value; }
        }



        #endregion

        #region Employee Id Team Detail Search

        public DataSet EmpIDSearch(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@EmpID", M.IEmpId);
            Da.parameters.Add(OP1);

            Ds = Da.ExecuteDataset("sp_EmpTableDetail_Search_EmployeeDetail");
            return Ds;



        }

        #endregion
        
        #region Manager Id Team Detail Search

        public DataSet ManagerNameSelect(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@EmpName", M.IEmpName);
            Da.parameters.Add(OP1);
            

            Ds = Da.ExecuteDataset("sp_ManagerDetail_Select_All_DDList");
            return Ds;



        }
        public DataSet DeptEmployeeNameSelect(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@EmpName", M.IEmpName);
            Da.parameters.Add(OP1);


            Ds = Da.ExecuteDataset("sp_Department_Select_All_DDList");
            return Ds;



        }
        public DataSet EmployeeNameSelect(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@IdeaID", M.IdeaId);
            Da.parameters.Add(OP1);


            Ds = Da.ExecuteDataset("sp_EmployeeDetail_Select_ByIdeaID");
            return Ds;



        }
        public DataSet IMPLEmployeeNameSelect(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@IdeaID", M.IdeaId);
            Da.parameters.Add(OP1);


            Ds = Da.ExecuteDataset("[sp_IMPLEmployeeDetail_Select_ByIdeaID]");
            return Ds;



        }

        #endregion

        #region Employee Id Team Detail Search

        public DataSet EmpIDTeamSearch(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@EmpName", M.IEmpName);
            Da.parameters.Add(OP1);
            SqlParameter OP = new SqlParameter("@TeamId", M.TeamHead);
            Da.parameters.Add(OP);

            Ds = Da.ExecuteDataset("sp_TeamDetail_TeamMembers_Select_All_DDList_ByEmpId");
            return Ds;



        }
        public DataSet EmployeeEmailDashBoard(Manager DBM)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@empname", DBM.IEmpId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("employee_mail_generate");
            return Ds;

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

        #region ManaID Auto Generation
        public DataSet ManIdAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_ManagerDetail_AutoGen_MaID");
            return Ds;

        }
        #endregion
        #region TeamID Auto Generation
        public DataSet ManagerDDl()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("SP_ManagerDetail_Select_DDL");
            return Ds;

        }
        public DataSet HOSDDl(Manager M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP000 = new SqlParameter("@SenderId", M.IEmpName);
            Da.parameters.Add(OP000);
            Ds = Da.ExecuteDataset("SP_HOSDetail_Select_DDL");
            return Ds;

        }
        #endregion

        #region TeamMembers Detail For DDListPopUp
        public DataSet TeamMemDDList_GetDepId(Manager M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@TeamHID", M.TeamHead);
            Da.parameters.Add(OP1);

            Ds = Da.ExecuteDataset("Get_DepIdFromTeamHID");
            return Ds;

        }
        #endregion

        public DataSet TeamMemDDList(Manager M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@DepId", M.IDepID);
            Da.parameters.Add(OP1);

            Ds = Da.ExecuteDataset("Get_TeamMemFromDepId");
            return Ds;

        }

        #region Team Detail GridView
        public DataSet TeamGridView()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_TeamDetail_GridView_Select_All");
            return Ds;

        }
        public DataSet EmployeeTeamGridView()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@empid",IEmpId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("TeamDetail_GridView_ByEmployee");
            return Ds;

        }
        #endregion

        #region Team Detail Insertion Process
        public void TeamDetailInsert(Manager M)
        {
            
            DataTO Da = new DataTO();
            SqlParameter OP00 = new SqlParameter("@TeamID", M.TeamID);
            Da.parameters.Add(OP00);
            SqlParameter OP = new SqlParameter("@TeamName", M.TeamName);
            Da.parameters.Add(OP);
            SqlParameter OP0 = new SqlParameter("@EmpId", M.IEmpId);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@DepID", M.IDepID);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@TeamHID", M.TeamHead);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@TeamCount", M.TeamCount);
            Da.parameters.Add(OP3);
            
            SqlParameter OP5 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP5);
           


            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("SP_TeamDetail_Insert");


        }
        #endregion


        #region Manager Detail Insertion Process
        public void ManagerDetailInsert(Manager M)
        {

            DataTO Da = new DataTO();
            SqlParameter OP00 = new SqlParameter("@ManID", M.TeamID);
            Da.parameters.Add(OP00);
            
            SqlParameter OP0 = new SqlParameter("@EmpId", M.IEmpId);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@Members", M.IEmpName);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@Department", M.IDepID);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@ODepartment", M.TeamCount);
            Da.parameters.Add(OP3);

            SqlParameter OP5 = new SqlParameter("@Remark1", M.Remark1);
            Da.parameters.Add(OP5);



            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("SP_ManagerDetail_Insert");


        }
        public void ManagerDetailAlter(Manager M)
        {

            DataTO Da = new DataTO();
            

            SqlParameter OP0 = new SqlParameter("@EmpId", M.IEmpId);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@Members", M.IEmpName);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@Department", M.IDepID);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@ODepartment", M.TeamCount);
            Da.parameters.Add(OP3);

            



            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("[SP_ManagerDetail_alter]");


        }
        public void ManagerDetailDelete(Manager M)
        {

            DataTO Da = new DataTO();
            

            SqlParameter OP0 = new SqlParameter("@EmpId", M.IEmpId);
            Da.parameters.Add(OP0);
          

            Da.ExecuteNonQuery("[SP_ManagerDetail_Delete]");


        }
        #endregion

        #region Team Detail GridView
        public DataSet ManagerGridView()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("SP_ManagerDetail_GridView");
            return Ds;

        }
        #endregion
        public DataSet TeamIDAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_ManagerESend_AutoGen_MailId");
            return Ds;

        }
        public DataSet BenIDAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_ManagerESend_AutoGen_MailId");
            return Ds;

        }
        public DataSet ComEvalInboxIDAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_ManagerEInbox_AutoGen_EmailID");
            return Ds;

        }
        
        public void TeamInboxInsert(Manager M)
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
            SqlParameter OP6 = new SqlParameter("@Remark4", M.TargetDate);
            Da.parameters.Add(OP6);


            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("sp_TeamInBox_Insert_FrmDBM");


        }
        public void ManagerEvaInsert(Manager M)
        {

            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@CmEmailID", M.SendId);
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
            SqlParameter OP6 = new SqlParameter("@Remark4", M.TargetDate);
            Da.parameters.Add(OP6);


            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("sp_manager_send_mail");

        }


             public void ManagerInboxInsert(Manager M)
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

            Da.ExecuteNonQuery("sp_ManagersInBox_Insert_FrmDBM");


        }
        public void ManagerEvaInsertNotfeasible(Manager M)
        {

            DataTO Da = new DataTO();
            
            SqlParameter OP = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP);
            

            Da.ExecuteNonQuery("sp_manager_send_mail_notFeasible");

        }
        public void ManagerEvaInsertNotAlreadyimpl(Manager M)
        {

            DataTO Da = new DataTO();

            SqlParameter OP = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP);


            Da.ExecuteNonQuery("sp_manager_send_mail_alreadyimpl");

        }
        public DataSet BenEvalRepView(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ReceiverID", M.CMID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_BeneficiaryEvalInbox_Select_RepeaterView");
            return Ds;


        }
        public DataSet BeneficiaryResponse(Manager M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@CmEmailID", M.ComInboxID);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@Type", M.Status);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Days", M.Days);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@Rating", M.Rating);
            Da.parameters.Add(OP4);

            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Ds = Da.ExecuteDataset("SP_BeneficiaryEInbox_Update_Response");
            return Ds;
        }
        public DataSet benselectchange(Manager M)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@CmEmailID", M.ComInboxID);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@Grade", M.BENGRADE);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Rating", M.BENRATING);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@ideaid", M.IdeaId);
            Da.parameters.Add(OP4);
            

            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Ds = Da.ExecuteDataset("benselectchange");
            return Ds;
        }
        public DataSet BenSendBoxAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_BenEvalSend_AutoGen_ComitteeID");
            return Ds;

        }

        public void benselect(Manager m)
        {
            DataTO Da = new DataTO();
            
            SqlParameter OP000 = new SqlParameter("@CmEmailID", m.ComInboxID);
            Da.parameters.Add(OP000);
            SqlParameter OP001 = new SqlParameter("@IdeaId", m.IdeaId);
            Da.parameters.Add(OP001);
            Da.ExecuteNonQuery("benselect");
            
        }
        public DataSet FinanceEvaluvationSendGridView()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("SP_FinanceEvalSend_SelectGridView_MailSendID");
            return Ds;

        }



        public DataSet FinanceEvaluvationSendGridViewFinanceDetail()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("[SP_FinanceEvalSend_SelectGridView_MailSendID_FinanceDetail]");
            return Ds;

        }

        public void BeneficiaryResponseinsert(Manager M)
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

            Da.ExecuteNonQuery("sp_ManagersInBox_Insert_FrmDBM");

        }
        public DataSet BenEvalRepViewUpatePannel(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@CmEmailID", M.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_BeneficiaryEvalInbox_SelectUpdatePannel_MailSendID");
            return Ds;


        }
        public DataSet HREvalRepView(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ReceiverID", M.CMID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("HR_mailview");
            return Ds;


        }

        public DataSet HREvalRepViewComplete(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ReceiverID", M.CMID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("HR_mailviewcomplete");
            return Ds;


        }

        public DataSet FinanceEvalRepView(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ReceiverID", M.CMID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("Finance_mailview");
            return Ds;


        }
        public DataSet FinanceEvalRepViewcomplete(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ReceiverID", M.CMID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("Finance_mailview_complete");
            return Ds;


        }
        public DataSet FinanceImplEvalRepView(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ReceiverID", M.CMID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[FinanceIMPL_mailview_]");
            return Ds;


        }
        public DataSet FinanceImplEvalRepViewcomplete(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ReceiverID", M.CMID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[FinanceIMPL_mailview_complete]");
            return Ds;


        }
        public void FinancePayment(Manager M)
        {

            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP000);
            SqlParameter OP00 = new SqlParameter("@EmpId", M.IEmpId);
            Da.parameters.Add(OP00);
            SqlParameter OP7 = new SqlParameter("@EmpName", M.HEmployeeName);
            Da.parameters.Add(OP7);
            SqlParameter OP1 = new SqlParameter("@EmpMail", M.TempMail);
            Da.parameters.Add(OP1);
            SqlParameter OP = new SqlParameter("@FinTeam", M.FinanceTeam);
            Da.parameters.Add(OP);
            SqlParameter OP11 = new SqlParameter("@Comment", M.Comment);
            Da.parameters.Add(OP11);
            SqlParameter OP2 = new SqlParameter("@Amount", M.Amount);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@CashMode", M.CashMode);
            Da.parameters.Add(OP3);


            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("FinancePayment");


        }
        public void FinanceIMPLPayment(Manager M)
        {

            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP000);
            SqlParameter OP00 = new SqlParameter("@EmpId", M.IEmpId);
            Da.parameters.Add(OP00);
            SqlParameter OP7 = new SqlParameter("@EmpName", M.HEmployeeName);
            Da.parameters.Add(OP7);
            SqlParameter OP1 = new SqlParameter("@EmpMail", M.TempMail);
            Da.parameters.Add(OP1);
            SqlParameter OP = new SqlParameter("@FinTeam", M.FinanceTeam);
            Da.parameters.Add(OP);
            SqlParameter OP11 = new SqlParameter("@Comment", M.Comment);
            Da.parameters.Add(OP11);
            SqlParameter OP2 = new SqlParameter("@Amount", M.Amount);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@CashMode", M.CashMode);
            Da.parameters.Add(OP3);


            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("[FinanceIMPLPayment]");


        }
        public DataSet PaymentDetails(Manager m)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP000 = new SqlParameter("@IdeaId", m.IdeaId);
            Da.parameters.Add(OP000);
            Ds = Da.ExecuteDataset("paymentdetails");
            return Ds;

        }
        public DataSet PaymentImplDetails(Manager m)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP000 = new SqlParameter("@IdeaId", m.IdeaId);
            Da.parameters.Add(OP000);
            Ds = Da.ExecuteDataset("paymentimpldetails");
            return Ds;

        }
        public void HRSelect(Manager m)
        {
            DataTO Da = new DataTO();
            
           SqlParameter OP000 = new SqlParameter("@CmEmailID", m.ComInboxID);
            Da.parameters.Add(OP000);
            SqlParameter OP001 = new SqlParameter("@ApproveUser", m.ApproveUser);
            Da.parameters.Add(OP001);
            SqlParameter OP002 = new SqlParameter("@ApproveUseramt", m.ApproveUseramt);
            Da.parameters.Add(OP002);
            SqlParameter OP003 = new SqlParameter("@Approveimpl", m.Approveimpl);
            Da.parameters.Add(OP003);
            SqlParameter OP004 = new SqlParameter("@Approveimplamt", m.Approveimplamt);
            Da.parameters.Add(OP004);

            foreach (SqlParameter p in Da.parameters) 
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("hrselect");

        }
        public DataSet FinanceExcelView(Manager M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@IdeaId", M.IdeaId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[ExportExcel]");
            return Ds;


        }
    }
}