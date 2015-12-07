using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectEntities;
using DataManager;
using System.Configuration;

public partial class Admin_FrmFlightClassStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showAllFlitClsStatus();
        }
    }
    DataFlightClsStatus FlightClsStatus = new DataFlightClsStatus();

    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    void showAllFlitClsStatus()
    {
        GridView1.DataSource = FlightClsStatus.AllFlightStatus(connection);
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsFlightClassStatus objFlightClassStatus = new ClsFlightClassStatus(txtFclsStatusName.Text);

        

        if (FlightClsStatus.AddFlightClsStatus(objFlightClassStatus,connection) == true)
            Label1.Text = "FlightClass Status uploaded";
        else
            Label1.Text = "FlightClass Status not uploaded";
        showAllFlitClsStatus();
    }
}