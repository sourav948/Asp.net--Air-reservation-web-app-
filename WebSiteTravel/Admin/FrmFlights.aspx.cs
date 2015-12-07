using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectEntities;
using DataManager;
public partial class Admin_FrmFlights : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            showFlights();

    }
    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    DataFlight obj = new DataFlight();
    public void showFlights()
    {
        GridView1.DataSource = obj.showAllFlights(connection);
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsFlight obj = new ClsFlight(txtFlghtName.Text,Convert.ToInt16( DdlCmpnyId.SelectedValue),Convert.ToInt16( DdlFlghtStatusId.SelectedValue));

        DataFlight obj1 = new DataFlight();
        if (obj1.AddFlight(obj,connection) == true)
        {

            Label1.Visible = true;
            Label1.Text = "New flight Added";
            showFlights();
        }

    }
}