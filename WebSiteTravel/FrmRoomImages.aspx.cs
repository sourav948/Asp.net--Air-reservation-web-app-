using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
public partial class FrmRoomImages : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Status"] != "Home")
            Response.Redirect("HomePage.aspx");
        else
        {
            if (!IsPostBack)
            {
                int hotelid = Convert.ToInt16(Request.QueryString["hotelId"]);
                string query = "select * from tblHotelRoomPic where HotelId=" + hotelid;
                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataSet ds = new DataSet();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();

                HotelFareDetails(hotelid);
            }
        }
    }

    void HotelFareDetails(int hotelid)
    {
        Hashtable ht=new Hashtable();

        if (Session["HotelBookingDetails"] != null)
        {
            ht = (Hashtable)Session["HotelBookingDetails"];
            lblDays.Text = ht["Days"].ToString();
            SqlCommand sc = new SqlCommand();
            sc.CommandText = "sp_hotelRoomFareDetails";
            sc.CommandType = CommandType.StoredProcedure;
            sc.Connection = new SqlConnection(con);

            sc.Connection.Open();

            sc.Parameters.AddWithValue("@HotelId", Convert.ToInt16(Request.QueryString["hotelId"]));

            
            if (sc.Connection.State == ConnectionState.Open)
            {
                SqlDataReader dr = sc.ExecuteReader();
                if (dr.HasRows)
                {
                    LblAC.Text = "";
                    lblNAC.Text = "";
                    lblfare.Text = "";

                    dr.Read();


                    if ((dr["RoomCatName"].ToString()) == "A.C")
         
                        LblAC.Text = dr["RoomFare"].ToString();
                     

                    dr.Read();
                    if ((dr["RoomCatName"].ToString()) == "Non A.C")
                    
                        lblNAC.Text = dr["RoomFare"].ToString();
                    
           
                     ht.Add("HotelName", dr["HotelName"].ToString());
                     ht.Add("HotelId", Request.QueryString["hotelId"]);
                     
                }

            }

            Session["HotelBookingDetails"] = ht;
            sc.Parameters.Clear();
            sc.Connection.Close();
        }
    }
    ArrayList a1 = new ArrayList();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RBac.Checked || RBNac.Checked)
        {
            Hashtable ht = new Hashtable();

            if (Session["HotelBookingDetails"] != null)
            {
                ht = (Hashtable)Session["HotelBookingDetails"];


                if (RBac.Checked)
                {
                    ht["RoomCatName"] = "A.C";
                    ht["RoomCatId"] = 3;
                }
                else if (RBNac.Checked)
                {
                    ht["RoomCatName"] = "Non A.C";
                    ht["RoomCatId"] = 4;
                }

                SqlCommand sc = new SqlCommand();
                sc.CommandText = "getAvailableRoomsinHotels";
                sc.CommandType = CommandType.StoredProcedure;
                sc.Connection = new SqlConnection(con);

                sc.Connection.Open();

                sc.Parameters.AddWithValue("@HotelName", ht["HotelName"].ToString());
                sc.Parameters.AddWithValue("@RoomCatName", ht["RoomCatName"].ToString());
                sc.Parameters.AddWithValue("@DateOfBooking", DateTime.Now.ToShortDateString());


                if (sc.Connection.State == ConnectionState.Open)
                {



                    SqlDataReader dr = sc.ExecuteReader();
                    if (dr.HasRows)
                    {


                        int rooms = Convert.ToInt16(txtSeats.Text);
                        dr.Read();
                        int ctr = 1;

                        while (ctr <= rooms)
                        {
                            dr.Read();
                            a1.Add(dr["RoomNo"].ToString());
                            ctr++;
                        }
                        a1.TrimToSize();
                        ht.Add("RoomNo", a1);
                    }
                    sc.Parameters.Clear();
                    sc.Connection.Close();


                }
            }

            ht.Add("TotalRooms", txtSeats.Text);
            Session["HotelBookingDetails"] = ht;


            Response.Redirect("FrmHotelBooking.aspx");
        }
        else
            lblfare.Text = "Select any option";
    }
    protected void RBac_CheckedChanged(object sender, EventArgs e)
    {
        int totalFare = 0;
        if (RBac.Checked)
        {
            lblfare.Text = "";

            totalFare = (Convert.ToInt32(txtSeats.Text)) * (Convert.ToInt32(LblAC.Text)) *(Convert.ToInt32(lblDays.Text));
            lblfare.Text = totalFare.ToString();
            Session.Add("Fare", lblfare.Text);

        }


    }
    protected void RBNac_CheckedChanged(object sender, EventArgs e)
    {
        int totalFare = 0;
        if (RBNac.Checked)
        {
            lblfare.Text = "";

            totalFare = (Convert.ToInt32(txtSeats.Text)) * (Convert.ToInt32(lblNAC.Text))*(Convert.ToInt32(lblDays.Text));
            lblfare.Text = totalFare.ToString();
            Session.Add("Fare", lblfare.Text);
        }
    }
   

}