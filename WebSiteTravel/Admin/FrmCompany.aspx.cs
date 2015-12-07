using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ProjectEntities;
using DataManager;
using System.Configuration;
public partial class Admin_FrmCompany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            showAllCompanies();
    }

    DataCompany obj = new DataCompany();

    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    void showAllCompanies()
    {
        GridView1.DataSource = obj.AllCompanies(connection);
        GridView1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsCompany objcmp = new ClsCompany(txtCompanyName.Text, txtCmpnyAddress.Text, txtCmpnyUrl.Text);

        if (obj.AddCompany(objcmp, connection) == true)
        {
          
            Label1.Text = "New Company Added";
            showAllCompanies();


        }




    }

 protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
    //    GridView1.EditIndex = e.NewEditIndex;
    //    showAllCompanies();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
    //    GridView1.EditIndex = -1;
    //    showAllCompanies();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
    //    GridView1.PageIndex = e.NewPageIndex;
    //    showAllCompanies();
    }

}