using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string status = "Home";
        Session.Add("Status", status);
    }
    protected void ImageMap2_Click(object sender, ImageMapEventArgs e)
    {

    }
}