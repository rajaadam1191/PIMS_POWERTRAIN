using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProclainPIMSMaster
{
    public class DataTO
    {
        private IDbCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        private int CmdTO = 30;

        #region Constructor

        public DataTO()
        {
            try
            {
                con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ProclaimPIMSDB"].ToString();
                cmd.Connection = con;
                cmd.CommandTimeout = CmdTO;
                cmd.CommandType = CommandType.StoredProcedure;
            }
            catch (Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }

        }

        #endregion


        #region Execute NonQuery Without Argument

        public void ExecuteNonQuery()
        {
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch
            {
                throw;
            }
        }
        #endregion

        #region Execute Query With Argument

        public void ExecuteNonQuery(String cmdText)
        {
            try
            {
                cmd.CommandText = cmdText;
                this.ExecuteNonQuery();
            }
            catch
            {
                throw;

            }

        }
        #endregion

        #region Execute Object Scalar Without Argument
        public object ExecuteScalar()
        {
            object obj = null;
            try
            {
                con.Open();
                obj = cmd.ExecuteScalar();
                con.Close();


            }
            catch
            {
                throw;
            }
            return obj;
        }

        #endregion

        #region Execute Object Scalar With Argument

        public object ExecuteScalar(String CmdText)
        {
            object obj = null;
            try
            {
                cmd.CommandText = CmdText;
                obj = this.ExecuteScalar();

            }
            catch
            {
                throw;
            }
            return obj;
        }
        #endregion

        #region Execute Dataset Without Argument

        public DataSet ExecuteDataset()
        {
            // con.Open();
            try
            {

                SqlDataAdapter adp = new SqlDataAdapter();
                DataSet ds = new DataSet();
                adp.SelectCommand = (SqlCommand)cmd;
                adp.Fill(ds);

                return ds;


            }
            catch
            {
                throw;
            }
            //con.Close();
        }
        #endregion

        #region Execute Dataset With Argument

        public DataSet ExecuteDataset(String CmdText)
        {
            try
            {
                //con.Open();
                DataSet ds = new DataSet();
                cmd.CommandText = CmdText;
                ds = this.ExecuteDataset();
                // con.Close();
                return ds;
            }
            catch(Exception ex)
            {
                throw new Exception("Error Initializing Data Class." + Environment.NewLine + ex.Message);
            }
            //con.Close();
        }
        #endregion

        #region Paramenter Passing

        public IDataParameterCollection parameters
        {
            get
            {
                return this.cmd.Parameters;
            }
        }
        #endregion
    }
}