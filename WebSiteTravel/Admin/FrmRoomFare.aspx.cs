using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectEntities;
using DataManager;
using System.Configuration;
public partial class Admin_FrmRoomFare : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            showRoomFares();
    }
    DataRoomFare obj = new DataRoomFare();
    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    void showRoomFares()
    {

        GridView1.DataSource = obj.showAllRoomFare(connection);
        GridView1.DataBind();
    }
        
        
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        ClsRoomFare objroomFare = new ClsRoomFare(Convert.ToInt32(DDHotel.SelectedValue), Convert.ToInt32(DdRoomCat.SelectedValue), Convert.ToInt32(txtRoomFare.Text));
        if (obj.AddNewRoomFare(objroomFare, connection) == true)
        {
            Label1.Visible = true;
            Label1.Text = "Record Added";
            showRoomFares();
        }

    }
}