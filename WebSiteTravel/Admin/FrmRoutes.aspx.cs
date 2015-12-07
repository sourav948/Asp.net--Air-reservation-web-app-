using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectEntities;
using DataManager;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Admin_FrmRoutes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showRoutes();

            

        }

    }
    DataRoute obj = new DataRoute();

    string con = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    void showRoutes()
    {
        GridView1.DataSource = obj.AllRoutes(con);
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsRoute objroute = new ClsRoute(txtSource.Text, txtDestination.Text);

         if (obj.Addroute(objroute,con) == true)
        {
         
            Label1.Visible = true;
            Label1.Text = "New Route Added";
            showRoutes();
        }

    
    }
}