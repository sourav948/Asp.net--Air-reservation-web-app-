using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_FrmRoomImages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlCommand sc=new SqlCommand();
    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Button3_Click(object sender, EventArgs e)
    {
        int tc = Request.Files.Count;

        string filepath = Server.MapPath("~");

        HttpPostedFile obj;
        for (int i = 1; i < tc; i++)
        {
            sc = new SqlCommand();
            obj = Request.Files[i];
            if (obj.FileName != null)
            {
                obj.SaveAs(filepath + "\\" + obj.FileName);

                sc.CommandText = "sp_tblHotelRoomPic";
                sc.CommandType = CommandType.StoredProcedure;
                sc.Connection = new SqlConnection(connection);

                 sc.Connection.Open();
                 sc.Parameters.AddWithValue("@HotelId",Convert.ToInt16(Request.QueryString["hotelid"]));
                  sc.Parameters.AddWithValue("@Roompic",obj.FileName);


        if(sc.Connection.State==ConnectionState.Open)
        {
            sc.ExecuteNonQuery();
            LblroomImages.Text = "Rooms Added";
                
            
        }
       }
            sc.Parameters.Clear();
            sc.Connection.Close();
        }
                
    }
}