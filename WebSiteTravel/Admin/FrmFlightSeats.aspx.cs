using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectEntities;
using DataManager;
using System.Configuration;

public partial class Admin_FrmFlightSeats : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
            showFlightSeats();     
    }

    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    DataFlightSeats obj = new DataFlightSeats();

    public void showFlightSeats()
    {
     
      
    }

    //sp_showFlightSeats(@Source varchar(20),@Destination varchar(20),@FlightId int,@FlightClassStatusId int)

    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsFlightSeats objClsFlightSeats = new ClsFlightSeats(Convert.ToInt16(txtTotalSeats.Text),Convert.ToInt16(DdlFlightClsStatus.SelectedValue),
            DdlSource.SelectedItem.Text, DdlDestination.SelectedItem.Text,Convert.ToInt16(DdlFlightName.SelectedValue));
                                                              
        DataFlightSeats obj = new DataFlightSeats();

        string dbConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;


        if (obj.AddNewFlightSeats (objClsFlightSeats, dbConnectionString) == true)
        {
            Label1.Text = "Record Added Successfully";
            showFlightSeats();
        }
    }
}