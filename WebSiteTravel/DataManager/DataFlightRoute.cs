using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ProjectEntities;
using System.Data;
using System.Data.SqlClient;

namespace DataManager
{
    public class DataFlightRoute
    {
        public bool AddFlightRoutes(ClsFlightRoute objFlightRoute, string SqlDbConnectionString)
        {

            SqlParameter param1 = new SqlParameter();
            SqlCommand sc = new SqlCommand();
            sc.CommandText = "sp_tblFlightRoutes";
            sc.CommandType = CommandType.StoredProcedure;
            sc.Connection = new SqlConnection(SqlDbConnectionString);

            sc.Connection.Open();

            sc.Parameters.AddWithValue("@DepartureTime", objFlightRoute.DepartureTime);
            sc.Parameters.AddWithValue("@ArrivalTime", objFlightRoute.ArrivalTime);
            sc.Parameters.AddWithValue("@FlightDays", objFlightRoute.FlightDays);
            sc.Parameters.AddWithValue("@FlightId", objFlightRoute.FlightId);
            sc.Parameters.AddWithValue("@source", objFlightRoute.Source);
            sc.Parameters.AddWithValue("@destination", objFlightRoute.Destination);

           // param1.ParameterName = "@FlightRouteId";
           //param1.SqlDbType = SqlDbType.Int;
           //param1.Direction = ParameterDirection.ReturnValue;
           // param1.SourceColumn = "FlightRouteId";

           // sc.Parameters.Add(param1);

            if (sc.Connection.State == ConnectionState.Open)
            {
                if (sc.ExecuteNonQuery() > 0)
                {

                    return true;
                }
            }
            return false;
        }
        public DataSet AllFlightRoute(string SqlDbConnectionString)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from tblFlightRoutes", SqlDbConnectionString);
            da.Fill(ds);
            return ds;
        }
    }
}
