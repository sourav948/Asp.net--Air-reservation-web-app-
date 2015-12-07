using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ProjectEntities;
using System.Data;
using System.Data.SqlClient;


//(@FlightClassStatusId int,@CustomerStatusId int,@FareId int,@FlightId int

namespace DataManager
{
    public class DataFlightFare
    {
        public bool AddNewFlightFare(clsFlightFare objClsFlightFare,string dbconnection)
        {
            SqlCommand comm = new SqlCommand();

            try
            {
                comm.CommandText = "sp_tblFlightFare";
                comm.CommandType = CommandType.StoredProcedure;
                comm.Connection = new SqlConnection(dbconnection);

                comm.Parameters.AddWithValue("@FlightClassStatusId", objClsFlightFare.FlightClsStatusId);
                comm.Parameters.AddWithValue("@CustomerStatusId", objClsFlightFare.CustStatusId);
                comm.Parameters.AddWithValue("@FareId", objClsFlightFare.FareId);
                comm.Parameters.AddWithValue("@FlightId", objClsFlightFare.FlightId);


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

    }
}
