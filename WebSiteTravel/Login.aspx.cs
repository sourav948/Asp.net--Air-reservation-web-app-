using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["password"] != null)
        {
            Lbllogin.Text = "password is=" + Session["password"];
        }
    }
    protected void LinkRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("FrmCustomer.aspx");
    }

    string connection = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void BtnSignin_Click(object sender, EventArgs e)
    {
        SqlCommand sc = new SqlCommand();
        sc.CommandText = "select * from tblCustomers where EmailId=@EmailId and Password=@Password";
        sc.CommandType = CommandType.Text;
        sc.Connection = new SqlConnection(connection);

        sc.Connection.Open();

        sc.Parameters.AddWithValue("@EmailId", txtUserName.Text);
        sc.Parameters.AddWithValue("@Password",txtPassword.Text);

        if (sc.Connection.State == ConnectionState.Open)
        {
            SqlDataReader dr = sc.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                int cid = Convert.ToInt16(dr["CustomerId"]);
                Session.Add("CustomerId", cid);

                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, txtUserName.Text, DateTime.Now, DateTime.Now.AddDays(10), true, dr["Role"].ToString());
                string hash = FormsAuthentication.Encrypt(ticket);
                HttpCookie ht = new HttpCookie(FormsAuthentication.FormsCookieName);
                ht.Value = hash;
                Response.Cookies.Add(ht);

                Response.Redirect("CheckRole.aspx");
               
                    

            }
            else
                Lbllogin.Text = "Invalid Details";
        }


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("FrmForgotPassword.aspx");
    }
}