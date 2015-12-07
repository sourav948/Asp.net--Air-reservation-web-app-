using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class User_FrmHotelCancellation : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlCommand sc = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        sc.CommandText = "sp_showHotelBookingDetails";
        sc.CommandType = CommandType.StoredProcedure;
        sc.Connection = new SqlConnection(connection);
        sc.Connection.Open();

        sc.Parameters.AddWithValue("(@paymentId", txtPayment.Text);
        sc.Parameters.AddWithValue("@CustomerId", Session["CustomerId"].ToString());

        if (sc.Connection.State == ConnectionState.Open)
        {
            SqlDataReader dr = sc.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lblfirstname.Text = dr["FirstName"].ToString();
                    lblLname.Text = dr["LastName"].ToString();
                    lblHotelName.Text = dr["HotelName"].ToString();
                    lblCid.Text = dr["CheckIn"].ToString();
                    lblEmailid.Text = dr["EmailId"].ToString();
                    lblAddress.Text = dr["Address"].ToString();
                    lblRoomno.Text += dr["RoomNo"].ToString() + ",";
                }


            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sc.CommandText = "Sp_HotelCancellation";
        sc.CommandType = CommandType.StoredProcedure;
        sc.Connection = new SqlConnection(connection);

        sc.Parameters.AddWithValue("(@paymentId", txtPayment.Text);

        sc.Connection.Open();
        if (sc.Connection.State == ConnectionState.Open)
        {
            if (sc.ExecuteNonQuery() > 0)
                lblbookingCancel.Text = "Hotel Booking Cancel";
        }
    }
}