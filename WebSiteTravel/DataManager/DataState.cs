using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using ProjectEntities;
namespace DataManager
{
     public class DataState
    {
         public bool AddStates(ClsState objstate, string dbConnectionString)
       {
           SqlCommand cmd = new SqlCommand();
           cmd.CommandText = "sp_tblState";
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Connection = new SqlConnection(dbConnectionString);

           cmd.Parameters.AddWithValue("@StateName", objstate.statename);
           cmd.Parameters.AddWithValue("@CountryId", objstate.countryid);

           cmd.Connection.Open();

           if (cmd.Connection.State == ConnectionState.Open)
           {
               if (cmd.ExecuteNonQuery() > 0)
                   return true;
           }

           return false;
       }

       public DataSet AllStates(string SqlDbConnectionString)
       {
           DataSet ds = new DataSet();

           SqlDataAdapter da = new SqlDataAdapter("select * from tblState", SqlDbConnectionString);
           da.Fill(ds);

           return ds;
       }

    }
}
