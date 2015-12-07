using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;

public partial class User_FrmHotelPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Hashtable ht=new Hashtable();
        ArrayList a1 = new ArrayList();
        if (!IsPostBack)
        {
            if (Session["HotelBookingDetails"] != null)
            {
                ht = (Hashtable)Session["HotelBookingDetails"];
                lblHotelName.Text = ht["HotelName"].ToString();
                lblRoomCat.Text = ht["RoomCatName"].ToString();
                lblCid.Text = ht["Cid"].ToString();
                lblCod.Text = ht["Cod"].ToString();

                a1 = (ArrayList)ht["RoomNo"];
                string room = "";
                foreach (string i in a1)
                    room += i + ",";
                lblRoomNo.Text = room.Substring(0, room.Length - 1);

                lblPayDue.Text = Session["Fare"].ToString();
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand sc = new SqlCommand();
        SqlParameter param1 = new SqlParameter();
        int paymentid = 0;
        string con = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        Hashtable ht=new Hashtable();
        ArrayList a1=new ArrayList();
        
            sc.CommandText = "sp_tblPaymentHotel";
            sc.CommandType = CommandType.StoredProcedure;
            sc.Connection = new SqlConnection(con);

            sc.Connection.Open();

            sc.Parameters.AddWithValue("@CustomerId", Convert.ToInt16(Session["CustomerId"]));
            sc.Parameters.AddWithValue("@creditcardtype", DDCardType.SelectedItem.Text);
            sc.Parameters.AddWithValue("@creditcardno", Convert.ToInt16(txtCardNo.Text));
            sc.Parameters.AddWithValue("@cardsecuritycode", Convert.ToInt16(txtCardSecurityno.Text));
            sc.Parameters.AddWithValue("@expirydate", Convert.ToDateTime(txtCardExpiryDate.Text));
            sc.Parameters.AddWithValue("@amount", Convert.ToInt16(Session["Fare"]));

            param1.ParameterName = "@paymentId";
            param1.SqlDbType = SqlDbType.Int;
            param1.SourceColumn = "paymentId";
            param1.Direction = ParameterDirection.ReturnValue;

            sc.Parameters.Add(param1);

               

            if (sc.Connection.State == ConnectionState.Open)
            {
                if (sc.ExecuteNonQuery() > 0)
                {
                    lblConfirmed.Text = "payment done";
                    paymentid = Convert.ToInt16(sc.Parameters["@paymentId"].Value);
                }
            }
            lblPayment.Text = paymentid.ToString();
            sc.Parameters.Clear();
            sc.Connection.Close();

            if (Session["HotelBookingDetails"] != null)
            {
                ht = (Hashtable)Session["HotelBookingDetails"];

                SqlCommand sc1 = new SqlCommand();
                a1 = (ArrayList)ht["RoomNo"];
                string room = "";
                foreach (string i in a1)
                {
                    room = i;

                    sc1.CommandText = "sp_tblHotelBooking";
                    sc1.CommandType = CommandType.StoredProcedure;
                    sc1.Connection = new SqlConnection(con);
                    sc1.Connection.Open();

                    sc1.Parameters.AddWithValue("@CustomerId", Convert.ToInt16(Session["CustomerId"]));
                    sc1.Parameters.AddWithValue("@HotelId", Convert.ToInt16(ht["HotelId"]));
                    sc1.Parameters.AddWithValue("@RoomCatid", Convert.ToInt16(ht["RoomCatId"]));
                    sc1.Parameters.AddWithValue("@DateOfBooking", DateTime.Now.ToShortDateString());
                    sc1.Parameters.AddWithValue("@CheckIn", ht["Cid"].ToString());
                    sc1.Parameters.AddWithValue("@CheckOut", ht["Cod"].ToString());
                    sc1.Parameters.AddWithValue("@RoomNo", Convert.ToInt16(room));
                    sc1.Parameters.AddWithValue("@paymentId",paymentid);



                    if (sc1.Connection.State == ConnectionState.Open)
                    {
                        if (sc1.ExecuteNonQuery() > 0)
                        {
                           // lblConfirmed.Text += "Room Booked";
                        }
                    }

                    sc1.Parameters.Clear();
                    sc1.Connection.Close();
                }
            }
        }
       
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\HomePage.aspx");
    }
}