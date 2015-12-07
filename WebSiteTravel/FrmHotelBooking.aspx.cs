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
        if (Session["Status"] != "Home")
            Response.Redirect("HomePage.aspx");
        else
        {
            Hashtable ht = new Hashtable();
            ArrayList a1 = new ArrayList();

            if (!IsPostBack)
            {
                if (Session["HotelBookingDetails"] != null)
                {
                    ht = (Hashtable)Session["HotelBookingDetails"];
                    lblHotelName.Text = ht["HotelName"].ToString();
                    lblRoomCat.Text = ht["RoomCatName"].ToString();
                    lblTotalRooms.Text = ht["TotalRooms"].ToString();
                    lblDays.Text = ht["Days"].ToString();
                    lblCinDate.Text = ht["Cid"].ToString();
                    lblCoutDate.Text = ht["Cod"].ToString();


                    a1 = (ArrayList)ht["RoomNo"];
                    string room = "";
                    foreach (string i in a1)
                        room += i + ",";
                    lblAllotRoom.Text = room.Substring(0, room.Length - 1);

                    lblTotalFare.Text = Session["Fare"].ToString();
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     
        Session.Add("payment", "hotel");
     
        Response.Redirect("~\\login.aspx");
    }
}