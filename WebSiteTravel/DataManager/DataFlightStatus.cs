using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ProjectEntities;
using System.Data;
using System.Data.SqlClient;

namespace DataManager
{
   public class DataFlightStatus
    {
       public bool AddFlightStatus(ClsFlightStatus objFlightStatus, string SqlDbConnectionString)
        {
            SqlCommand sc = new SqlCommand();
            sc.CommandText = "sp_tblFlightStatus";
            sc.CommandType = CommandType.StoredProcedure;
            sc.Connection = new SqlConnection(SqlDbConnectionString);

            sc.Connection.Open();

            sc.Parameters.AddWithValue("@FlightStatusName", objFlightStatus.FlightStatusName);

            if (sc.Connection.State == ConnectionState.Open)
            {
                if (sc.ExecuteNonQuery() > 0)
                    return true;
            }
            return false;
        }
       public DataSet AllFlightStatus(string SqlDbConnectionString)
       {
           DataSet ds = new DataSet();
           SqlDataAdapter da = new SqlDataAdapter("select * from tblFlightStatus", SqlDbConnectionString);
           da.Fill(ds);
           return ds;
       }
    }
}
