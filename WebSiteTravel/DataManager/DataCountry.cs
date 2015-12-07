using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ProjectEntities;
using System.Data;
using System.Data.SqlClient;
namespace DataManager
{
   public class DataCountry
    {
       public bool AddCountry(ClsCountry objcountry, string dbConnectionString)
       {
           SqlCommand cmd = new SqlCommand();
           cmd.CommandText = "sp_tblCountry";
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Connection = new SqlConnection(dbConnectionString);

           cmd.Parameters.AddWithValue("@CountryName", objcountry.ContryName);

           cmd.Connection.Open();

           if (cmd.Connection.State == ConnectionState.Open)
           {
               if (cmd.ExecuteNonQuery() > 0)
                   return true;
           }

           return false;
       }

       public DataSet AllCountries(string SqlDbConnectionString)
       {
           DataSet ds = new DataSet();

           SqlDataAdapter da = new SqlDataAdapter("select * from tblCountry", SqlDbConnectionString);
           da.Fill(ds);

           return ds;
       }

    }
}
