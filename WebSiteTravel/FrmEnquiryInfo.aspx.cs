using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DataManager;
using ProjectEntities;
using System.Collections;

//show_CheckFlights(@Source varchar(30),@Destination varchar(30))
public partial class FrmEnquiryInfo : System.Web.UI.Page
{
    Hashtable ht = new Hashtable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Status"] != "Home")
            Response.Redirect("HomePage.aspx");
        else
        {
            if (!IsPostBack)
            {
                if (Session["BookingDetails"] != null)
                {
                    ht = ((Hashtable)Session["BookingDetails"]);
                    txtSource.Text = ht["source"].ToString();
                    txtDestination.Text = ht["destination"].ToString();
                    txtDojrney.Text = ht["dof"].ToString();
                    txtChild.Text = ht["Child"].ToString();
                    txtAdult.Text = ht["Adult"].ToString();
                    txtSCitizen.Text = ht["S.Citizen"].ToString();



                    Enquiryinfo();
                }
                Session["BookingDetails"] = ht;
            }
        }
    }

    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    public void Enquiryinfo()
    {
        SqlCommand sc = new SqlCommand();
        sc.CommandText = "sp_FlightRouteDetails";
        sc.CommandType = CommandType.StoredProcedure;
        sc.Connection = new SqlConnection(connection);

        sc.Connection.Open();

        sc.Parameters.AddWithValue("@Source", txtSource.Text);
        sc.Parameters.AddWithValue("@Destination", txtDestination.Text);

        if (sc.Connection.State == ConnectionState.Open)
        {
            SqlDataReader dr = sc.ExecuteReader();
            if (dr.HasRows)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      //  Enquiryinfo();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int flightid = Convert.ToInt16(e.CommandArgument);


        ht = ((Hashtable)Session["BookingDetails"]);

        ht.Add("Flightid", flightid);

        Session["BookingDetails"] = ht;

        SqlCommand sc = new SqlCommand();
        sc.CommandText = "sp_flightFareDetails";
        sc.CommandType = CommandType.StoredProcedure;
        sc.Connection = new SqlConnection(connection);

        sc.Connection.Open();

        sc.Parameters.AddWithValue("@FlightId", flightid);

        if (sc.Connection.State == ConnectionState.Open)
        {
            SqlDataReader dr = sc.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                lblCitizenFare.Text = "";
                LblEcoScitizen.Text = "";
                LblEcoChild.Text = "";
                lblFare.Text = "";

                lblChildFare.Text = "";
                LblEcoAdult.Text = "";
                lblAdultFare.Text = "";
                lblFare.Text = "";

                string flightname = dr["flightName"].ToString();

                if (dr["customerStatusNAME"].ToString() == "Adult" && dr["FlightClassStatusName"].ToString() == "Business")
                    lblAdultFare.Text = dr["fare"].ToString();
                dr.Read();
                if (dr["customerStatusNAME"].ToString() == "Adult" && dr["FlightClassStatusName"].ToString() == "Economic")
                    LblEcoAdult.Text = dr["fare"].ToString();

                dr.Read();
                if (dr["customerStatusNAME"].ToString() == "Child" && dr["FlightClassStatusName"].ToString() == "Business")
                    lblChildFare.Text = dr["fare"].ToString();

                dr.Read();
                if (dr["customerStatusNAME"].ToString() == "Child" && dr["FlightClassStatusName"].ToString() == "Economic")
                    LblEcoChild.Text = dr["fare"].ToString();
                dr.Read();
                if (dr["customerStatusNAME"].ToString() == "Senior Citizen" && dr["FlightClassStatusName"].ToString() == "Business")
                    lblCitizenFare.Text = dr["fare"].ToString();

                dr.Read();
                if (dr["customerStatusNAME"].ToString() == "Senior Citizen" && dr["FlightClassStatusName"].ToString() == "Economic")
                    LblEcoScitizen.Text = dr["fare"].ToString();


                ViewState["flightName"] = flightname;

              
                    
            }
        }
    }
    protected void RBBusiness_CheckedChanged(object sender, EventArgs e)
    {
        int totalfare = 0,childfare,adultfare,scfare;
        if (RBBusiness.Checked)
        {
            childfare = (Convert.ToInt16(txtChild.Text)) * (Convert.ToInt16(lblChildFare.Text));
            adultfare = (Convert.ToInt16(txtAdult.Text)) * (Convert.ToInt16(lblAdultFare.Text));
            scfare = (Convert.ToInt16(txtSCitizen.Text)) * (Convert.ToInt16(lblCitizenFare.Text));

            totalfare = childfare + adultfare + scfare;
            lblFare.Text = totalfare.ToString();
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void RBEconomic_CheckedChanged(object sender, EventArgs e)
    {
         int totalfare = 0,childfare,adultfare,scfare;
         if (RBEconomic.Checked)
         {
             childfare = (Convert.ToInt16(txtChild.Text)) * (Convert.ToInt16(LblEcoChild.Text));
             adultfare = (Convert.ToInt16(txtAdult.Text)) * (Convert.ToInt16(LblEcoAdult.Text));
             scfare = (Convert.ToInt16(txtSCitizen.Text)) * (Convert.ToInt16(LblEcoScitizen.Text));

             totalfare = childfare + adultfare + scfare;
             lblFare.Text = totalfare.ToString();
         }

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (RBBusiness.Checked || RBEconomic.Checked)
        {
            if (Session["BookingDetails"] != null)
            {

                Hashtable ht = ((Hashtable)Session["BookingDetails"]);

                int FlightClassStatusId = 0;

                if (RBBusiness.Checked)

                    FlightClassStatusId = 60;

                if (RBEconomic.Checked)
                    FlightClassStatusId = 61;

                ArrayList a1 = new ArrayList();

                SqlCommand sc = new SqlCommand();
                sc.CommandText = "getAvailableSeatsinFlight";
                sc.CommandType = CommandType.StoredProcedure;
                sc.Connection = new SqlConnection(connection);

                sc.Connection.Open();

                sc.Parameters.AddWithValue("@flightName", ViewState["flightName"].ToString());
                sc.Parameters.AddWithValue("@FlightClassStatusId", FlightClassStatusId);
                sc.Parameters.AddWithValue("@dateofFlight", ht["dof"].ToString());

                int requiredseats = Convert.ToInt16(txtChild.Text) + Convert.ToInt16(txtAdult.Text) + Convert.ToInt16(txtSCitizen.Text);

                if (sc.Connection.State == ConnectionState.Open)
                {
                    SqlDataReader dr = sc.ExecuteReader();
                    if (dr.HasRows)
                    {
                        int ctr = 1;

                        while (ctr <= requiredseats)
                        {
                            dr.Read();
                            a1.Add(dr["seatno"].ToString());
                            ctr++;
                        }
                        a1.TrimToSize();
                    }
                }
                ht.Add("totalfare", lblFare.Text);
                ht.Add("totalSeats", a1);
                ht.Add("Requiredseats", requiredseats);
                ht.Add("FlightClassStatusId", FlightClassStatusId);

                Session["BookingDetails"] = ht;

                Session.Add("payment", "flight");

                Response.Redirect("login.aspx");
            }
        }
        else
            lblFare.Text = "Select any Flight Class Status";
    }
}