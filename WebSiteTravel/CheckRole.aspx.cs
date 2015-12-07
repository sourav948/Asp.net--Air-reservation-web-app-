using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckRole : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(User.IsInRole("Admin"))
            Response.Redirect("~\\Admin\\FrmCompany.aspx");
        else if (User.IsInRole("User"))
        {
            if (Session["payment"] != null)
            {
                if (Session["payment"].ToString() == "hotel")
                    Response.Redirect("~\\User\\FrmHotelPayment.aspx");
                else if (Session["payment"].ToString() == "flight")
                    Response.Redirect("~\\User\\FrmPayment.aspx");
            }
            else
               // Response.Redirect("~\\User\\FrmFlightCancellation.aspx");
                Response.Redirect("~\\User\\FrmHotelCancellation.aspx");
        }
        else
            Response.Redirect("~\\HomePage.aspx");


    }
}