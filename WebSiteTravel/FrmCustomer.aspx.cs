using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataManager;
using ProjectEntities;
using System.Configuration;


public partial class FrmCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Status"] != "Home")
            Response.Redirect("HomePage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsCustomer objClsCustomer = new ClsCustomer(txtfname.Text, txtLastName.Text, txtEmailId.Text, txtPassword.Text, Convert.ToInt32(txtAge.Text), 
                                    txtAddress.Text, Convert.ToInt32(DrDwnlstCountryId.SelectedValue), Convert.ToInt32(DrDwnlstStateId.SelectedValue), txtCity.Text, Convert.ToInt32(txtPinCode.Text),
                                    txtMobileNo.Text, DrDwnlstGender.SelectedItem.Text, DrDwnlstSQuestion.SelectedItem.Text, txtAnswer.Text,"User" );
        
        DataCustomer obj = new DataCustomer();

        string dbConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        if (obj.AddNewCustomer(objClsCustomer,dbConnectionString) == true)
                  Label1.Text = "Record Added Successfully";

        if (Session["payment"] == "flight")
            Response.Redirect("User/FrmPayment.aspx");
        else if (Session["payment"] == "hotel")
            Response.Redirect("User/FrmHotelPayment.aspx");
    }
}