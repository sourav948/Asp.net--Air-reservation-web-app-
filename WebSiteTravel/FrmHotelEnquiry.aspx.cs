using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
public partial class Admin_FrmHotelEnquiry : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Status"] != "Home")
            Response.Redirect("HomePage.aspx");
        else
        {

            if (!IsPostBack)
            {
                for (int i = 1; i <= 31; i++)
                {
                    DDDay.Items.Add(i.ToString());
                    DDCOutDay.Items.Add(i.ToString());
                }
                DDMonth.Items.Add("Jan");
                DDMonth.Items.Add("Feb");
                DDMonth.Items.Add("March");
                DDMonth.Items.Add("April");
                DDMonth.Items.Add("May");
                DDMonth.Items.Add("June");
                DDMonth.Items.Add("July");
                DDMonth.Items.Add("August");
                DDMonth.Items.Add("September");
                DDMonth.Items.Add("October");
                DDMonth.Items.Add("November");
                DDMonth.Items.Add("December");



                DDCOutMonth.Items.Add("Jan");
                DDCOutMonth.Items.Add("Feb");
                DDCOutMonth.Items.Add("March");
                DDCOutMonth.Items.Add("April");
                DDCOutMonth.Items.Add("May");
                DDCOutMonth.Items.Add("June");
                DDCOutMonth.Items.Add("July");
                DDCOutMonth.Items.Add("August");
                DDCOutMonth.Items.Add("September");
                DDCOutMonth.Items.Add("October");
                DDCOutMonth.Items.Add("November");
                DDCOutMonth.Items.Add("December");


                for (int i = DateTime.Now.Year; i <= DateTime.Now.Year + 5; i++)
                {
                    DDCoutYear.Items.Add(i.ToString());
                    DDYear.Items.Add(i.ToString());
                }



            }
        }
    }
    string connection=ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Cid = (DDDay.SelectedItem.Text + "-" + DDMonth.SelectedItem.Text + "-" + DDYear.SelectedItem.Text).ToString();
        string Cod = (DDCOutDay.SelectedItem.Text + "-" + DDCOutMonth.SelectedItem.Text + "-" + DDCoutYear.SelectedItem.Text).ToString();
        if (Convert.ToDateTime(Cid) > DateTime.Now)
        {
            if (Convert.ToDateTime(Cid) < Convert.ToDateTime(Cod))
            {
                string days = (Convert.ToInt16(DDCOutDay.SelectedItem.Text) - Convert.ToInt16(DDDay.SelectedItem.Text)).ToString();
                //DateTime days = (Convert.ToDateTime(Cod) - Convert.ToDateTime(Cid));
                Hashtable ht = new Hashtable();
                ht.Add("Cid", Cid);
                ht.Add("Cod", Cod);
                ht.Add("Days", days);
                Session.Add("HotelBookingDetails", ht);

                Response.Redirect("FrmHotelImages.aspx?CityId=" + Convert.ToInt16(DDCityid.SelectedValue));
            }
            else
                Label1.Text = "Check-Out Date must be greater";
        }
        else
            Label1.Text = "Check-In Date is invalid";
    }
}