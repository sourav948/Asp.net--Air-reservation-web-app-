using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataManager;
using ProjectEntities;
using System.Configuration;


public partial class Admin_FrmFlightRoute : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showflightroute();
        }

    }

    DataFlightRoute flightroute = new DataFlightRoute();

    string dbConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    void showflightroute()
    {
        GridView1.DataSource = flightroute.AllFlightRoute(dbConnectionString);
        GridView1.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
       
        ClsFlightRoute objFlightRoute = new ClsFlightRoute(txtDepartureTime.Text, txtArrivalTime.Text, txtFlghtDays.Text, Convert.ToInt16(DdlFlghtId.SelectedValue),DDSource.SelectedItem.Text,DDDestination.SelectedItem.Text);

        

        if (flightroute.AddFlightRoutes(objFlightRoute, dbConnectionString) == true)
        {
            //TextBox1.Text = FlightRouteId;
            Label1.Text = "Details Added";
        }
        else
            Label1.Text = "Details not Added";
        showflightroute();
    }

}