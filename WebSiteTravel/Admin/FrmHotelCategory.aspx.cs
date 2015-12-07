using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectEntities;
using DataManager;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_FrmHotelCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            showHotelCat();
    }

    DataHotelCategory obj = new DataHotelCategory();

    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    void showHotelCat()
    {
        GridView1.DataSource = obj.showAllHotelCategory(connection);
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsHotelCatagory objCat = new ClsHotelCatagory(txthotelcat.Text);

        if (obj.AddNewHotelCategory(objCat, connection) == true)
        {
            lblhotelcat.Text = "Hotel Category Added";
            showHotelCat();
        }
    }
}