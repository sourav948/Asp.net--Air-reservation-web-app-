using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataManager;
using ProjectEntities;
using System.Configuration;
public partial class Admin_FrmState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            showStates();
    }

    DataState obj = new DataState();

    string con = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    void showStates()
    {
        GridView1.DataSource = obj.AllStates(con);
        GridView1.DataBind();
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsState objstate = new ClsState(txtStateName.Text, Convert.ToInt32(DdlCountryId.SelectedValue));

        if (obj.AddStates(objstate,con) == true)
        {

            Label1.Visible = true;
            Label1.Text = "New State Added";
            showStates();
        }
        



    }
}