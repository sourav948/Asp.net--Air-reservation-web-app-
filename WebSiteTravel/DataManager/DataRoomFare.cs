using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ProjectEntities;
using DataManager;
using System.Data;
using System.Data.SqlClient;

//sp_tblRoomFare(@HotelId int,@RoomCatId int,@RoomFare int)
namespace DataManager
{
    public class DataRoomFare
    {
        public bool AddNewRoomFare(ClsRoomFare objClsRoomFare, string SqlDbConnectionString)
        {
            SqlCommand comm = new SqlCommand();

            try
            {
                comm.CommandText = "sp_tblRoomFare";
                comm.CommandType = CommandType.StoredProcedure;
                comm.Connection = new SqlConnection(SqlDbConnectionString);

                comm.Parameters.AddWithValue("@HotelId", objClsRoomFare.HotelId);
                comm.Parameters.AddWithValue("@RoomCatId", objClsRoomFare.RoomCatId);
                comm.Parameters.AddWithValue("@RoomFare", objClsRoomFare.RoomFare);
                
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

        
        public DataSet showAllRoomFare(string SqlDbConnectionString)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from tblRoomFare", SqlDbConnectionString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
         
                
                
                
    }
}
