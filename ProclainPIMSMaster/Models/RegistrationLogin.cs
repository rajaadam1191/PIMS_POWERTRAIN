using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProclainPIMSMaster.Models
{
    public class RegistrationLogin
    {
        #region Declaration

        private string datetiming;
        public string DateTiming
        {
            get { return datetiming; }
            set { datetiming = value; }
        }

        private string outtime;
        public string OutTime
        {
            get { return outtime; }
            set { outtime = value; }
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
        private string admin;
        public string Admin
        {
            get { return admin; }
            set { admin = value; }
        }
        #endregion

        #region Golbal Variable Declaration
        private static string globaluserID;
        public static string GlobalUserID
        {
            get
            {
                return globaluserID;
            }
            set
            {
                globaluserID = value;
            }
        }
        #endregion



        #region Suggestion Insertion Process
        public void HEmpInsert(RegistrationLogin RL)
        {
            
          

            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@HEmployeeId", RL.HEmployeeID);
            Da.parameters.Add(OP);
            SqlParameter OP0 = new SqlParameter("@HEmployeeName", RL.HEmployeeName);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@HDepartmentID", RL.HDepartmentID);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@HDesignationID", RL.HDesignationID);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Email", RL.Email);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@PhoneNo", RL.PhoneNo);
            Da.parameters.Add(OP4);
            SqlParameter OP5 = new SqlParameter("@Password", RL.Password);
            Da.parameters.Add(OP5);
            
            SqlParameter OP6 = new SqlParameter("@Remark1", RL.Remark1);
            Da.parameters.Add(OP6);
            SqlParameter OP7 = new SqlParameter("@Remark2", RL.Remark2);
            Da.parameters.Add(OP7);
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("SP_HODDetails_Insert");


        }
        #endregion 


        #region HEmployeeId Search For LogIn
        public DataSet LoginSearch(RegistrationLogin RL)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@HEmployeeId", RL.HEmployeeID);
            Da.parameters.Add(OP1);
            

            Ds = Da.ExecuteDataset("SP_HODDetails_SelectPassword_HEmpID");
            return Ds;


        }
        #endregion

        #region HEmployeeId Search For LoginIn Details Menu Feed
        public DataSet LoginUserDetail(RegistrationLogin RL)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@HEmployeeId", RL.HEmployeeID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_HODDetails_Select_HEmpID");
            return Ds;


        }
        #endregion
        
        public DataSet AutoMailTrigger(string Role)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP = new SqlParameter("@TempReceived", Role);
            Da.parameters.Add(OP);
            Ds = Da.ExecuteDataset("AutoMailTrigger");
            return Ds;


        }

        public DataSet ResetPassword(string empid)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP = new SqlParameter("@Userid", empid);
            Da.parameters.Add(OP);
            Ds = Da.ExecuteDataset("sp_ResetPassword");
            return Ds;


        }
        public void UpdatePassword(string empid)
        {
            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@Userid", empid);
            Da.parameters.Add(OP);
            Da.ExecuteNonQuery("sp_ResetPasswordUpdate");
        }
        public void UpdateOTPRandom(string empid,int randomNum)
        {
            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@Userid", empid);
            Da.parameters.Add(OP);
            SqlParameter OP0 = new SqlParameter("@RandomNum", randomNum);
            Da.parameters.Add(OP0);
            Da.ExecuteNonQuery("[sp_InsertOTPRandomNum]");
        }

        public DataSet Checkoldpassword(string empid)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP = new SqlParameter("@Userid", empid);
            Da.parameters.Add(OP);
            Ds = Da.ExecuteDataset("sp_Checkoldpassword");
            return Ds;


        }
        public DataSet CheckoldpasswordGetOTP(string empid)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP = new SqlParameter("@Userid", empid);
            Da.parameters.Add(OP);
            Ds = Da.ExecuteDataset("[sp_CheckoldpasswordGetOTP]");
            return Ds;


        }
        public void Newpassword(string empid,string pass)
        {
            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@Userid", empid);
            Da.parameters.Add(OP);
            SqlParameter OPO = new SqlParameter("@Pass", pass);
            Da.parameters.Add(OPO);
            Da.ExecuteNonQuery("sp_ResetChangePassword");
        }


        #region Login Insertion Process
        public void LogInsert(RegistrationLogin RL)
        {



            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@Userid", RL.HEmployeeID);
            Da.parameters.Add(OP);
            SqlParameter OP0 = new SqlParameter("@UserName", RL.HEmployeeName);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@DateTiming", RL.DateTiming);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@OutTime", RL.OutTime);
            Da.parameters.Add(OP2);
            
            SqlParameter OP3 = new SqlParameter("@Remark1", RL.Remark1);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@Remark2", RL.Remark2);
            Da.parameters.Add(OP4);
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("SP_Login_Insert");


        }
        #endregion 



    }
}