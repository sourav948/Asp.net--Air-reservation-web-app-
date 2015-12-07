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

public partial class FrmPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Hashtable ht = new Hashtable();

            DDCard.Items.Add("Credit");
            DDCard.Items.Add("Debit");
            DDCard.Items.Add("Master");

            if (Session["BookingDetails"] != null)
            {
                ht = (Hashtable)Session["BookingDetails"];

                LblTotalSeats.Text = ht["Requiredseats"].ToString();
                LblSource.Text = ht["source"].ToString();
                LblDestinaion.Text = ht["destination"].ToString();
                LblFlightDate.Text = ht["dof"].ToString();
                LblPayment.Text = ht["totalfare"].ToString();

                ArrayList a = new ArrayList();

                a = (ArrayList)ht["totalSeats"];

                string seats = "";
                foreach (string s in a)
                    seats += s + ",";

                LblSeats.Text = seats.Substring(0, seats.Length - 1);

            }
        }
    }

    /*sp_FlightBookingForCustomers
    (@PNRStatusId int,@CustomerId int,@Source varchar(20),@Destination varchar(20),@SeatNo int,@CustomerStatusId int,@FlightClassStatusId int,
    @DateOfBooking datetime,@flightid int)*/
    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    int getLastPnrId()
    {
        SqlCommand comm = new SqlCommand();
        int pnr = 0;

        comm.CommandText = "select isnull(max(pnrid),9000) from tblflightBooking";
        comm.Connection = new SqlConnection(connection);

        comm.Connection.Open();

        if (comm.Connection.State == ConnectionState.Open)
        {
            pnr = Convert.ToInt32(comm.ExecuteScalar());
           
        }
            

        


        return pnr;
    }

    void flightbooking()
    {
         Hashtable ht = new Hashtable();
        Dictionary<int,string> d1=new Dictionary<int,string>();

        if (Session["BookingDetails"] != null)
        {
          ht = (Hashtable)Session["BookingDetails"];
          d1=(Dictionary<int,string>)Session["CustomerDetails"];


            //===============================================================================

                ht = (Hashtable)Session["BookingDetails"];

                ArrayList a = new ArrayList();

                a = (ArrayList)ht["totalSeats"];

                

            //================================================================================
        
            SqlCommand sc;
            int ctr=0;

            int CustomerStatusId=0;
                                   
            //50,53,54
                    
                int totalChild =  Convert.ToInt16 ( d1[50]);
                int totalAdults =  Convert.ToInt16 ( d1[53]);
                int totalSr =  Convert.ToInt16 ( d1[54]);

                    int seatno = 0;

                    
                    int pnrId = getLastPnrId();
            //============================for child===================================================================================
                    ctr = 0;

                    while (ctr<totalChild)
                    {
                        sc=new SqlCommand();

                        sc.CommandText="sp_FlightBookingForCustomers";
                        sc.CommandType=CommandType.StoredProcedure;
                        sc.Connection=new SqlConnection(connection);

                        sc.Connection.Open();

                        sc.Parameters.AddWithValue("@PNRId", pnrId);

                        sc.Parameters.AddWithValue("@CustomerId",Convert.ToInt16( Session["CustomerId"]));

                        sc.Parameters.AddWithValue("@Source",LblSource.Text);
                        sc.Parameters.AddWithValue("@Destination",LblDestinaion.Text);
                        sc.Parameters.AddWithValue("@SeatNo",Convert.ToInt16 ( a[seatno]));
                        sc.Parameters.AddWithValue("@CustomerStatusId",50);
                        sc.Parameters.AddWithValue("@FlightClassStatusId",Convert.ToInt16( ht["FlightClassStatusId"]));
                        sc.Parameters.AddWithValue("@DateOfBooking",ht["dof"].ToString());
                        sc.Parameters.AddWithValue("@flightid",Convert.ToInt16(ht["Flightid"]));

                         if(sc.Connection.State==ConnectionState.Open)
                         {
                             sc.ExecuteNonQuery();
                             
                         }

                         sc.Parameters.Clear();
                         sc.Connection.Close();
                         seatno++;

                         ctr++;
                    }
                    //============================================for adults===================================================================

            

            ctr = 0;

            while (ctr < totalAdults)
            {
                sc = new SqlCommand();

                sc.CommandText = "sp_FlightBookingForCustomers";
                sc.CommandType = CommandType.StoredProcedure;
                sc.Connection = new SqlConnection(connection);

                sc.Connection.Open();

                sc.Parameters.AddWithValue("@PNRId", pnrId);

                sc.Parameters.AddWithValue("@CustomerId", Convert.ToInt16(Session["CustomerId"]));

                sc.Parameters.AddWithValue("@Source", LblSource.Text);
                sc.Parameters.AddWithValue("@Destination", LblDestinaion.Text);
                sc.Parameters.AddWithValue("@SeatNo", Convert.ToInt16(a[seatno]));
                sc.Parameters.AddWithValue("@CustomerStatusId", 53);
                sc.Parameters.AddWithValue("@FlightClassStatusId", Convert.ToInt16(ht["FlightClassStatusId"]));
                sc.Parameters.AddWithValue("@DateOfBooking", ht["dof"].ToString());
                sc.Parameters.AddWithValue("@flightid", Convert.ToInt16(ht["Flightid"]));

                if (sc.Connection.State == ConnectionState.Open)
                {
                    sc.ExecuteNonQuery();

                }

                sc.Parameters.Clear();
                sc.Connection.Close();
                seatno++;

                ctr++;
            }

//==========================================================================for senior============================

            ctr = 0;

            while (ctr < totalSr)
            {
                sc = new SqlCommand();

                sc.CommandText = "sp_FlightBookingForCustomers";
                sc.CommandType = CommandType.StoredProcedure;
                sc.Connection = new SqlConnection(connection);

                sc.Connection.Open();

                sc.Parameters.AddWithValue("@PNRId", pnrId);

                sc.Parameters.AddWithValue("@CustomerId", Convert.ToInt16(Session["CustomerId"]));

                sc.Parameters.AddWithValue("@Source", LblSource.Text);
                sc.Parameters.AddWithValue("@Destination", LblDestinaion.Text);
                sc.Parameters.AddWithValue("@SeatNo", Convert.ToInt16(a[seatno]));
                sc.Parameters.AddWithValue("@CustomerStatusId", 54);
                sc.Parameters.AddWithValue("@FlightClassStatusId", Convert.ToInt16(ht["FlightClassStatusId"]));
                sc.Parameters.AddWithValue("@DateOfBooking", ht["dof"].ToString());
                sc.Parameters.AddWithValue("@flightid", Convert.ToInt16(ht["Flightid"]));

                if (sc.Connection.State == ConnectionState.Open)
                {
                    sc.ExecuteNonQuery();

                }

                sc.Parameters.Clear();
                sc.Connection.Close();
                seatno++;

                ctr++;
            }
        

        }
    }









        /*@CustomerId int,
    @creditcardtype varchar(50),
    @creditcardno int,
    @cardsecuritycode int,
    @expirydate datetime,
    @amount int*/

    
    protected void Button1_Click(object sender, EventArgs e)
    {

        flightbooking();
        
        SqlCommand sc = new SqlCommand();
        SqlParameter param1=new SqlParameter();


       
        
        sc.CommandText = "sp_tblPayment";
        sc.CommandType = CommandType.StoredProcedure;
        sc.Connection = new SqlConnection(connection);

        sc.Connection.Open();

        sc.Parameters.AddWithValue("@CustomerId", Convert.ToInt16( Session["CustomerId"]));
        
        sc.Parameters.AddWithValue("@creditcardtype", DDCard.SelectedItem.Text );
        
        sc.Parameters.AddWithValue("@creditcardno",Convert.ToInt16 ( TxtCCardNo.Text));
        sc.Parameters.AddWithValue("@cardsecuritycode",TxtCSecurityCode.Text);
        sc.Parameters.AddWithValue("@expirydate",TxtCExpiryDate.Text);
        sc.Parameters.AddWithValue("@amount",LblPayment.Text);

        param1.ParameterName = "@pnrid";
        param1.SqlDbType=SqlDbType.Int;
        param1.Direction=ParameterDirection.ReturnValue;
        sc.Parameters.Add(param1);

        if (sc.Connection.State == ConnectionState.Open)
        {
            if (sc.ExecuteNonQuery() > 0)
            {
                LblPNR.Text = param1.Value.ToString();
                LblConfirm.Text = "Seats Confirmed";
                Lblvisit.Text = "Thank You Visit Again";
            }
        }
    }
}