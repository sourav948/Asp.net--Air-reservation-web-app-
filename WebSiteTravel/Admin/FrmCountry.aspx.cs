using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataManager;
using ProjectEntities;
using System.Configuration;
public partial class Admin_FrmCountry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            showCountries();
    }
    DataCountry obj = new DataCountry();

    string con = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    void showCountries()
    {
        GridView1.DataSource = obj.AllCountries(con);
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsCountry objcountry = new ClsCountry(txtCountryName.Text);

         if (obj.AddCountry(objcountry,con) == true)
        {
         
            Label1.Visible = true;
            Label1.Text = "New Country Added";
            showCountries();
        }

    

    }
}