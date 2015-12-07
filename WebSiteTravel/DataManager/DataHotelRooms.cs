using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using ProjectEntities;
using DataManager;



namespace DataManager
{
    public class DataHotelRooms
    {
                public bool AddNewHotelRooms(ClsHotelRoom objClsHotelRoom, string SqlDbConnectionString)
        {
            SqlCommand comm = new SqlCommand();

            try
            {
                comm.CommandText = "sp_tblHotelRooms";
                comm.CommandType = CommandType.StoredProcedure;
                comm.Connection = new SqlConnection(SqlDbConnectionString);

                comm.Parameters.AddWithValue("@HotelId", objClsHotelRoom.HotelId);
                comm.Parameters.AddWithValue("@RoomCatId", objClsHotelRoom.RoomCatId);
                comm.Parameters.AddWithValue("@TotalRooms", objClsHotelRoom.RoomNO);
                
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

    

