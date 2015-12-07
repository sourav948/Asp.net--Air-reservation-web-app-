using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;


public partial class FrmForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    SqlCommand sc = new SqlCommand();
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
        sc.CommandText = "select * from tblCustomers where Emailid=@Emailid";
        sc.CommandType = CommandType.Text;
        sc.Connection = new SqlConnection(connection);

        sc.Parameters.AddWithValue("@Emailid", txtId.Text);

        sc.Connection.Open();

        if (sc.Connection.State == ConnectionState.Open)
        {
            SqlDataReader dr = sc.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                {
                    lblfname.Text = dr["FirstName"].ToString();
                    lblQuestion.Text = dr["securityques"].ToString();
                }
            }
        }
        sc.Parameters.Clear();
        sc.Connection.Close();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sc.CommandText = "select * from tblCustomers where Emailid=@Emailid and answer=@answer";
        sc.CommandType = CommandType.Text;
        sc.Connection = new SqlConnection(connection);

        sc.Parameters.AddWithValue("@Emailid", txtId.Text);
        sc.Parameters.AddWithValue("@answer", txtAnswer.Text);

        sc.Connection.Open();

        if (sc.Connection.State == ConnectionState.Open)
        {
            SqlDataReader dr = sc.ExecuteReader(CommandBehavior.SingleRow);
            string pwd = "";
            if (dr.HasRows)
            {
                dr.Read();
                    pwd = dr["Password"].ToString();
                   // lblsubmit.Text = pwd;
                    Session.Add("password", pwd);
                //    MailMessage mg = new MailMessage("reflectionofindia04@gmail.com", txtId.Text);
                //    mg.Subject = "Your Password";
                //    mg.Body = pwd;

                //    SmtpClient smtp = new SmtpClient();
                //    smtp.Host = "smtp.gmail.com";
                //    smtp.Port = 587;
                //    smtp.EnableSsl = true;

                //    smtp.Send(mg);
                //lblsubmit.Text = "sent";
            }
        }
        sc.Parameters.Clear();
        sc.Connection.Close();


        if (Session["payment"] == "flight")
            Response.Redirect("User/FrmPayment.aspx");
        else if (Session["payment"] == "hotel")
            Response.Redirect("User/FrmHotelPayment.aspx");


    }
}