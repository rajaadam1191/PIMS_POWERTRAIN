using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProclainPIMSMaster.Models
{
    
    public class Employee
    {
        #region Variable Declaration
        private string cmid;
        public string CMID
        {
            get { return cmid; }
            set { cmid = value; }
        }

        private string employeeid;
        public string EmployeeId
        {
            get { return employeeid; }
            set { employeeid = value; }
        }
        private string employeename;
        public string EmployeeName
        {
            get { return employeename; }
            set { employeename = value; }
        }
        private string departmentid;
        public string DepartmentId
        {
            get { return departmentid; }
            set { departmentid = value; }
        }
        private string designationid;
        public string DesignationId
        {
            get { return designationid; }
            set { designationid = value; }
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
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private string ideaid;
        public string IdeaID
        {
            get { return ideaid; }
            set { ideaid = value; }
        }

        private string point;
        public string Point
        {
            get { return point; }
            set { point = value; }
        }
        private string allowance;
        public string Allowance
        {
            get { return allowance; }
            set { allowance = value; }
        }

        private string type;
        public string Type
        {
            get { return type; }
            set { type = value; }
        }

        private string countReceiverID;
        public string CountReceiverID
        {
            get { return countReceiverID; }
            set { countReceiverID = value; }
        }
        private string gridReceiverID;
        public string GridReceiverID
        {
            get { return gridReceiverID; }
            set { gridReceiverID = value; }
        }
        private string bulkempideaid;
        public string Bulkempideaid
        {
            get { return bulkempideaid; }
            set { bulkempideaid = value; }
        }
        private string bulkempid;
        public string Bulkempid
        {
            get { return bulkempid; }
            set { bulkempid = value; }
        }
        private string bulkempdep;
        public string Bulkempdep
        {
            get { return bulkempdep; }
            set { bulkempdep = value; }
        }
        private string bulkempdate;
        public string Bulkempdate
        {
            get { return bulkempdate; }
            set { bulkempdate = value; }
        }
        private string bulkempbengrade;
        public string Bulkempbengrade
        {
            get { return bulkempbengrade; }
            set { bulkempbengrade = value; }
        }
        private string bulkempamt;
        public string Bulkempamt
        {
            get { return bulkempamt; }
            set { bulkempamt = value; }
        }
        private string bulkimpideaid;
        public string Bulkimpideaid
        {
            get { return bulkimpideaid; }
            set { bulkimpideaid = value; }
        }
        private string bulkimpid;
        public string Bulkimpid
        {
            get { return bulkimpid; }
            set { bulkimpid = value; }
        }
        private string bulkimpdep;
        public string Bulkimpdep
        {
            get { return bulkimpdep; }
            set { bulkimpdep = value; }
        }
        private string bulkimpdate;
        public string Bulkimpdate
        {
            get { return bulkimpdate; }
            set { bulkimpdate = value; }
        }
        private string bulkimpbengrade;
        public string Bulkimpbengrade
        {
            get { return bulkimpbengrade; }
            set { bulkimpbengrade = value; }
        }
        private string bulkimpamt;
        public string Bulkimpamt
        {
            get { return bulkimpamt; }
            set { bulkimpamt = value; }
        }
        private string impenddate;
        public string Impenddate
        {
            get { return impenddate; }
            set { impenddate = value; }
        }
        private string impstartdate;
        public string Impstartdate
        {
            get { return impstartdate; }
            set { impstartdate = value; }
        }
        private string empenddate;
        public string Empenddate
        {
            get { return empenddate; }
            set { empenddate = value; }
        }
        private string empstartdate;
        public string Empstartdate
        {
            get { return empstartdate; }
            set { empstartdate = value; }
        }
        public DataSet SuggestionSelectAllID(string empidd)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();


            SqlParameter OP2 = new SqlParameter("@empid", empidd);
            Da.parameters.Add(OP2);
            Ds = Da.ExecuteDataset("EmployeeSuggestion_Select_Empid");
            return Ds;
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
        private string departmentname;
        public string DepartmentName
        {
            get { return departmentname; }
            set { departmentname = value; }
        }
        private string companyname;
        public string CompanyName
        {
            get { return companyname; }
            set { companyname = value; }
        }
        private string companyid;
        public string CompanyId
        {
            get { return companyid; }
            set { companyid = value; }
        }

        private string designationname;
        public string DesignationName
        {
            get { return designationname; }
            set { designationname = value; }
        }
        #endregion
        
        
        #region Select All SuggestionDetails
        public DataSet SuggestionSelectAll()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            
            
            
            Ds = Da.ExecuteDataset("SP_EmployeeSuggestion_Select");
            return Ds;

        }
        #endregion
        #region Select Employee All SuggestionDetails
        public DataSet EmpSelectAll()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("SP_Employee_Select");
            return Ds;

        }
        public DataSet EmpSelectAllDisable()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("[SP_Employee_Select_Disable]");
            return Ds;

        }
        #endregion

        public DataSet EmpSelectDashboard(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_Employee_Dashboard");
            return Ds;

        }
        public DataSet FinSelectDashboard(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("FinanceCountDetail");
            return Ds;

        }

        public DataSet BenApprovalUserDashboard(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[IdeaDepCount]");
            return Ds;

        }
        public DataSet BenApprovalImplDashboard(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[IdeaDepGradeWise]");
            return Ds;

        }

        public DataSet FinanceEvaluvationSendGridViewFinanceDetail()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("[SP_FinanceEvalSend_SelectGridView_MailSendID_FinanceDetail]");
            return Ds;

        }

        public DataSet Deptwiserecord(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("DeptWiseRecord");
            return Ds;

        }

        public DataSet IdeaHistoryTracking()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            
            Ds = Da.ExecuteDataset("IdeaTrackingHistory");
            return Ds;

        }
        public DataSet Rolescomment()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();

            Ds = Da.ExecuteDataset("RolesComment");
            return Ds;

        }

        public DataSet RoleswiseDaysrecord(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[DayCountRoleBasedIdeaID]");
            return Ds;

        }

        public DataSet BeneficiaryBulkEmpgridview(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("BeneficiaryapprovalBulkProcess");
            return Ds;

        }
        public DataSet BeneficiaryBulkImpgridview(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("BeneficiaryapprovalBulkProcess");
            return Ds;

        }
        public DataSet BeneficiaryBulkEmpgridviewDBM(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[DBMBulkProcessHR_Module]");
            return Ds;

        }
        public DataSet BeneficiaryBulkImpgridviewDBM(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("[DBMBulkProcessHR_Module]");
            return Ds;

        }
        public DataSet BeneficiaryBulkEmpgridviewFilter(Employee E)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", "Emp");
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@startdate", E.Empstartdate);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@enddate", E.Empenddate);
            Da.parameters.Add(OP3);
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }
            Ds = Da.ExecuteDataset("[BeneficiaryapprovalBulkProcessFilter]");
            return Ds;

        }
        public DataSet BeneficiaryBulkImpgridviewFilter(Employee E)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", "");
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@startdate", E.Impstartdate);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@enddate", E.Impenddate);
            Da.parameters.Add(OP3);
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }
            Ds = Da.ExecuteDataset("[BeneficiaryapprovalBulkProcessFilter]");
            return Ds;

        }
        public DataSet BeneficiaryBulkEmpgridviewFilterDBM(Employee E)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", "Emp");
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@startdate", E.Empstartdate);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@enddate", E.Empenddate);
            Da.parameters.Add(OP3);
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }
            Ds = Da.ExecuteDataset("[DBMBulkProcessHR_Module_Filter]");
            return Ds;

        }
        public DataSet BeneficiaryBulkImpgridviewFilterDBM(Employee E)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", "");
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@startdate", E.Impstartdate);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@enddate", E.Impenddate);
            Da.parameters.Add(OP3);
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }
            Ds = Da.ExecuteDataset("[DBMBulkProcessHR_Module_Filter]");
            return Ds;

        }

        public DataSet HODGridviewDashboard(Employee E)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ReceiverID", E.GridReceiverID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_HODDASHBOARD");
            return Ds;

        }
        public DataSet HOSGridviewDashboard(Employee E)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ReceiverID", E.GridReceiverID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_HOSDASHBOARD");
            return Ds;

        }

        public DataSet HODCountDashboard(Employee E)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OOP1 = new SqlParameter("@ReceiverID", E.CountReceiverID);
            Da.parameters.Add(OOP1);
            SqlParameter OP1 = new SqlParameter("@type", E.Type);
            Da.parameters.Add(OP1);
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }
            Ds = Da.ExecuteDataset("SP_Hod_Dashboard");
            return Ds;

        }

        #region Department, Designation, company ID Auto Generation 
        public DataSet DepartmentIdAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_Department_AutoGen_DepID");
            return Ds;

        }
        public DataSet CompanyIdAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_Company_AutoGen_DepID");
            return Ds;

        }
       
        public DataSet DesignationIdAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_Designation_AutoGen_DesID");
            return Ds;

        }
        #endregion

        #region Select Employee Detail For GridView
        public DataSet EmployeeDetailAll()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("SP_Employee_Select");
            return Ds;

        }



        #endregion

        #region Suggestion Insertion Process
        public void EmployeeInsert(Employee EM)
        {

            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@EmployeeId", EM.EmployeeId);
            Da.parameters.Add(OP);
            SqlParameter OP0 = new SqlParameter("@EmployeeName", EM.EmployeeName);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@DepartmentId", EM.DepartmentId);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@DesignationId", EM.DesignationId);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@PhoneNo", EM.PhoneNo);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@Password", EM.Password);
            Da.parameters.Add(OP4);
            SqlParameter OP5 = new SqlParameter("@Email", EM.Email);
            Da.parameters.Add(OP5);
            SqlParameter OP6 = new SqlParameter("@Points", EM.Point);
            Da.parameters.Add(OP6);
            SqlParameter OP7 = new SqlParameter("@Allowance", EM.Allowance);
            Da.parameters.Add(OP7);
            SqlParameter OP8 = new SqlParameter("@Remark1", EM.Remark1);
            Da.parameters.Add(OP8);
            SqlParameter OP9 = new SqlParameter("@Remark2", EM.Remark2);
            Da.parameters.Add(OP9);
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("SP_Employee_Insert");


        }
        #endregion

        public void EmployeeDisable(Employee EM)
        {

            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@EmployeeId", EM.EmployeeId);
            Da.parameters.Add(OP);
          

            Da.ExecuteNonQuery("SP_Employee_Insert_Disable");


        }

        public void EmployeeEnable(Employee EM)
        {

            DataTO Da = new DataTO();
            SqlParameter OP = new SqlParameter("@EmployeeId", EM.EmployeeId);
            Da.parameters.Add(OP);


            Da.ExecuteNonQuery("[SP_Employee_Insert_Enabled]");


        }


        #region
        public void DepartmentInsert(Employee EM)
        {
            DataTO DA = new DataTO();
            SqlParameter OP1 = new SqlParameter("@DepId", EM.DepartmentId);
            DA.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@DepName", EM.DepartmentName);
            DA.parameters.Add(OP2);
            foreach (SqlParameter p in DA.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            DA.ExecuteNonQuery("SP_Department_Insert");
        }
        public void CompanyInsert(Employee EM)
        {
            DataTO DA = new DataTO();
            SqlParameter OP1 = new SqlParameter("@ComId", EM.CompanyId);
            DA.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@ComName", EM.CompanyName);
            DA.parameters.Add(OP2);
            foreach (SqlParameter p in DA.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            DA.ExecuteNonQuery("SP_Company_Insert");
        }

        public void DesignationInsert(Employee EM)
        {
            DataTO DA = new DataTO();
            SqlParameter OP1 = new SqlParameter("@DesId", EM.DesignationId);
            DA.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@DesName", EM.DesignationName);
            DA.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@DepId", EM.DepartmentId);
            DA.parameters.Add(OP3);
            foreach (SqlParameter p in DA.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            DA.ExecuteNonQuery("SP_Designation_Insert");
        }
        #endregion

        #region EmployeeId Search
        public DataSet search(Employee EM)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@EmployeeId", EM.EmployeeId);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("SP_Employee_Search_EmployeeForm");
            return Ds;


        }
        #endregion
        #region Suggestion Update Process
        public void EmployeeUpdate(Employee EM)
        {

            DataTO Da = new DataTO();


            SqlParameter OP00 = new SqlParameter("@EmployeeId", EM.EmployeeId);
            Da.parameters.Add(OP00);
            SqlParameter OP0 = new SqlParameter("@EmployeeName", EM.EmployeeName);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@DepartmentId", EM.DepartmentId);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@DesignationId", EM.DesignationId);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@PhoneNo", EM.PhoneNo);
            Da.parameters.Add(OP3);
            
            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("SP_Employee_Update_EmployeeForm");


        }
        #endregion


        public DataSet ImplTeamEvalRepView(Employee M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@ReceiverID", M.CMID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("teammember_mailview");
            return Ds;


        }
        public DataSet ImplTeamRepViewUpatePannel(Employee M)
        {



            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@CmEmailID", M.IdeaID);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("ImplTeamEvalInbox_SelectUpdatePannel_MailSendID");
            return Ds;              


        }
        public DataSet ComEvalSendIDAuto()
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            Ds = Da.ExecuteDataset("sp_IMPLTeam_SendMailID_AutoGeneration");
            return Ds;

        }
        public void BulkProcessEmp(Employee EM)
        {
            
            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@CmEmailID", EM.Bulkempideaid);
            Da.parameters.Add(OP000);
            SqlParameter OP = new SqlParameter("@Bulkempideaid", EM.Bulkempideaid);
            Da.parameters.Add(OP);
            SqlParameter OP0 = new SqlParameter("@Bulkempid", EM.Bulkempid);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@Bulkempdep", EM.Bulkempdep);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@Bulkempdate", EM.Bulkempdate);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Bulkempamt", EM.Bulkempamt);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@sendid", EM.EmployeeId);
            Da.parameters.Add(OP4);

            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("[BenBulkProcessEmp]");


        }
        public void BulkProcessImp(Employee EM)
        {
            
            DataTO Da = new DataTO();
            SqlParameter OP000 = new SqlParameter("@CmEmailID", EM.Bulkimpideaid);
            Da.parameters.Add(OP000);
            SqlParameter OP = new SqlParameter("@Bulkimpideaid", EM.Bulkimpideaid);
            Da.parameters.Add(OP);
            SqlParameter OP0 = new SqlParameter("@Bulkimpid", EM.Bulkimpid);
            Da.parameters.Add(OP0);
            SqlParameter OP1 = new SqlParameter("@Bulkimpdep", EM.Bulkimpdep);
            Da.parameters.Add(OP1);
            SqlParameter OP2 = new SqlParameter("@Bulkimpdate", EM.Bulkimpdate);
            Da.parameters.Add(OP2);
            SqlParameter OP3 = new SqlParameter("@Bulkimpbengrade", EM.Bulkimpbengrade);
            Da.parameters.Add(OP3);
            SqlParameter OP4 = new SqlParameter("@Bulkimpamt", EM.Bulkimpamt);
            Da.parameters.Add(OP4);
            SqlParameter OP5 = new SqlParameter("@sendid", EM.EmployeeId);
            Da.parameters.Add(OP5);

            foreach (SqlParameter p in Da.parameters)
            {
                p.Direction = ParameterDirection.Input;
            }

            Da.ExecuteNonQuery("[BenBulkProcessImp]");


        }
        public DataSet GetExcelBar(string type)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@type", type);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("BarchartGetExcel");
            return Ds;

        }
        public DataSet GetExcelYearBar(string year)
        {
            DataTO Da = new DataTO();
            DataSet Ds = new DataSet();
            SqlParameter OP1 = new SqlParameter("@year", year);
            Da.parameters.Add(OP1);
            Ds = Da.ExecuteDataset("YearWiseChartGetExcelDownload");
            return Ds;

        }

    }
    public class GraphItems
    {
       
        private int com;
        public int Com
        {
            get { return com; }
            set { com = value; }
        }

        private int hod;
        public int Hod
        {
            get { return hod; }
            set { hod = value; }
        }
        private int imp;
        public int Imp
        {
            get { return imp; }
            set { imp = value; }
        }

        private int hos;
        public int Hos
        {
            get { return hos; }
            set { hos = value; }
        }

        private int ben;
        public int Ben
        {
            get { return ben; }
            set { ben = value; }
        }
        private int fin;
        public int Fin
        {
            get { return fin; }
            set { fin = value; }
        }
    }

    }