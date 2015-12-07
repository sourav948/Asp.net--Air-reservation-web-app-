using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using ProjectEntities;
using DataManager;

//create proc sp_tblHotels(@HotelName varchar(20),@Location varchar(20), @HotelURL varchar(20), @Features varchar(max),@HotelCatId int, @HotelContactNo varchar(100))

namespace DataManager
{
    public class DataHotels
    {
        public int AddNewHotels(ClsHotels objClsHotels, string SqlDbConnectionString)
        {
            SqlCommand comm = new SqlCommand();
            SqlParameter param1 = new SqlParameter();
            int hotelid = 0;
            try
            {
                comm.CommandText = "sp_tblHotels";
                comm.CommandType = CommandType.StoredProcedure;
                comm.Connection = new SqlConnection(SqlDbConnectionString);

                comm.Parameters.AddWithValue("@HotelName", objClsHotels.HotelName);
                comm.Parameters.AddWithValue("@Location", objClsHotels.Location);
                comm.Parameters.AddWithValue("@HotelURL", objClsHotels.HotelUrl);
                comm.Parameters.AddWithValue("@Features", objClsHotels.HotelFeatures);
                comm.Parameters.AddWithValue("@HotelCatId", objClsHotels.HotelCatId);
                comm.Parameters.AddWithValue("@HotelContactNo", objClsHotels.HotelContactNo);
                comm.Parameters.AddWithValue("@HotelPic", objClsHotels.HotelPic);
                comm.Parameters.AddWithValue("@CityId", objClsHotels.CityId);

                param1.ParameterName = "@HotelId";
                param1.SqlDbType = SqlDbType.Int;
                param1.Direction = ParameterDirection.ReturnValue;
                param1.SourceColumn = "HotelId";

                comm.Parameters.Add(param1);

                comm.Connection.Open();

                if (comm.Connection.State == ConnectionState.Open)
                {
                    if (comm.ExecuteNonQuery() > 0)
                    {
                        hotelid = Convert.ToInt16(comm.Parameters["@hotelid"].Value);

                        return hotelid;
                       
                    }
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

            return 0;
        }

        
        public DataSet showAllHotels(string SqlDbConnectionString)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from tblHotels", SqlDbConnectionString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
         
                
                
                
    }
}


