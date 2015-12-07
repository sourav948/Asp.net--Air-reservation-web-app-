using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using ProjectEntities;
using DataManager;


// sp_tblHotelCategory(@HotelCatName varchar(30))
namespace DataManager
{
    public class DataHotelCategory
    {
               public bool AddNewHotelCategory(ClsHotelCatagory objClsHotelCategory, string SqlDbConnectionString)
        {
            SqlCommand comm = new SqlCommand();
            SqlParameter param1 = new SqlParameter();

            try
            {
                comm.CommandText = "sp_tblHotelCategory";
                comm.CommandType = CommandType.StoredProcedure;
                comm.Connection = new SqlConnection(SqlDbConnectionString);

                comm.Parameters.AddWithValue("@HotelCatName", objClsHotelCategory.HotelCatName);

                param1.ParameterName = "@HotelCatId";
                param1.SqlDbType = SqlDbType.Int;
                param1.Direction = ParameterDirection.ReturnValue;

                comm.Parameters.Add(param1);

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

        
        public DataSet showAllHotelCategory(string SqlDbConnectionString)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from tblHotelCategory", SqlDbConnectionString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
         
               
      }
 }

 
