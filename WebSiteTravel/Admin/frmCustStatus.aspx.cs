using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectEntities;
using DataManager;
using System.Configuration;
public partial class Admin_frmCustStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            showAllStatus();
    }
    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    DataCustomerStatus obj = new DataCustomerStatus();
    public void showAllStatus()
    {
        
        GridView1.DataSource = obj.AllCustomer(connection);
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsCustomerStatus obj = new ClsCustomerStatus(txtCustomerStatusNme.Text);

        DataCustomerStatus obj1 = new DataCustomerStatus();

        if (obj1.AddCustomerStatus(obj,connection) == true)
        {
            Label1.Visible = true;
            Label1.Text = "record added";
            showAllStatus();
        }
    }
}