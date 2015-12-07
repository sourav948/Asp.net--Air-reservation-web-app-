using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using ProjectEntities;
using DataManager;

//create proc sp_tblRoomCategory(@RoomCatName varchar(30))
namespace DataManager
{
   public class DataRoomCategory
    {
        public bool AddNewRoomCategory(ClsRoomCategory objClsRoomCategory, string SqlDbConnectionString)
        {
            SqlCommand comm = new SqlCommand();

            try
            {
                comm.CommandText = "sp_tblRoomCategory";
                comm.CommandType = CommandType.StoredProcedure;
                comm.Connection = new SqlConnection(SqlDbConnectionString);

                comm.Parameters.AddWithValue("@RoomCatName", objClsRoomCategory.RoomCatName);

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

        
        public DataSet showAllRoomCategory(string SqlDbConnectionString)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from tblRoomCategory", SqlDbConnectionString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
         
                
                
                
               

        }
    }


