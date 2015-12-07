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
public partial class FrmHotelImages : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        if (Session["Status"] != "Home")
            Response.Redirect("HomePage.aspx");
        else
        {
            if (!IsPostBack)
            {

                string query = "select * from tblHotels where cityid=" + Convert.ToInt16(Request.QueryString["CityId"]);
                SqlDataAdapter da = new SqlDataAdapter(query, connection);

                DataSet ds = new DataSet();
                da.Fill(ds);
                DataList1.DataSource = ds;
                // DataList1.ite= "HotelName";
                DataList1.DataBind();


            }
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("FrmRoomImages.aspx?hotelId="+e.CommandArgument);
    }
}