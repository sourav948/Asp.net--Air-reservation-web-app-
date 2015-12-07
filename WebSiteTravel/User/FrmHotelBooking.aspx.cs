using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_FrmPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Hashtable ht = new Hashtable();
        Dictionary<string, string> d1 = new Dictionary<string, string>();
        if (!IsPostBack)
        {
            if (Session["BookingDetails"] != null)
            {
                ht = (Hashtable)Session["BookingDetails"];
                lblHotelName.Text = ht["HotelName"].ToString();
                //lblRoomCat.Text = ht["RoomCatName"].ToString();
                lblAllotRoom.Text = ht["Room No"].ToString();
                lblTotalRooms.Text = ht["TotalRooms"].ToString();
                lblCinDate.Text = ht["Cid"].ToString();
                lblCoutDate.Text = ht["Cod"].ToString();
                lblTotalRooms.Text = ht["TotalRooms"].ToString();
                
            }
            if (Session["RoomCat"] != null)
            {
                d1 = (Dictionary<string, string>)Session["RoomCat"];
                lblRoomCat.Text = d1["RoomCatName"].ToString();

            }
       //  *****************************************************************************************************************************
            //SqlCommand sc = new SqlCommand();
            //string con = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            //sc.CommandText = "sp_tblHotelBooking";
            //sc.CommandType = CommandType.StoredProcedure;
            //sc.Connection = new SqlConnection(con);
            //sc.Connection.Open();

            //sc.Parameters.AddWithValue("@CustomerId",);
            //sc.Parameters.AddWithValue("@HotelId",);
            //sc.Parameters.AddWithValue("@RoomCatid",);
            //sc.Parameters.AddWithValue("@DateOfBooking",DateTime.Now.ToShortDateString());
            //sc.Parameters.AddWithValue("@CheckIn",);
            //sc.Parameters.AddWithValue("@CheckOut",);
            //sc.Parameters.AddWithValue("@RoomNo",);



            //if(sc.Connection.State==ConnectionState.Open)
            //    sc.ExecuteNonQuery();
         //*******************************************************************   
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\login.aspx");
    }
}