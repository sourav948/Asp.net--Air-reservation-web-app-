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

public partial class User_FrmFlightCancellation : System.Web.UI.Page
{
    Hashtable ht = new Hashtable();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }
    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlCommand sc = new SqlCommand();

    protected void Button1_Click(object sender, EventArgs e)
    {
        sc.CommandText = "Sp_flightCancellation";
        sc.CommandType = CommandType.StoredProcedure;
        sc.Connection = new SqlConnection(connection);

        sc.Parameters.AddWithValue("@pnrid", TxtPNRId.Text);

        sc.Connection.Open();

        if (sc.Connection.State == ConnectionState.Open)
        {
            if (sc.ExecuteNonQuery() > 0)
                lblCancel.Text = "Booking Cancel";
        }

    }

    //  sp_flightbookingdetails(@CustomerId int,@PNRId int)
    //  FlightName,CustomerStatusName,FlightClassStatusName, DateOfBooking,SeatNo,tblFlightBooking.PNRStatusId,tblFlightBooking.CustomerId,tblFlightSeats.FlightSeatsId 
    

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        //Source,Destination, DateOfBooking,SeatNo,fare
        
        sc.CommandText = "show_bookedflightdetails";
        sc.CommandType = CommandType.StoredProcedure;
        sc.Connection = new SqlConnection(connection);

        sc.Parameters.AddWithValue("@CustomerId", Convert.ToInt16(Session["CustomerId"]));
        sc.Parameters.AddWithValue("@PNRId", Convert.ToInt32( TxtPNRId.Text));

        sc.Connection.Open();

        if (sc.Connection.State == ConnectionState.Open)
        {
            SqlDataReader dr = sc.ExecuteReader();

            if (dr.HasRows)
            {
                int fare = 0;

                while (dr.Read())
                {
                    lblDestination.Text = dr["Destination"].ToString();
                    lblFlightDate.Text = dr["DateOfBooking"].ToString();
                    lblSource.Text = dr["Source"].ToString();

                    fare += Convert.ToInt32(dr["fare"]);
                    
                    lblSeatNo.Text += dr["SeatNo"].ToString() + ",";
                }
                lblPayment.Text = fare.ToString();

            }
        }
        sc.Parameters.Clear();
        sc.Connection.Close();
        



        
    }
}