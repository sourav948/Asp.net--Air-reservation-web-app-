using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ProjectEntities;
using System.Data;
using System.Data.SqlClient;

namespace DataManager
{
   public  class DataFlight
    {
       public bool AddFlight(ClsFlight objflight, string SqlDbConnectionString)
       {
           SqlParameter param1 = new SqlParameter();
           SqlCommand cs = new SqlCommand();
           cs.CommandText = "sp_tblFlights";
           cs.CommandType = CommandType.StoredProcedure;
           cs.Connection = new SqlConnection(SqlDbConnectionString);
           cs.Parameters.AddWithValue("@FlightName", objflight.FlgtName);
           cs.Parameters.AddWithValue("@CompanyId", objflight.CompId);
           cs.Parameters.AddWithValue("@FlightStatusId", objflight.FlgtStatusId);

           param1.ParameterName = "@FlightId";
           param1.SqlDbType = SqlDbType.Int;
           param1.SourceColumn = "FlightId";
           param1.Direction = ParameterDirection.ReturnValue;
           cs.Parameters.Add(param1);
           cs.Connection.Open();
           if (cs.Connection.State == ConnectionState.Open)
           {
               if (cs.ExecuteNonQuery() > 0)
                   return true;
           }

           return false;
       }

       public DataSet showAllFlights(string SqlDbConnectionString)
       {
           DataSet ds = new DataSet();
           SqlDataAdapter da = new SqlDataAdapter("select * from tblFlights", SqlDbConnectionString);
           da.Fill(ds);
           return ds;
       }
    }
}
