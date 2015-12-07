using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectEntities;
using DataManager;
using System.Configuration;


public partial class Admin_FrmHotelRooms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
                     
    }

    DataHotelRooms obj = new DataHotelRooms();

    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    
    

        protected void  Button1_Click(object sender, EventArgs e)
        {
            
          ClsHotelRoom objClsHotelRoom= new ClsHotelRoom(Convert.ToInt16(DDHotel.SelectedValue), Convert.ToInt16(DDRoomCat.SelectedValue), Convert.ToInt16(txtRoomNo.Text));

            if (obj.AddNewHotelRooms(objClsHotelRoom, connection)== true)

            {
                Label1.Text = "Records Added Successfully";
               
            }
        }
     
}
