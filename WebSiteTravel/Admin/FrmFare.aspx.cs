using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataManager;
using ProjectEntities;
using System.Configuration;


public partial class Admin_FrmFare : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            showFare();     
    }

    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    DataFare obj = new DataFare();

    public void showFare()
    {
        GridView1.DataSource = obj.showAllFare(connection);
        GridView1.DataBind();
    }

    protected void  Button1_Click(object sender, EventArgs e)
    {
        clsFare objClsFare = new clsFare(Convert.ToInt16(txtFare.Text));
        DataFare obj = new DataFare();

        string dbConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        if (obj.AddNewFare(objClsFare,dbConnectionString) == true)
        {
            Label1.Text = "Records Added Successfully";
              showFare();
         }
      }

        
 }



