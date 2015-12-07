using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ProjectEntities;
using System.Data;
using System.Data.SqlClient;

/*create proc sp_tblFlightBooking
(
@PNRStatusId int,
@CustomerId int,
@FlightSeatsId int,
@FlightFareId int,
@FlightRouteId int,
@DateOfBooking datetime*/
namespace DataManager
{
   public class DataFlightBooking
    {
       public bool AddFlights(ClsFlightBooking objflightbooking, string connection)
       {
           SqlCommand sc = new SqlCommand();
           sc.CommandText = "sp_tblFlightBooking";
           sc.CommandType = CommandType.StoredProcedure;
           sc.Connection = new SqlConnection(connection);

           sc.Connection.Open();

           if (sc.Connection.State == ConnectionState.Open)
           {
               if (sc.ExecuteNonQuery() > 0)
               {
                   return true;
               }
           }
           return false;
       }
       
       
    }
}
