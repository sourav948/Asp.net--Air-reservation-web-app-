using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectEntities;
using DataManager;
using System.Configuration;

public partial class Admin_FrmFlightStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showFlightStatus();
        }

    }

    DataFlightStatus FlightStatus = new DataFlightStatus();

    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    void showFlightStatus()
    {
        GridView1.DataSource = FlightStatus.AllFlightStatus(connection);
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsFlightStatus objFlightStatus = new ClsFlightStatus(txtflgStatusNme.Text);

    
        if (FlightStatus.AddFlightStatus(objFlightStatus,connection) == true)
            Label1.Text = "Flight Status uploaded";
        else
            Label1.Text = "Status not uploaded";
        showFlightStatus();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}