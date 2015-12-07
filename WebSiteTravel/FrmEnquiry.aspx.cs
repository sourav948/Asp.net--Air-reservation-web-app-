using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Web.Security;

public partial class FrmEnquiry : System.Web.UI.Page
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
                    DdDay.Items.Add(i.ToString());

                DdMonth.Items.Add("Jan");
                DdMonth.Items.Add("Feb");
                DdMonth.Items.Add("March");
                DdMonth.Items.Add("April");
                DdMonth.Items.Add("May");
                DdMonth.Items.Add("June");
                DdMonth.Items.Add("July");
                DdMonth.Items.Add("August");
                DdMonth.Items.Add("Sept");
                DdMonth.Items.Add("Oct");
                DdMonth.Items.Add("Nov");
                DdMonth.Items.Add("Dec");

                for (int i = DateTime.Now.Year; i <= DateTime.Now.Year + 5; i++)
                    DDyear.Items.Add(i.ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;

        Hashtable ht = new Hashtable();

        string dof = DdDay.SelectedItem.Text + "-" + DdMonth.SelectedItem.Text + "-" + DDyear.SelectedItem.Text;

        if (Convert.ToDateTime(dof) > DateTime.Now)
        {

            if (Convert.ToInt16(txtChild.Text) > 0 || Convert.ToInt16(txtAdult.Text) > 0 || Convert.ToInt16(txtSCitizen.Text) > 0)
            {

                ht.Add("Child", txtChild.Text);
                ht.Add("Adult", txtAdult.Text);
                ht.Add("S.Citizen", txtSCitizen.Text);
                ht.Add("source", DdlSource.SelectedItem.Text);
                ht.Add("destination", DdlDestination.SelectedItem.Text);

                ht.Add("dof", dof);

                Dictionary<int, string> d1 = new Dictionary<int, string>();

                d1.Add(50, txtChild.Text);
                d1.Add(53, txtAdult.Text);
                d1.Add(54, txtSCitizen.Text);



                Session.Add("BookingDetails", ht);

                Session.Add("CustomerDetails", d1);

                Response.Redirect("FrmEnquiryInfo.aspx");
            }
            else
                Label1.Text="AtLeast one passenger required";
        }
            else

                Label1.Text = "Invalid Date";
        }
    }
