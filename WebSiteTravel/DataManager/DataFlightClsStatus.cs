using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ProjectEntities;
using System.Data;
using System.Data.SqlClient;

namespace DataManager
{
   public class DataFlightClsStatus
    {
        public bool AddFlightClsStatus(ClsFlightClassStatus objFlightClassStatus,string SqlDbConnection)
        {
            SqlCommand sc = new SqlCommand();
            SqlParameter param1 = new SqlParameter();

            sc.CommandText = "sp_tblFlightClassStatus";
            sc.CommandType = CommandType.StoredProcedure;
            sc.Connection = new SqlConnection(SqlDbConnection);

            sc.Parameters.AddWithValue("@FlightClassStatusName", objFlightClassStatus.FlightClassStatusName);

            param1.ParameterName = "@FlightClassStatusId";
            param1.SqlDbType = SqlDbType.Int;
            param1.Direction = ParameterDirection.ReturnValue;
            param1.SourceColumn = "FlightStatusId";

            sc.Parameters.Add(param1);

            sc.Connection.Open();

            if (sc.Connection.State == ConnectionState.Open)
            {
                if (sc.ExecuteNonQuery() > 0)
                    return true;
            }
            return false;

        }
        public DataSet AllFlightStatus(string SqlDbConnection)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from tblFlightClassStatus", SqlDbConnection);
            da.Fill(ds);
            return ds;

        }
    }
}
