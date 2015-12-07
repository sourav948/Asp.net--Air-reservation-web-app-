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

public partial class Admin_FrmRoomCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            showRoomCat();
    }
    DataRoomCategory obj = new DataRoomCategory();

    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    void showRoomCat()
    {
        GridView1.DataSource = obj.showAllRoomCategory(connection);
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ClsRoomCategory objRoomCat = new ClsRoomCategory(txtroomcat.Text);

        if (obj.AddNewRoomCategory(objRoomCat, connection) == true)
        {
            lblroomcat.Text = "Room Category Updated";
            showRoomCat();
        }
    }
}