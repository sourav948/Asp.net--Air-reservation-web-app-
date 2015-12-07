using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ProjectEntities;
using System.Data;
using System.Data.SqlClient;

// InsertFlightSeats(@TotalSeats int,@FlightClassStatusId  int,@Source varchar(20),@destination varchar(20),@flightId int )


namespace DataManager
{
   public class DataFlightSeats
    {
        public bool AddNewFlightSeats(ClsFlightSeats objClsFlightSeats, string SqlDbConnectionString)
        {
            SqlCommand comm = new SqlCommand();

            try
            {
                comm.CommandText = "InsertFlightSeats";
                comm.CommandType = CommandType.StoredProcedure;
                comm.Connection = new SqlConnection(SqlDbConnectionString);

                comm.Parameters.AddWithValue("@TotalSeats", objClsFlightSeats.TotalSeats);
                comm.Parameters.AddWithValue("@FlightClassStatusId", objClsFlightSeats.FlightClassStatusId);
                comm.Parameters.AddWithValue("@Source", objClsFlightSeats.Source);
                comm.Parameters.AddWithValue("@Destination", objClsFlightSeats.Destination);
                comm.Parameters.AddWithValue("@flightId", objClsFlightSeats.FlightId);


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

        // sp_showFlightSeats(@Source varchar(20),@Destination varchar(20),@FlightId int,@FlightClassStatusId int)
        public DataSet showAllFlightSeats(string SqlDbConnectionString)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from tblFlightSeats", SqlDbConnectionString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
         
                
                
                
               

        }
    }
