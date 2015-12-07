using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataManager;
using ProjectEntities;
using System.Configuration;
using System.IO;

public partial class Admin_FrmHotels : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            ShowHotels();

    }
    DataHotels obj = new DataHotels();
    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    void ShowHotels()
    {
        GridView1.DataSource = obj.showAllHotels(connection);
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filepath = Server.MapPath("~");

        if(!Directory.Exists(filepath))
            Directory.CreateDirectory(filepath);

        ClsHotels objclsHotels = new ClsHotels(txtHotelName.Text, txtLocation.Text, txtHotelUrl.Text, txtFeatures.Text, Convert.ToInt16(DDHotelCategory.SelectedValue), txtHotelContactNo.Text,UploadHotel.FileName,Convert.ToInt16( DropDownList1.SelectedValue));
        
        
            int hotelid = obj.AddNewHotels(objclsHotels,connection);

            if (hotelid > 0)
            {
                UploadHotel.SaveAs(filepath + "\\"+UploadHotel.FileName);
                Label1.Visible = true;
                Label1.Text = "Hotels Added";
                ShowHotels();
                ViewState["hotelid"] = hotelid;
            }
        
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int hotelid = Convert.ToInt16(ViewState["hotelid"]);
        Response.Redirect("FrmRoomImages.aspx?hotelid=" + hotelid);
    }
}