using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataManager;
using ProjectEntities;
using System.Configuration;


public partial class Admin_FrmFlightFare : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
    }

    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    DataFlightFare obj = new DataFlightFare();

 
    protected void Button1_Click(object sender, EventArgs e)
    {
        clsFlightFare objClsFlightFare = new clsFlightFare(Convert.ToInt16(DdlfclsStatusId.SelectedValue),Convert.ToInt16(DdlCusStatusId.SelectedValue),
                                                              Convert.ToInt16(DdlFareId.SelectedValue),Convert.ToInt16(DdlFlghtId.SelectedValue));
        DataFlightFare obj = new DataFlightFare();

        if (obj.AddNewFlightFare(objClsFlightFare,connection) == true)
        {
            Label1.Text = "Record Added Successfully";
          
        }
    }
}