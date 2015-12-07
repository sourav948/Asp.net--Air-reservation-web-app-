using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ProjectEntities;
using System.Data;
using System.Data.SqlClient;
namespace DataManager
{
   public class DataRoute
    {
       public bool Addroute(ClsRoute objroute,string SqlDbConnectionString)
       {
           SqlCommand sc = new SqlCommand();
           SqlParameter param1 = new SqlParameter();
           try
           {
               sc.CommandText = "sp_tblRoutes";
               sc.CommandType = CommandType.StoredProcedure;
               sc.Connection = new SqlConnection(SqlDbConnectionString);

               sc.Parameters.AddWithValue("@source", objroute.Source);
               sc.Parameters.AddWithValue("@Destination", objroute.destination);

               param1.ParameterName = "@RouteId";
               param1.Direction = ParameterDirection.ReturnValue;
               param1.SqlDbType = SqlDbType.Int;
               param1.SourceColumn = "RouteId";
               sc.Parameters.Add(param1);
          

               sc.Connection.Open();
               if (sc.Connection.State == ConnectionState.Open)
               {
                   if (sc.ExecuteNonQuery() > 0)
                       return true;
               }



           }
           catch (Exception ex)
           {

               throw;
           }

           finally
           {
               sc.Parameters.Clear();
               sc.Connection.Close();
           }

           return false;
       }

       public DataSet AllRoutes(string SqlDbConnectionString)
       {
           DataSet ds = new DataSet();
           SqlDataAdapter da = new SqlDataAdapter("select * from tblRoutes", SqlDbConnectionString);
           da.Fill(ds);

           return ds;
       }
    }
}
