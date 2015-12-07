using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using ProjectEntities;

namespace DataManager
{
    public class DataFare
    {
        public bool AddNewFare(clsFare objClsFare, string SqlDbConnectionString)
        {
            SqlCommand comm = new SqlCommand();

            try
            {
                comm.CommandText = "sp_tblFare";
                comm.CommandType = CommandType.StoredProcedure;
                comm.Connection = new SqlConnection(SqlDbConnectionString);

                comm.Parameters.AddWithValue("@fare", objClsFare.Fare);

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

        public DataSet showAllFare(string SqlDbConnectionString)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from tblFare", SqlDbConnectionString);

            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public bool showfare(ClsFlight objclsFlight, string SqlDbConnectionString)
        {
             SqlCommand sc = new SqlCommand();
        sc.CommandText = "show_Fare";
        sc.CommandType = CommandType.StoredProcedure;
        sc.Connection = new SqlConnection(SqlDbConnectionString);

        sc.Connection.Open();

   
        sc.Parameters.AddWithValue("@FlightName",objclsFlight.FlgtName );
       // sc.Parameters.AddWithValue("@Destination", TextBox2.Text;
            SqlDataReader dr = sc.ExecuteReader();
            if (dr.HasRows)
            {
                return true;
             }
        
        return false;
        }

    }

}