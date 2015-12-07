using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using ProjectEntities;

namespace DataManager
{
    public class DataCustomer
    {
          public bool AddNewCustomer(ClsCustomer objClsCustomer, string SqlDbConnectionString)
          {
            SqlCommand comm = new SqlCommand();

            try
            {
                comm.CommandText = "sp_tblCustomers";
                comm.CommandType = CommandType.StoredProcedure;
                comm.Connection = new SqlConnection(SqlDbConnectionString);

                comm.Parameters.AddWithValue("@FirstName", objClsCustomer.FirstName);
                comm.Parameters.AddWithValue("@LastName", objClsCustomer.LastName);
                comm.Parameters.AddWithValue("@EmailId", objClsCustomer.EmailId);
                comm.Parameters.AddWithValue("@Password", objClsCustomer.Password);
                comm.Parameters.AddWithValue("@Age", objClsCustomer.Age);
                comm.Parameters.AddWithValue("@Address", objClsCustomer.Address);
                comm.Parameters.AddWithValue("@CountryId", objClsCustomer.CountryId);
                comm.Parameters.AddWithValue("@StateId", objClsCustomer.StateId);
                comm.Parameters.AddWithValue("@City", objClsCustomer.City);
                comm.Parameters.AddWithValue("@PinCode", objClsCustomer.PinCode);
                comm.Parameters.AddWithValue("@MobileNo", objClsCustomer.MobileNo);
                comm.Parameters.AddWithValue("@Gender", objClsCustomer.Gender);
                comm.Parameters.AddWithValue("@securityques", objClsCustomer.SecurityQuestions);
                comm.Parameters.AddWithValue("@answer", objClsCustomer.Answer);
                comm.Parameters.AddWithValue("@Role", objClsCustomer.Role);
  
                comm.Connection.Open();

                if (comm.Connection.State == ConnectionState.Open)
                {
                    if (comm.ExecuteNonQuery() > 0)
                        return true;
                }

             }
            catch (Exception ex)
            {

                throw;
            }

            finally
            {
                comm.Connection.Close();
                comm.Parameters.Clear();
            }

            return false;
        }

           public DataSet AllCustomer(string SqlDbConnectionString)
           {
             DataSet ds = new DataSet();

            SqlDataAdapter da = new SqlDataAdapter("select * from tblCustomers", SqlDbConnectionString);

            da.Fill(ds);

            return ds;

           }


    }
}
