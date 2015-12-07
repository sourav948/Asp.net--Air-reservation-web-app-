using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ProjectEntities;
using System.Data;
using System.Data.SqlClient;
namespace DataManager
{
   public class DataCustomerStatus
    {

       public bool AddCustomerStatus(ClsCustomerStatus objstatus, string SqlDbConnectionString)
       {
           SqlCommand sc = new SqlCommand();
           SqlParameter param1 = new SqlParameter();
           try
           {
               sc.CommandText = "sp_tblCustomerStatus";
               sc.CommandType = CommandType.StoredProcedure;
               sc.Connection = new SqlConnection(SqlDbConnectionString);

               sc.Parameters.AddWithValue("@CustomerStatusName",objstatus.CusStatusName);


               param1.ParameterName = "@CustomerStatusId";
               param1.Direction = ParameterDirection.ReturnValue;
               param1.SqlDbType = SqlDbType.Int;
               param1.SourceColumn = "CustomerStatusId";
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

       public DataSet AllCustomer(string SqlDbConnectionString)
       {
           DataSet ds = new DataSet();
           SqlDataAdapter da = new SqlDataAdapter("select * from tblCustomerStatus", SqlDbConnectionString);
           da.Fill(ds);
           return ds;
       }
       
    }
}
